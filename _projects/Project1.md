---
layout: page
title: Project 1
subtitle: Fly Me To The Moon
published: true
---

# Project 1: Fly Me To The Moon

**Posted:** September 9, 2020; <br>
**Due:** October 6, 2020

You've been hired by a new space weather startup looking to disrupt the space weather reporting business. Your first project is to provide better data about the top 50 solar flares recorded so far than that shown by your competitor [SpaceWeatherLive.com](https://www.spaceweatherlive.com/en/solar-activity/top-50-solar-flares). To do this, they've pointed you to [this messy HTML page](http://cdaw.gsfc.nasa.gov/CME_list/radio/waves_type2.html) from NASA ([available here also](http://www.hcbravo.org/IntroDataSci/misc/waves_type2.html)) where you can get the extra data your startup is going to post in your new spiffy site.

Of course, you don't have access to the raw data for either of these two tables, so as an enterprising data scientist you will scrape this information directly from each HTML page using all the great tools available to you in Python. By the way, you should read up a bit on [Solar Flares](https://en.wikipedia.org/wiki/Solar_flare), [coronal mass ejections](https://www.spaceweatherlive.com/en/help/what-is-a-coronal-mass-ejection-cme), [the solar flare alphabet soup](http://spaceweather.com/glossary/flareclasses.html), [the scary storms of Halloween 2003](http://www.nasa.gov/topics/solarsystem/features/halloween_storms.html), and [sickening solar flares](https://science.nasa.gov/science-news/science-at-nasa/2005/27jan_solarflares).

### Groups and Collaboration Plan

You are allowed to complete this project in a group of exactly size 2, no exceptions.  If you choose to complete this project as a group you must:
 1. Both members of the group must **turn in exaclty the same notebook on Canvas**.
 2. As the top cell in your notebook, you must also include a short *collaboration plan* describing how you are working together, what technologies you are using, and when / how often you are meeting to work on this project.  Examples include: we setup a private Github repo to coordinate code and we met on Zoom X times…. or even we used [Teletype for Atom](https://teletype.atom.io/) or [RemoteCollab for Sublime](https://packagecontrol.io/packages/RemoteCollab). Failure to turn in a collaboration plan that shows you coordinated will be a loss of professionalism points. The turned in result will need to reflect the understanding of both students

----

## Part 1: Data Scraping and Preparation

### Step 1: Scrape Your Competitor's Data (10 pts)

Use Python to scrape data for the top 50 solar flares shown in [SpaceWeatherLive.com](https://www.spaceweatherlive.com/en/solar-activity/top-50-solar-flares). Steps to do this are:

1.  `pip install` or `conda install` the following Python packages: `beautifulsoup4, requests, pandas, numpy, lxml`
   * **Note:** There is a bit of an issue using Docker.  The easiest way around this is to manually install lxml when you start the notebook server.  You can either add the command `!pip3 install lxml` into your notebook or in the Notebook window open a termainl window and run the same command in the terminal.  Note you'll have to do this each time you (re)start Docker.
2.  Use `requests` to get (as in, HTTP GET) the URL. **Hint:** Since last time, the website has installed some measures, as talked about in class, to keep us from accessing the site.  Check the HTML Return Code, what does it mean?  Have a look at the `response.text` that came back, what does it say?  We can add a few things to our [Requests Headder](https://requests.readthedocs.io/en/master/user/quickstart/#custom-headers), [Maybe try something like this](https://stackoverflow.com/questions/27652543/how-to-use-python-requests-to-fake-a-browser-visit), to trick the server into thinking you're human, but don't tell anyone :-).
3.  Extract the text from the page.
4.  Use BeautifulSoup to read and parse the data, either as html or lxml.
5.  Use prettify() to view the content and find the appropriate table.
6.  Use find() to save the aforementioned table as a variable.
7.  Use pandas to read in the HTML file.  
  * **Hint:** make-sure the above data is properly typecast and check the return type for the pandas function!
  * **Hint:** Maybe checkout the [Pandas read_html() function](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.read_html.html)
8.  Set reasonable names for the table columns, e.g., rank, x_classification, date, region, start_time, maximum_time, end_time, movie. `pandas.DataFrame.columns` makes this very simple.


The result should be a data frame, with the first few rows as:

```
Dimension: 50 × 8

    rank x_class        date  region start_time max_time end_time              movie
0      1   X28.0  2003/11/04     486      19:29    19:53    20:06  MovieView archive
1      2   X20.0  2001/04/02    9393      21:32    21:51    22:03  MovieView archive
2      3   X17.2  2003/10/28     486      09:51    11:10    11:24  MovieView archive
3      4   X17.0  2005/09/07     808      17:17    17:40    18:03  MovieView archive
4      5   X14.4  2001/04/15    9415      13:19    13:50    13:55  MovieView archive
5      6   X10.0  2003/10/29     486      20:37    20:49    21:01  MovieView archive
6      7    X9.4  1997/11/06    8100      11:49    11:55    12:01  MovieView archive
7      8    X9.3  2017/09/06    2673      11:53    12:02    12:10  MovieView archive
8      9    X9.0  2006/12/05     930      10:18    10:35    10:45  MovieView archive
9     10    X8.3  2003/11/02     486      17:03    17:25    17:39  MovieView archive
10    11    X8.2  2017/09/10    2673      15:35    16:06    16:31  MovieView archive

 ... with 40 more rows
```

**You must have this table displayed in your final notebook when you submit it.**

### Step 2: Tidy the Top 50 Solar Flare Data (10 pts)

Your next step is to make sure this table is usable using pandas:

1.  Drop the last column of the table, since we are not going to use it moving forward.
2.  Use the `datetime` library (you need to import it) to combine the date and each of the three time columns into three datetime columns. You will see why this is useful later on.  
  * [Pandas iterrows()](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.DataFrame.iterrows.html) should prove useful here. 
  * **Make sure to check the dtype of the column when you are done! [Pandas to_datetime](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.to_datetime.html) comes in useful here.**
  * **Hint:** Check out the [Pandas to_datetime function](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.to_datetime.html) for some help!
3.  Update the values in the dataframe as you do this.  The [Pandas function .at](https://pandas.pydata.org/pandas-docs/version/0.25/reference/api/pandas.DataFrame.at.html) should prove useful.
4.  Set regions coded as - as missing (np.nan). You can use dataframe.replace() here.  
  * **Note: There may be none of these, look at your data!**
5. Re-arrange the columns and drop the date as shown below.  
  * **Hint** [Pandas rename function](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.DataFrame.rename.html) and [Pandas drop function](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.DataFrame.drop.html).
  
The result of this step should be a data frame with the first few rows as:

```
A dataframe: 50 × 6

    rank x_class      start_datetime        max_datetime        end_datetime  region
0      1   X28.0 2003-11-04 19:29:00 2003-11-04 19:53:00 2003-11-04 20:06:00     486
1      2   X20.0 2001-04-02 21:32:00 2001-04-02 21:51:00 2001-04-02 22:03:00    9393
2      3   X17.2 2003-10-28 09:51:00 2003-10-28 11:10:00 2003-10-28 11:24:00     486
3      4   X17.0 2005-09-07 17:17:00 2005-09-07 17:40:00 2005-09-07 18:03:00     808
4      5   X14.4 2001-04-15 13:19:00 2001-04-15 13:50:00 2001-04-15 13:55:00    9415
5      6   X10.0 2003-10-29 20:37:00 2003-10-29 20:49:00 2003-10-29 21:01:00     486
6      7    X9.4 1997-11-06 11:49:00 1997-11-06 11:55:00 1997-11-06 12:01:00    8100
7      8    X9.3 2017-09-06 11:53:00 2017-09-06 12:02:00 2017-09-06 12:10:00    2673
8      9    X9.0 2006-12-05 10:18:00 2006-12-05 10:35:00 2006-12-05 10:45:00     930
9     10    X8.3 2003-11-02 17:03:00 2003-11-02 17:25:00 2003-11-02 17:39:00     486
10    11    X8.2 2017-09-10 15:35:00 2017-09-10 16:06:00 2017-09-10 16:31:00    2673

 ... with 40 more rows
```

**You must have this table along with the dtypes displayed in your final notebook when you submit it.**

### Step 3: Scrape the NASA Data (20 pts)

Next you need to scrape the data in [http://cdaw.gsfc.nasa.gov/CME_list/radio/waves_type2.html](http://cdaw.gsfc.nasa.gov/CME_list/radio/waves_type2.html) ([also available here](http://www.hcbravo.org/IntroDataSci/misc/waves_type2.html)) to get additional data about these solar flares. This table format is described here: [http://cdaw.gsfc.nasa.gov/CME_list/radio/waves_type2_description.htm](http://cdaw.gsfc.nasa.gov/CME_list/radio/waves_type2_description.htm), and here:

```
The Wind/WAVES type II burst catalog: A brief description

URL: [http://cdaw.gsfc.nasa.gov/CME_list/radio/waves_type2.html](http://cdaw.gsfc.nasa.gov/CME_list/radio/waves_type2.html).

This is a catalog of type II bursts observed by the Radio and Plasma Wave (WAVES) experiment on board the Wind spacecraft and the associated coronal mass ejections (CMEs) observed by the Solar and Heliospheric Observatory (SOHO) mission. The type II burst catalog is derived from the Wind/WAVES catalog available at [http://ssed.gsfc.nasa.gov/waves/data_products.html](http://ssed.gsfc.nasa.gov/waves/data_products.html) by adding a few missing events.

The CMEs in this catalog are called radio-loud CMEs because of their ability to produce type II radio bursts. The CME sources are also listed, as derived from the Solar Geophysical Data listing or from inner coronal images such as Yohkoh/SXT and SOHO/EIT. Some solar sources have also been obtained from Solarsoft Latest Events Archive after October 1, 2002: [http://www.lmsal.com/solarsoft/latest_events_archive.html](http://www.lmsal.com/solarsoft/latest_events_archive.html)


Explanation of catalog entries:

Column 1: Starting date of the type II burst (yyyy/mm/dd format)
Column 2: Starting time (UT) of the type II burst (hh:mm format)
Column 3: Ending date of the type II burst (mm/dd format; year in Column 1 applies)
Column 4: Ending time of the Type II burst (hh:mm format)
Column 5: Starting frequency of type II burst (kHz) [1]
Column 6: Ending frequency of type II burst (kHz) [1]
Column 7: Solar source location (Loc) of the associated eruption in heliographic coordinates [2]
Column 8: NOAA active region number (NOAA) [3]
Column 9: Soft X-ray flare importance (Imp) [4]
Column 10: Date of the associated CME (mm/dd format, Year in Column 1 applies) [5]
Column 11: Time of the associated CME (hh:mm format)
Column 12: Central position angle (CPA, degrees) for non-halo CMEs [6]
Column 13: CME width in the sky plane (degrees) [7]
Column 14: CME speed in the sky plane (km/s)
Column 15: Link to the daily proton, height-time, X-ray (PHTX) plots [8]

Notes
1. ???? indicate that the starting and ending frequencies are not determined.
2.  Heliographic coordinates. S25E16 means the latitude is 25 deg south and 16 deg east (source located in the southeast quadrant of the Sun. N denotes northern latitudes and W denotes western longitudes. Entries like SW90 indicate that the source information is not complete, but we can say that the eruption occurs on the west limb but at southern latitudes; if such entries have a subscript b (e.g., NE90b) it means that the source is behind the particular limb. This information is usually gathered from SOHO/EIT difference images, which show dimming above the limb in question. Completely backside events with no information on the source location are marked as “back”.
3. If the active region number is not available or if the source region is not an active region, the entry is “—-”. Filament regions are denoted by “FILA” or “DSF” for disappearing solar filament.
4. Soft X-ray flare size (peak flux in the 1-8 A channel) from GOES. “—-” means the soft X-ray flux is not available.
5. Lack of SOHO observations are noted as “LASCO DATA GAP”. Other reasons are also noted if there is no CME parameters measured.
6. The central position angle (CPA) is meaningful only for non-halo CMEs. For halo CMEs, the entry is “Halo”. For halo CMEs, the height-time measurements are made at a position angle where the halo appears to move the fastest. This is known as the measurement position angle (MPA) and can be found in the main catalog ([http://cdaw.gsfc.nasa.gov/CME_List](http://cdaw.gsfc.nasa.gov/CME_List)).
7. Width = 360 means the CME is a fill halo (see [6]). For some entries, there is a prefix “>”, which means the reported width is a lower limit.
8. ‘PHTX’ (proton, height-time, X-ray) link to three-day overview plots of solar energetic particle events (protons in the >10, >50 and >100 MeV GOES channels).
```

#### Tasks

1.  Use BeautifulSoup functions (e.g., find, findAll) and string functions (e.g., [python str.split](https://docs.python.org/3/library/stdtypes.html#str.split) and built-in array slicing capabilities) to obtain each row of data as a long string.
2.  Use `str.split` and list comprehensions or similar to separate each line of text into a data row. Choose appropriate names for columns.
  * **Hint**: Try using regular expressions like we did in class to remove the links around the numbers if possible before parsing the records.  Also recall how to make a DataFrame from a list of dicts!
  * **Hint**: It can be awfully handy to have a [python regular expression checker around](https://pythex.org/).
  * **Alt. Hint:** You may also want to look into the [Beautiful Soup get_text](https://www.crummy.com/software/BeautifulSoup/bs4/doc/#get-text) method.
3.  Create a DataFrame of the information you have so far.  You can drop the column with links to the plots.

```
A DataFrame with Dimensions: 511 rows × 14 columns
    cme_date cme_time   cpa end_date end_frequency end_time flare_location flare_region importance speed  start_date start_frequency start_time    width
0      04/01    15:18    74    04/01          4000    14:15         S25E16         8026       M1.3   312  1997/04/01            8000      14:00       79
1      04/07    14:27  Halo    04/07          1000    17:30         S28E19         8027       C6.8   878  1997/04/07           11000      14:30      360
2      05/12    05:30  Halo    05/14            80    16:00         N21W08         8038       C1.3   464  1997/05/12           12000      05:15      360
3      05/21    21:00   263    05/21           500    22:00         N05W12         8040       M1.3   296  1997/05/21            5000      20:20      165
4      09/23    22:02   133    09/23          2000    22:16         S29E25         8088       C1.4   712  1997/09/23            6000      21:53      155
5      11/03    05:28   240    11/03           250    12:00         S20W13         8100       C8.6   227  1997/11/03           14000      05:15      109
6      11/03    11:11   233    11/03          5000    11:30         S16W21         8100       M4.2   352  1997/11/03           14000      10:30      122
7      11/04    06:10  Halo    11/05           100    04:30         S14W33         8100       X2.1   785  1997/11/04           14000      06:00      360
8      11/06    12:10  Halo    11/07           100    08:30         S18W63         8100       X9.4  1556  1997/11/06           14000      12:20      360
9      11/27    13:56    98    11/27          7000    14:00         N17E63         8113       X2.6   441  1997/11/27           14000      13:30       91
10     12/13    00:26   278    12/12          8000    23:20         N25W52         8116       B9.4   191  1997/12/12           14000      22:45       73

... with 501 more rows.
```
**You must have this table displayed in your final notebook when you submit it.**

### Step 4: Tidy the NASA the Table (20 pts)

Now, we tidy up the NASA table. Here we will code missing observations properly, recode columns that correspond to more than one piece of information, and treat dates and times appropriately.

1. Recode any missing entries **in each column!** as np.nan. Refer to the data description in [http://cdaw.gsfc.nasa.gov/CME_list/radio/waves_type2_description.htm](http://cdaw.gsfc.nasa.gov/CME_list/radio/waves_type2_description.htm) (and above) to see how missing entries are encoded in each column. Be sure to look carefully at the actual data, as the nasa descriptions might not be completely accurate.  Be sure to use numpy.nan to set these correctly.
  * **Hint:** Use try using [Pandas unique](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.Series.unique.html) to check for offending values.
  * **Hint:** For `flare_location`, Back is an okay designation but should be consistent.  For `flare_region` “FILA” or “DSF” are coded for disappearing solar filament, make these consistently `FILA`.
2.  The CPA column (cme_angle) contains angles in degrees for most rows, except for halo flares, which are coded as Halo. Create a new column that indicates if a row corresponds to a halo flare or not, and then replace Halo entries in the cme_angle column as np.nan.
3.  The width column indicates if the given value is a lower bound. Create a new column that indicates if width is given as a lower bound, and remove any non-numeric part of the width column.
  * **Hint:** There may be nan's here, try [Pandas isnull](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.isnull.html) to parse the rows properly.
4.  Combine date and time columns for start, end and cme so they can be encoded as datetime objects.
  * **Note:** You may use the start *year* for the end *year* and cme *year*.
  * **Note:** You may need to convert some times to be 23:59 instead of 24:00
5. Once you have cleaned the table, make sure the types of the columns are correct (numeric columns should be numeric, objects objects, datetimes should be datetimes) and drop any unecessary columns.

The output of this step should be similar to this:

```
         start_datetime         end_datetime start_frequency end_frequency flare_location flare_region importance         cme_datetime  cpa width speed  is_flare  width_lower_bound
0    1997-04-01 14:00:00  1997-04-01 14:15:00            8000          4000         S25E16         8026       M1.3  1997-04-01 15:18:00   74    79   312     False              False
1    1997-04-07 14:30:00  1997-04-07 17:30:00           11000          1000         S28E19         8027       C6.8  1997-04-07 14:27:00  NaN   360   878      True              False
2    1997-05-12 05:15:00  1997-05-14 16:00:00           12000            80         N21W08         8038       C1.3  1997-05-12 05:30:00  NaN   360   464      True              False
3    1997-05-21 20:20:00  1997-05-21 22:00:00            5000           500         N05W12         8040       M1.3  1997-05-21 21:00:00  263   165   296     False              False
4    1997-09-23 21:53:00  1997-09-23 22:16:00            6000          2000         S29E25         8088       C1.4  1997-09-23 22:02:00  133   155   712     False              False
5    1997-11-03 05:15:00  1997-11-03 12:00:00           14000           250         S20W13         8100       C8.6  1997-11-03 05:28:00  240   109   227     False              False
6    1997-11-03 10:30:00  1997-11-03 11:30:00           14000          5000         S16W21         8100       M4.2  1997-11-03 11:11:00  233   122   352     False              False
7    1997-11-04 06:00:00  1997-11-05 04:30:00           14000           100         S14W33         8100       X2.1  1997-11-04 06:10:00  NaN   360   785      True              False
8    1997-11-06 12:20:00  1997-11-07 08:30:00           14000           100         S18W63         8100       X9.4  1997-11-06 12:10:00  NaN   360  1556      True              False
9    1997-11-27 13:30:00  1997-11-27 14:00:00           14000          7000         N17E63         8113       X2.6  1997-11-27 13:56:00   98    91   441     False              False
10   1997-12-12 22:45:00  1997-12-12 23:20:00           14000          8000         N25W52         8116       B9.4  1997-12-13 00:26:00  278    73   191     False              False
```
**You must have this table along with the dtypes displayed in your final notebook when you submit it.**

----

## Part 2: Analysis

Now that you have data from both sites, let’s start some analysis.

### Question 1: Replication (10 pts)

Can you replicate the top 50 solar flare table in [SpaceWeatherLive.com](https://www.spaceweatherlive.com/en/solar-activity/top-50-solar-flares) exactly using the data obtained from NASA? That is, if you get the top 50 solar flares from the NASA table based on their classification (e.g., X28 is the highest), do you get data for the same solar flare events?

Include code used to get the top 50 solar flares from the NASA table (be careful when ordering by classification, remember x is the highest!). Write a sentence or two discussing how well you can replicate the SpaceWeatherLive data from the NASA data.

**Hint: You can modify the NASA dataframe slightly to do this if you wish.**

**Hint: You're going to want to use some [date/time indexing functions](https://pandas.pydata.org/pandas-docs/stable/user_guide/timeseries.html).**

### Question 2: Integration (15 pts)

Write a function that finds the best matching row in the NASA data for each of the top 50 solar flares in the SpaceWeatherLive data **and assigns a rank value to that entry in the NASA table**. Here, you have to decide for yourself how you determine what is the best matching entry in the NASA data for each of the top 50 solar flares.

**Hint: You may want to look at multiple pieces of data before deciding if a flare matches.**

In your submission, include an explanation of how you are defining best matching rows across the two datasets in addition to the code used to find the best matches. 

**Use your function to add a new column to the NASA dataset indicating its rank according to SpaceWeatherLive, if it appears in that dataset.**

**Hint: You may not end up with all the ranks!**

**At the end of this section display only flares in the NASA table that you could rank.**

### Question 3: Analysis Plot (15 pts)

**Note: From here on we are only referring to the top 50 that you were able to match in the NASA data.**

Prepare one plot that shows the top 50 solar flares that you were able to match in context with all data available in the NASA dataset. Here are some possibilities (you can do something else).  Helpful ideas are also in the [Pandas Visualization Docs](https://pandas.pydata.org/pandas-docs/stable/user_guide/visualization.html).

1.  Plot attributes in the NASA dataset (e.g., starting or ending frequencies, flare height or width) over time. Use graphical elements (e.g., text or points) to indicate flares in the top 50 classification.
  * **Hint:** You may want to make use of [pandas isnull](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.isnull.html) to filter correctly.
    
2.  Do flares in the top 50 tend to have Flare Halo CMEs? You can make a bar or pie plot that compares the number (or proportion) of Halo CMEs in the top 50 flares vs. the dataset as a whole.
    
3.  Do strong flares cluster in time? Plot the number of flares per month over time, add a graphical element to indicate (e.g., text or points) to indicate the number of strong flares (in the top 50) to see if they cluster.

**Display your graph and make sure the labels and axes are informative!**

----

## Submission

Prepare an Jupyter Notebook file that includes for each step in Part 1: 
1. Code to carry out the step discussed, 
2. output showing the output of your code, similar to the examples above, and 
3. a short prose description of how your code works. 

**For full credit make sure to use markdown cells to break your notebook into parts with the appropriate headings.**

For Questions 1 and 2 of Part 2, follow the instructions there.  **Be sure to use Markdown cells to properly document and discuss what you are coding in the notebook.**

For Question 3 of part 2 provide: 
1. A short description (2 sentences) of what the intent of your plot is (think in terms of our discussion and notebooks on how we show variation, co-variation in terms of summary statistics like central trend, spread, skew etc.),
2. code to produce your plot,
3. a short text description of your plot, and 
4. a sentence or two of interpretation of your plot (again think of variation, co-variation, etc.).

Submit the resulting .ipynb to [Canvas](https://tulane.instructure.com/)

## Grading Rubric
* (10 Points) *Professionalism*: You have used both code comments and markdown cells to professionally and clearly document your work including having a clear and clean notebook; linking to resources and documents; and doing so with code that is reasonable and efficient. 
  * You should, using Markdown in your notebook, clearly label all parts of the project.. 
  * **Hint:** Copy this markdown into a notebook cells and *start from there!*.
* Scrape Your Competitor's Data (10 pts)
  * Documentation and Markdown cells used appropriately.
  * Code is correct to achieve task.
  * Table is displayed.
* Tidy the Top 50 Solar Flare Data (10 pts)
  * Documentation and Markdown cells used appropriately.
  * Code is correct to achieve task.
  * Table is displayed.
* Scrape the NASA Data (15 pts)
  * Documentation and Markdown cells used appropriately.
  * Code is correct to achieve task.
  * Table is displayed.
* Tidy the NASA the Table (15 pts)
  * Documentation and Markdown cells used appropriately.
  * Code is correct to achieve task.
  * Table is displayed.
* Replication (10 pts)
  * Documentation and Markdown cells used appropriately.
  * Code is correct to achieve task.
  * Interpretation and discussion is appropriate.
* Integration (15 pts)
  * Documentation and Markdown cells used appropriately.
  * Code is correct to achieve task.
  * Table is displayed.
* Analysis (15 pts)
  * Documentation and Markdown cells used appropriately.
  * Code is correct to achieve task.
  * Graphs are clean and well labeled.
  * Interpretation is reasonable and well written.

| Full    |    80%  |    60%  |   40%   |   20%   | No Marks |
| : ---- :| : ---- :| : ---- :| : ---- :| : ---- :| : ---- : |
|You completely and fully met the criteria mentioned in depth. | You have met most of the criteria but lack sufficient depth and/or missed one or more minor pieces. | You have missed major components of the required criteria or they are incorrect / inappropriate. | You have missed most components of the required criteria and/or may of them are incorrect. | Little to no evidence of work and major missing components. | Missing or completely inadequate. | 

### Credits

Thanks to [John P. Dickerson](http://jpdickerson.com/) for the Project writeup.



