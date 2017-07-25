(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 11.0' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc. For additional information concerning CDF     *)
(*  licensing and redistribution see:                                    *)
(*                                                                       *)
(*        www.wolfram.com/cdf/adopting-cdf/licensing-options.html        *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1064,         20]
NotebookDataLength[    941853,      19329]
NotebookOptionsPosition[    927160,      18845]
NotebookOutlinePosition[    927528,      18861]
CellTagsIndexPosition[    927485,      18858]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["\<\
Planetary Retrogrades and Flight CANCELLATIONS in the USA from Oct 1987 to \
May 2017 by Renay Oshop\
\>", "Title",
 CellChangeTimes->{{3.709571663874242*^9, 3.709571666811844*^9}, {
  3.7095900025293245`*^9, 3.709590005494931*^9}, {3.709592511870119*^9, 
  3.7095925213660645`*^9}, {3.7095928303843822`*^9, 3.7095928381669817`*^9}, {
  3.7096506472509456`*^9, 3.7096506577921057`*^9}, {3.709681273598765*^9, 
  3.7096812793599453`*^9}, {3.7097521709599333`*^9, 3.7097521758759327`*^9}, {
  3.709763045529912*^9, 3.709763046104029*^9}, {3.709921632162698*^9, 
  3.709921638126911*^9}}],

Cell[TextData[StyleBox["Mercury retrograde is said to be correlated to events \
of delay, disappointment, and difficulty. \nQuestion: Does Mercury Retrograde \
truly correlate to flight delays?", "Chapter"]], "Text",
 CellChangeTimes->{{3.709826646622883*^9, 3.7098267088827486`*^9}, {
  3.7098267391109962`*^9, 3.709826782458953*^9}, {3.7098296826294813`*^9, 
  3.7098296858271427`*^9}}],

Cell["\<\
There is full data on all American flights that is available at the following \
URL!

Specific page for download of this data https : // \
www.transtats.bts.gov/DL_SelectFields.asp?Table_ID = 236 & DB_Short _Name = \
On - Time

Collection of data from this site was in the evening of Jul 21, 2017 Mountain \
Time\
\>", "Text",
 CellChangeTimes->{{3.7096803322958956`*^9, 3.709680332306899*^9}, {
  3.7097451679674716`*^9, 3.7097451887647324`*^9}, {3.7097630097165728`*^9, 
  3.709763027815282*^9}, {3.709826789375383*^9, 3.709826806731969*^9}, {
  3.7098268400028453`*^9, 3.709826873570781*^9}}],

Cell[BoxData[
 StyleBox[
  RowBox[{"\n", 
   RowBox[{
    RowBox[{"Full", " ", "data", " ", "at", " ", 
     RowBox[{"https", ":"}]}], "//", 
    RowBox[{
     RowBox[{"www", ".", "transtats", ".", "bts", ".", "gov"}], "/"}]}]}],
  FontWeight->"Bold"]], "Input",
 CellChangeTimes->{{3.709650627050807*^9, 3.7096506270618134`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"months", "=", 
   RowBox[{"{", 
    RowBox[{
    "\"\<Jan\>\"", ",", "\"\<Feb\>\"", ",", "\"\<Mar\>\"", ",", "\"\<Apr\>\"",
      ",", "\"\<May\>\"", ",", "\"\<Jun\>\"", ",", "\"\<Jul\>\"", ",", 
     "\"\<Aug\>\"", ",", "\"\<Sep\>\"", ",", "\"\<Oct\>\"", ",", 
     "\"\<Nov\>\"", ",", "\"\<Dec\>\""}], "}"}]}], ";", 
  RowBox[{"years", "=", 
   RowBox[{"{", "}"}]}], ";", 
  RowBox[{"missing", "=", 
   RowBox[{"{", "}"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{"missing", "=", 
  RowBox[{"Reap", "[", 
   RowBox[{
    RowBox[{"For", "[", 
     RowBox[{
      RowBox[{"year", "=", "2001"}], ",", 
      RowBox[{"year", "\[LessEqual]", "2011"}], ",", 
      RowBox[{"year", "++"}], ",", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"For", "[", 
        RowBox[{
         RowBox[{"monthnum", "=", "1"}], ",", 
         RowBox[{"monthnum", "<=", "12"}], ",", 
         RowBox[{"monthnum", "++"}], ",", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"month", "=", 
           RowBox[{"months", "[", 
            RowBox[{"[", "monthnum", "]"}], "]"}]}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"(*", 
           RowBox[{
            RowBox[{"element", "=", 
             RowBox[{
              RowBox[{"Import", "[", 
               RowBox[{
                RowBox[{"ToString", "[", "year", "]"}], "<>", "month", "<>", 
                "\"\<.csv\>\""}], "]"}], "[", 
              RowBox[{"[", 
               RowBox[{"1", ",", "1"}], "]"}], "]"}]}], ";"}], "*)"}], 
          "\[IndentingNewLine]", 
          RowBox[{"If", "[", " ", 
           RowBox[{
            RowBox[{"Not", "[", 
             RowBox[{"FileExistsQ", "[", 
              RowBox[{
               RowBox[{"ToString", "[", "year", "]"}], "<>", "month", "<>", 
               "\"\<.csv\>\""}], "]"}], "]"}], ",", 
            RowBox[{"Sow", "[", 
             RowBox[{
              RowBox[{"ToString", "[", "year", "]"}], "<>", "month"}], 
             "]"}]}], "]"}], 
          RowBox[{"(*", "CHECK", "*)"}], ";"}]}], "\[IndentingNewLine]", 
        "]"}], ";"}]}], "]"}], ";"}], "]"}]}]}], "Input",
 CellChangeTimes->{{3.709810265266201*^9, 3.7098103461577754`*^9}, {
  3.7098104000318136`*^9, 3.709810592974347*^9}, {3.709810833455621*^9, 
  3.7098108495629225`*^9}, {3.7098116071691513`*^9, 3.7098116217101307`*^9}, {
  3.709812330365331*^9, 3.7098123463956165`*^9}, {3.7098124579644775`*^9, 
  3.7098124963373375`*^9}, {3.709812643497491*^9, 3.709812659706812*^9}, {
  3.7098127970789585`*^9, 3.7098128021489973`*^9}, {3.7098136538044987`*^9, 
  3.7098137012942286`*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"Null", ",", 
   RowBox[{"{", 
    RowBox[{"{", 
     RowBox[{"\<\"2010Jun\"\>", ",", "\<\"2010Jul\"\>"}], "}"}], "}"}]}], 
  "}"}]], "Output",
 CellChangeTimes->{3.7098124470322466`*^9, 3.709812490782201*^9, 
  3.709812640989978*^9, 3.709812791232761*^9, 3.709813430452735*^9, 
  3.7098137036547127`*^9}]
}, Open  ]],

Cell["\<\
NOTE : The June and July 2010 Files were inaccessible in the BTS website. So, \
I will stop collection in Dec 2009. => 22 Years Actually\
\>", "Text",
 CellChangeTimes->{{3.709813845537783*^9, 3.70981392068018*^9}, {
   3.7098141761705303`*^9, 3.7098141777258472`*^9}, 3.7098268212919807`*^9, {
   3.709918801926758*^9, 3.7099188107995605`*^9}}],

Cell[CellGroupData[{

Cell["\<\
Acquire flight data (month by month)and collate year by year. Note that the \
major security events of Sept 2001 and their attendant flight cancellations \
are included in the analysis and were removed as outliers. (Mercury was \
prograde during this time.)\
\>", "Chapter",
 CellChangeTimes->{{3.7097452490540857`*^9, 3.7097453425092354`*^9}, {
  3.7097545270711575`*^9, 3.709754533937563*^9}, {3.7098268937449503`*^9, 
  3.709826935290536*^9}, {3.7098288220861716`*^9, 3.709828838124488*^9}, {
  3.7098297077636757`*^9, 3.709829724270087*^9}, {3.7098512189134617`*^9, 
  3.7098512265200357`*^9}}],

Cell[BoxData[{
 RowBox[{
  RowBox[{"months", "=", 
   RowBox[{"{", 
    RowBox[{
    "\"\<Jan\>\"", ",", "\"\<Feb\>\"", ",", "\"\<Mar\>\"", ",", "\"\<Apr\>\"",
      ",", "\"\<May\>\"", ",", "\"\<Jun\>\"", ",", "\"\<Jul\>\"", ",", 
     "\"\<Aug\>\"", ",", "\"\<Sep\>\"", ",", "\"\<Oct\>\"", ",", 
     "\"\<Nov\>\"", ",", "\"\<Dec\>\""}], "}"}]}], ";", 
  RowBox[{"years", "=", 
   RowBox[{"{", "}"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"For", "[", 
   RowBox[{
    RowBox[{"year", "=", "1987"}], ",", 
    RowBox[{"year", "\[LessEqual]", "1987"}], ",", 
    RowBox[{"year", "++"}], ",", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"rawyear", "=", 
      RowBox[{"{", "}"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"For", "[", 
      RowBox[{
       RowBox[{"monthnum", "=", "10"}], ",", 
       RowBox[{"monthnum", "\[LessEqual]", "12"}], ",", 
       RowBox[{"monthnum", "++"}], ",", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"month", "=", 
         RowBox[{"months", "[", 
          RowBox[{"[", "monthnum", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
        RowBox[{"rawmonth", "=", 
         RowBox[{"Import", "[", 
          RowBox[{
           RowBox[{"ToString", "[", "year", "]"}], "<>", "month", "<>", 
           "\"\<.csv\>\""}], "]"}]}], ";", 
        RowBox[{"(*", "CHECK", "*)"}], "\[IndentingNewLine]", 
        RowBox[{"rawmonth2", "=", 
         RowBox[{
          RowBox[{"Drop", "[", 
           RowBox[{"rawmonth", ",", "1"}], "]"}], "[", 
          RowBox[{"[", 
           RowBox[{"All", ",", 
            RowBox[{"{", 
             RowBox[{"1", ",", "2", ",", "3", ",", "4"}], "}"}]}], "]"}], 
          "]"}]}], ";", "\[IndentingNewLine]", 
        RowBox[{"rawmonth3", "=", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"rawmonth2", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", 
                RowBox[{"{", 
                 RowBox[{"1", ",", "2", ",", "3"}], "}"}]}], "]"}], "]"}], 
             ",", 
             RowBox[{"rawmonth2", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", "4"}], "]"}], "]"}]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"i", ",", "1", ",", 
             RowBox[{"Length", "[", "rawmonth2", "]"}]}], "}"}]}], "]"}]}], 
        ";", "\[IndentingNewLine]", 
        RowBox[{"monthgathers", "=", 
         RowBox[{"GatherBy", "[", 
          RowBox[{"rawmonth3", ",", "First"}], "]"}]}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"monthavgs", "=", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"monthgathers", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", "1", ",", "1"}], "]"}], "]"}], ",", 
             RowBox[{"N", "[", 
              RowBox[{"Mean", "[", 
               RowBox[{"monthgathers", "[", 
                RowBox[{"[", 
                 RowBox[{"i", ",", "All", ",", "2"}], "]"}], "]"}], "]"}], 
              "]"}]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"i", ",", "1", ",", 
             RowBox[{"Length", "[", "monthgathers", "]"}]}], "}"}]}], "]"}]}],
         ";", "\[IndentingNewLine]", 
        RowBox[{"AppendTo", "[", 
         RowBox[{"years", ",", "monthavgs"}], "]"}]}]}], "]"}]}]}], 
   RowBox[{"(*", "CHECK", "*)"}], "\[IndentingNewLine]", "]"}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"For", "[", 
    RowBox[{
     RowBox[{"year", "=", "1988"}], ",", 
     RowBox[{"year", "\[LessEqual]", "2009"}], ",", 
     RowBox[{"year", "++"}], ",", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"rawyear", "=", 
       RowBox[{"{", "}"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"For", "[", 
       RowBox[{
        RowBox[{"monthnum", "=", "1"}], ",", 
        RowBox[{"monthnum", "<=", "12"}], ",", 
        RowBox[{"monthnum", "++"}], ",", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"month", "=", 
          RowBox[{"months", "[", 
           RowBox[{"[", "monthnum", "]"}], "]"}]}], ";", 
         "\[IndentingNewLine]", 
         RowBox[{"rawmonth", "=", 
          RowBox[{"Import", "[", 
           RowBox[{
            RowBox[{"ToString", "[", "year", "]"}], "<>", "month", "<>", 
            "\"\<.csv\>\""}], "]"}]}], ";", 
         RowBox[{"(*", "CHECK", "*)"}], "\[IndentingNewLine]", 
         RowBox[{"rawmonth2", "=", 
          RowBox[{
           RowBox[{"Drop", "[", 
            RowBox[{"rawmonth", ",", "1"}], "]"}], "[", 
           RowBox[{"[", 
            RowBox[{"All", ",", 
             RowBox[{"{", 
              RowBox[{"1", ",", "2", ",", "3", ",", "4"}], "}"}]}], "]"}], 
           "]"}]}], ";", "\[IndentingNewLine]", 
         RowBox[{"rawmonth3", "=", 
          RowBox[{"Table", "[", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{
              RowBox[{"rawmonth2", "[", 
               RowBox[{"[", 
                RowBox[{"i", ",", 
                 RowBox[{"{", 
                  RowBox[{"1", ",", "2", ",", "3"}], "}"}]}], "]"}], "]"}], 
              ",", 
              RowBox[{"rawmonth2", "[", 
               RowBox[{"[", 
                RowBox[{"i", ",", "4"}], "]"}], "]"}]}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"i", ",", "1", ",", 
              RowBox[{"Length", "[", "rawmonth2", "]"}]}], "}"}]}], "]"}]}], 
         ";", "\[IndentingNewLine]", 
         RowBox[{"monthgathers", "=", 
          RowBox[{"GatherBy", "[", 
           RowBox[{"rawmonth3", ",", "First"}], "]"}]}], ";", 
         "\[IndentingNewLine]", 
         RowBox[{"monthavgs", "=", 
          RowBox[{"Table", "[", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{
              RowBox[{"monthgathers", "[", 
               RowBox[{"[", 
                RowBox[{"i", ",", "1", ",", "1"}], "]"}], "]"}], ",", 
              RowBox[{"N", "[", 
               RowBox[{"Mean", "[", 
                RowBox[{"monthgathers", "[", 
                 RowBox[{"[", 
                  RowBox[{"i", ",", "All", ",", "2"}], "]"}], "]"}], "]"}], 
               "]"}]}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"i", ",", "1", ",", 
              RowBox[{"Length", "[", "monthgathers", "]"}]}], "}"}]}], 
           "]"}]}], ";", "\[IndentingNewLine]", 
         RowBox[{"AppendTo", "[", 
          RowBox[{"years", ",", "monthavgs"}], "]"}]}]}], "]"}]}]}], 
    RowBox[{"(*", "CHECK", "*)"}], "\[IndentingNewLine]", "]"}], ";"}], 
  "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{
    RowBox[{"For", "[", 
     RowBox[{
      RowBox[{"year", "=", "2017"}], ",", 
      RowBox[{"year", "\[LessEqual]", "2017"}], ",", 
      RowBox[{"year", "++"}], ",", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"rawyear", "=", 
        RowBox[{"{", "}"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"For", "[", 
        RowBox[{
         RowBox[{"monthnum", "=", "1"}], ",", 
         RowBox[{"monthnum", "\[LessEqual]", "5"}], ",", 
         RowBox[{"monthnum", "++"}], ",", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"month", "=", 
           RowBox[{"months", "[", 
            RowBox[{"[", "monthnum", "]"}], "]"}]}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"rawmonth", "=", 
           RowBox[{"Import", "[", 
            RowBox[{
             RowBox[{"ToString", "[", "year", "]"}], "<>", "month", "<>", 
             "\"\<.csv\>\""}], "]"}]}], ";", 
          RowBox[{"(*", "CHECK", "*)"}], "\[IndentingNewLine]", 
          RowBox[{"rawmonth2", "=", 
           RowBox[{
            RowBox[{"Drop", "[", 
             RowBox[{"rawmonth", ",", "1"}], "]"}], "[", 
            RowBox[{"[", 
             RowBox[{"All", ",", 
              RowBox[{"{", 
               RowBox[{"1", ",", "2", ",", "3", ",", "4"}], "}"}]}], "]"}], 
            "]"}]}], ";", "\[IndentingNewLine]", 
          RowBox[{"rawmonth3", "=", 
           RowBox[{"Table", "[", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{
               RowBox[{
                RowBox[{"rawmonth2", "[", 
                 RowBox[{"[", "i", "]"}], "]"}], "[", 
                RowBox[{"[", 
                 RowBox[{"{", 
                  RowBox[{"1", ",", "2", ",", "3"}], "}"}], "]"}], "]"}], ",", 
               RowBox[{
                RowBox[{"rawmonth2", "[", 
                 RowBox[{"[", "i", "]"}], "]"}], "[", 
                RowBox[{"[", "4", "]"}], "]"}]}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"i", ",", "1", ",", 
               RowBox[{"Length", "[", "rawmonth2", "]"}]}], "}"}]}], "]"}]}], 
          ";", "\[IndentingNewLine]", 
          RowBox[{"monthgathers", "=", 
           RowBox[{"GatherBy", "[", 
            RowBox[{"rawmonth3", ",", "First"}], "]"}]}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"monthavgs", "=", 
           RowBox[{"Table", "[", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{
               RowBox[{"monthgathers", "[", 
                RowBox[{"[", 
                 RowBox[{"i", ",", "1", ",", "1"}], "]"}], "]"}], ",", 
               RowBox[{"N", "[", 
                RowBox[{"Mean", "[", 
                 RowBox[{"monthgathers", "[", 
                  RowBox[{"[", 
                   RowBox[{"i", ",", "All", ",", "2"}], "]"}], "]"}], "]"}], 
                "]"}]}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"i", ",", "1", ",", 
               RowBox[{"Length", "[", "monthgathers", "]"}]}], "}"}]}], 
            "]"}]}], ";", "\[IndentingNewLine]", 
          RowBox[{"AppendTo", "[", 
           RowBox[{"years", ",", "monthavgs"}], "]"}]}]}], "]"}]}]}], 
     RowBox[{"(*", "CHECK", "*)"}], "\[IndentingNewLine]", "]"}], ";"}], 
   "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Export", "[", 
   RowBox[{"\"\<years.mx\>\"", ",", "years"}], "]"}], ";"}]}], "Input",
 CellChangeTimes->{{3.7097453470761695`*^9, 3.709745388896739*^9}, {
   3.7097454608914895`*^9, 3.709745798448654*^9}, {3.709745828572827*^9, 
   3.7097461022399025`*^9}, {3.709750778389097*^9, 3.709750822054038*^9}, {
   3.709752124146743*^9, 3.7097521496315536`*^9}, {3.7097545046455617`*^9, 
   3.709754506947033*^9}, {3.709763085967502*^9, 3.7097631401246*^9}, {
   3.7097684654722*^9, 3.7097685125278416`*^9}, 3.7097696641252956`*^9, 
   3.7097697875329065`*^9, 3.7097698471841297`*^9, {3.7097699261866236`*^9, 
   3.709769998612792*^9}, {3.7097707970007367`*^9, 3.709770820174485*^9}, {
   3.7097709044094687`*^9, 3.70977091993565*^9}, {3.7097713993141174`*^9, 
   3.7097714125688334`*^9}, {3.709771663795309*^9, 3.7097716676731043`*^9}, {
   3.7097717647749996`*^9, 3.7097718060077534`*^9}, {3.7097720250130386`*^9, 
   3.7097720625337267`*^9}, 3.709773355710211*^9, {3.7097735779461317`*^9, 
   3.7097738268549614`*^9}, {3.7097738805389605`*^9, 
   3.7097739851343927`*^9}, {3.7097740183882055`*^9, 3.709774054927692*^9}, {
   3.709774094874877*^9, 3.7097741090027723`*^9}, {3.7097741711014957`*^9, 
   3.7097742337225075`*^9}, {3.7097743789342613`*^9, 
   3.7097743918399057`*^9}, {3.7097745868424516`*^9, 
   3.7097746164995284`*^9}, {3.7097747620297904`*^9, 3.709774779834439*^9}, {
   3.7097749219275527`*^9, 3.70977493245271*^9}, {3.7097821634401836`*^9, 
   3.7097821636392245`*^9}, {3.7098139355412264`*^9, 3.709813935750268*^9}, 
   3.7098262747730412`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell["\<\
Acquire Mercury retrogression data day by day for 30 years and run ANOVA and \
other tests \
\>", "Chapter",
 CellChangeTimes->{{3.7097452490540857`*^9, 3.7097453425092354`*^9}, 
   3.7097545197216516`*^9, {3.7097553395562496`*^9, 3.709755366620795*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"years", "=", 
  RowBox[{"Import", "[", "\"\<years.mx\>\"", "]"}]}]], "Input",
 CellChangeTimes->{{3.709825555060497*^9, 3.7098255689513426`*^9}}],

Cell[BoxData[
 InterpretationBox[
  TagBox[
   FrameBox[GridBox[{
      {
       ItemBox[
        TagBox[
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"1987", ",", "10", ",", "19"}], "}"}], ",", 
               "0.005833672500339167`"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"1987", ",", "10", ",", "20"}], "}"}], ",", 
               "0.008952794357026587`"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"1987", ",", "10", ",", "21"}], "}"}], ",", 
               "0.006121199755152009`"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"1987", ",", "10", ",", "22"}], "}"}], ",", 
               "0.005572166349551508`"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"1987", ",", "10", ",", "23"}], "}"}], ",", 
               "0.0056829852790140365`"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"1987", ",", "10", ",", "24"}], "}"}], ",", 
               "0.005067441687159997`"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"1987", ",", "10", ",", "25"}], "}"}], ",", 
               "0.00817497310864109`"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"1987", ",", "10", ",", "26"}], "}"}], ",", 
               "0.005796710703693718`"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"1987", ",", "10", ",", "27"}], "}"}], ",", 
               "0.005372687704026115`"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"1987", ",", "10", ",", "28"}], "}"}], ",", 
               "0.011787020728898524`"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"1987", ",", "10", ",", "29"}], "}"}], ",", 
               "0.005269914194986825`"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"1987", ",", "10", ",", "30"}], "}"}], ",", 
               "0.0047377326565143825`"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"1987", ",", "10", ",", "31"}], "}"}], ",", 
               "0.009828931572629051`"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"1987", ",", "10", ",", "1"}], "}"}], ",", 
               "0.01036164160910199`"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"1987", ",", "10", ",", "2"}], "}"}], ",", 
               "0.005153241117439653`"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"1987", ",", "10", ",", "3"}], "}"}], ",", 
               "0.006648445002585507`"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"1987", ",", "10", ",", "4"}], "}"}], ",", 
               "0.007866203670895047`"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"1987", ",", "10", ",", "5"}], "}"}], ",", 
               "0.009011432414256892`"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"1987", ",", "10", ",", "6"}], "}"}], ",", 
               "0.006308301456278102`"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"1987", ",", "10", ",", "7"}], "}"}], ",", 
               "0.0026342451874366768`"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"1987", ",", "10", ",", "8"}], "}"}], ",", 
               "0.003371771528761211`"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"1987", ",", "10", ",", "9"}], "}"}], ",", 
               "0.0038560411311053984`"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"1987", ",", "10", ",", "10"}], "}"}], ",", 
               "0.004992176439907608`"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"1987", ",", "10", ",", "11"}], "}"}], ",", 
               "0.003209700427960057`"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"1987", ",", "10", ",", "12"}], "}"}], ",", 
               "0.024602906387293004`"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"1987", ",", "10", ",", "13"}], "}"}], ",", 
               "0.007332660612176253`"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"1987", ",", "10", ",", "14"}], "}"}], ",", 
               "0.004525192489531271`"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"1987", ",", "10", ",", "15"}], "}"}], ",", 
               "0.0031641308738386965`"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"1987", ",", "10", ",", "16"}], "}"}], ",", 
               "0.005125092723717041`"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"1987", ",", "10", ",", "17"}], "}"}], ",", 
               "0.007084348018596413`"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"1987", ",", "10", ",", "18"}], "}"}], ",", 
               "0.003772241992882562`"}], "}"}]}], "}"}], ",", 
           TemplateBox[{"265"},
            "OutputSizeLimit`Skeleton",
            DisplayFunction->(FrameBox[
              RowBox[{"\" \[CenterEllipsis]\"", #, "\"\[CenterEllipsis] \""}],
               Background -> GrayLevel[0.75], 
              BaseStyle -> {
               "Deploy", FontColor -> GrayLevel[1], FontSize -> Smaller, 
                ShowStringCharacters -> False}, BaselinePosition -> Baseline, 
              ContentPadding -> False, FrameMargins -> {{1, 1}, {1, 2}}, 
              FrameStyle -> None, RoundingRadius -> 7]& )], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"2009", ",", "12", ",", "3"}], "}"}], ",", 
               "0.005146277339598366`"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"2009", ",", "12", ",", "4"}], "}"}], ",", 
               "0.033915323255424776`"}], "}"}], ",", 
             TemplateBox[{"28"},
              "OutputSizeLimit`Skeleton",
              DisplayFunction->(FrameBox[
                
                RowBox[{
                 "\" \[CenterEllipsis]\"", #, "\"\[CenterEllipsis] \""}], 
                Background -> GrayLevel[0.75], 
                BaseStyle -> {
                 "Deploy", FontColor -> GrayLevel[1], FontSize -> Smaller, 
                  ShowStringCharacters -> False}, BaselinePosition -> 
                Baseline, ContentPadding -> False, 
                FrameMargins -> {{1, 1}, {1, 2}}, FrameStyle -> None, 
                RoundingRadius -> 7]& )], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"2009", ",", "12", ",", "2"}], "}"}], ",", 
               "0.011659295847452759`"}], "}"}]}], "}"}]}], "}"}],
         Short[#, 5]& ],
        BaseStyle->{Deployed -> False},
        StripOnInput->False]},
      {GridBox[{
         {
          TagBox[
           TooltipBox[
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource[
                "FEStrings", "sizeBriefExplanation"], StandardForm],
               ImageSizeCache->{132., {6., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarCategory",
             StripOnInput->False],
            StyleBox[
             DynamicBox[
              ToBoxes[
               FEPrivate`FrontEndResource["FEStrings", "sizeExplanation"], 
               StandardForm]], DynamicUpdating -> True, StripOnInput -> 
             False]],
           Annotation[#, 
            Style[
             Dynamic[
              FEPrivate`FrontEndResource["FEStrings", "sizeExplanation"]], 
             DynamicUpdating -> True], "Tooltip"]& ], 
          ButtonBox[
           PaneSelectorBox[{False->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowLess"], 
                StandardForm],
               ImageSizeCache->{108., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControl",
             StripOnInput->False], True->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowLess"], 
                StandardForm]],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControlActive",
             StripOnInput->False]}, Dynamic[
             CurrentValue["MouseOver"]],
            Alignment->Center,
            FrameMargins->0,
            ImageSize->{Automatic, 25}],
           Appearance->None,
           
           ButtonFunction:>OutputSizeLimit`ButtonFunction[
            OutputSizeLimit`Defer, 1, 15167562623507322558, 5/2],
           Enabled->True,
           Evaluator->Automatic,
           Method->"Queued"], 
          ButtonBox[
           PaneSelectorBox[{False->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowMore"], 
                StandardForm],
               ImageSizeCache->{126., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControl",
             StripOnInput->False], True->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowMore"], 
                StandardForm],
               ImageSizeCache->{62., {1., 9.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControlActive",
             StripOnInput->False]}, Dynamic[
             CurrentValue["MouseOver"]],
            Alignment->Center,
            FrameMargins->0,
            ImageSize->{Automatic, 25}],
           Appearance->None,
           
           ButtonFunction:>OutputSizeLimit`ButtonFunction[
            OutputSizeLimit`Defer, 1, 15167562623507322558, 5 2],
           Enabled->True,
           Evaluator->Automatic,
           Method->"Queued"], 
          ButtonBox[
           PaneSelectorBox[{False->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowAll"], 
                StandardForm],
               ImageSizeCache->{93., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControl",
             StripOnInput->False], True->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowAll"], 
                StandardForm],
               ImageSizeCache->{93., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControlActive",
             StripOnInput->False]}, Dynamic[
             CurrentValue["MouseOver"]],
            Alignment->Center,
            FrameMargins->0,
            ImageSize->{Automatic, 25}],
           Appearance->None,
           
           ButtonFunction:>OutputSizeLimit`ButtonFunction[
            OutputSizeLimit`Defer, 1, 15167562623507322558, Infinity],
           Enabled->True,
           Evaluator->Automatic,
           Method->"Queued"], 
          ButtonBox[
           PaneSelectorBox[{False->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeChangeLimit"], 
                StandardForm],
               ImageSizeCache->{163., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControl",
             StripOnInput->False], True->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeChangeLimit"], 
                StandardForm],
               ImageSizeCache->{163., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControlActive",
             StripOnInput->False]}, Dynamic[
             CurrentValue["MouseOver"]],
            Alignment->Center,
            FrameMargins->0,
            ImageSize->{Automatic, 25}],
           Appearance->None,
           ButtonFunction:>FrontEndExecute[{
              FrontEnd`SetOptions[
              FrontEnd`$FrontEnd, 
               FrontEnd`PreferencesSettings -> {"Page" -> "Evaluation"}], 
              FrontEnd`FrontEndToken["PreferencesDialog"]}],
           Evaluator->None,
           Method->"Preemptive"]}
        },
        AutoDelete->False,
        FrameStyle->GrayLevel[0.85],
        GridBoxDividers->{"Columns" -> {False, {True}}},
        GridBoxItemSize->{"Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}},
        GridBoxSpacings->{"Columns" -> {{2}}}]}
     },
     DefaultBaseStyle->"Column",
     GridBoxAlignment->{
      "Columns" -> {{Left}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
       "RowsIndexed" -> {}},
     GridBoxDividers->{
      "Columns" -> {{False}}, "ColumnsIndexed" -> {}, "Rows" -> {{False}}, 
       "RowsIndexed" -> {}},
     GridBoxItemSize->{
      "Columns" -> {{Automatic}}, "ColumnsIndexed" -> {}, "Rows" -> {{1.}}, 
       "RowsIndexed" -> {}},
     GridBoxSpacings->{"Columns" -> {
         Offset[0.27999999999999997`], {
          Offset[0.5599999999999999]}, 
         Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
         Offset[0.2], 
         Offset[1.2], {
          Offset[0.4]}, 
         Offset[0.2]}, "RowsIndexed" -> {}}],
    Background->RGBColor[0.9657, 0.9753, 0.9802],
    FrameMargins->{{12, 12}, {0, 15}},
    FrameStyle->GrayLevel[0.85],
    RoundingRadius->5,
    StripOnInput->False],
   Deploy,
   DefaultBaseStyle->"Deploy"],
  Out[1]]], "Output",
 CellChangeTimes->{3.709826249615841*^9, 3.709849506479372*^9, 
  3.709906384777398*^9, 3.709914875619356*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"years0", "=", 
  RowBox[{"Flatten", "[", 
   RowBox[{"years", ",", "1"}], "]"}]}]], "Input",
 CellChangeTimes->{{3.7097728447983313`*^9, 3.7097728505835166`*^9}, {
   3.7097750161858664`*^9, 3.7097750176061573`*^9}, {3.7097750494136744`*^9, 
   3.7097750928245687`*^9}, 3.7098496717635264`*^9}],

Cell[BoxData[
 InterpretationBox[
  TagBox[
   FrameBox[GridBox[{
      {
       ItemBox[
        TagBox[
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"1987", ",", "10", ",", "19"}], "}"}], ",", 
             "0.005833672500339167`"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"1987", ",", "10", ",", "20"}], "}"}], ",", 
             "0.008952794357026587`"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"1987", ",", "10", ",", "21"}], "}"}], ",", 
             "0.006121199755152009`"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"1987", ",", "10", ",", "22"}], "}"}], ",", 
             "0.005572166349551508`"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"1987", ",", "10", ",", "23"}], "}"}], ",", 
             "0.0056829852790140365`"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"1987", ",", "10", ",", "24"}], "}"}], ",", 
             "0.005067441687159997`"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"1987", ",", "10", ",", "25"}], "}"}], ",", 
             "0.00817497310864109`"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"1987", ",", "10", ",", "26"}], "}"}], ",", 
             "0.005796710703693718`"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"1987", ",", "10", ",", "27"}], "}"}], ",", 
             "0.005372687704026115`"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"1987", ",", "10", ",", "28"}], "}"}], ",", 
             "0.011787020728898524`"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"1987", ",", "10", ",", "29"}], "}"}], ",", 
             "0.005269914194986825`"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"1987", ",", "10", ",", "30"}], "}"}], ",", 
             "0.0047377326565143825`"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"1987", ",", "10", ",", "31"}], "}"}], ",", 
             "0.009828931572629051`"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"1987", ",", "10", ",", "1"}], "}"}], ",", 
             "0.01036164160910199`"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"1987", ",", "10", ",", "2"}], "}"}], ",", 
             "0.005153241117439653`"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"1987", ",", "10", ",", "3"}], "}"}], ",", 
             "0.006648445002585507`"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"1987", ",", "10", ",", "4"}], "}"}], ",", 
             "0.007866203670895047`"}], "}"}], ",", 
           TemplateBox[{"8094"},
            "OutputSizeLimit`Skeleton",
            DisplayFunction->(FrameBox[
              RowBox[{"\" \[CenterEllipsis]\"", #, "\"\[CenterEllipsis] \""}],
               Background -> GrayLevel[0.75], 
              BaseStyle -> {
               "Deploy", FontColor -> GrayLevel[1], FontSize -> Smaller, 
                ShowStringCharacters -> False}, BaselinePosition -> Baseline, 
              ContentPadding -> False, FrameMargins -> {{1, 1}, {1, 2}}, 
              FrameStyle -> None, RoundingRadius -> 7]& )], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"2009", ",", "12", ",", "17"}], "}"}], ",", 
             "0.006317889603192197`"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"2009", ",", "12", ",", "18"}], "}"}], ",", 
             "0.021602557037363607`"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"2009", ",", "12", ",", "19"}], "}"}], ",", 
             "0.15852361588989677`"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"2009", ",", "12", ",", "20"}], "}"}], ",", 
             "0.10506770267954064`"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"2009", ",", "12", ",", "21"}], "}"}], ",", 
             "0.015675705406743304`"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"2009", ",", "12", ",", "22"}], "}"}], ",", 
             "0.01862053768179815`"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"2009", ",", "12", ",", "23"}], "}"}], ",", 
             "0.027768595041322314`"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"2009", ",", "12", ",", "24"}], "}"}], ",", 
             "0.046135489858146625`"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"2009", ",", "12", ",", "25"}], "}"}], ",", 
             "0.03128468368479467`"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"2009", ",", "12", ",", "26"}], "}"}], ",", 
             "0.04615478292638373`"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"2009", ",", "12", ",", "27"}], "}"}], ",", 
             "0.016908212560386472`"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"2009", ",", "12", ",", "28"}], "}"}], ",", 
             "0.007507175977036874`"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"2009", ",", "12", ",", "29"}], "}"}], ",", 
             "0.022352550625207482`"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"2009", ",", "12", ",", "30"}], "}"}], ",", 
             "0.00864026585433398`"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"2009", ",", "12", ",", "31"}], "}"}], ",", 
             "0.015080497248828205`"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"2009", ",", "12", ",", "1"}], "}"}], ",", 
             "0.005024545192030032`"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"2009", ",", "12", ",", "2"}], "}"}], ",", 
             "0.011659295847452759`"}], "}"}]}], "}"}],
         Short[#, 5]& ],
        BaseStyle->{Deployed -> False},
        StripOnInput->False]},
      {GridBox[{
         {
          TagBox[
           TooltipBox[
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource[
                "FEStrings", "sizeBriefExplanation"], StandardForm],
               ImageSizeCache->{132., {6., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarCategory",
             StripOnInput->False],
            StyleBox[
             DynamicBox[
              ToBoxes[
               FEPrivate`FrontEndResource["FEStrings", "sizeExplanation"], 
               StandardForm]], DynamicUpdating -> True, StripOnInput -> 
             False]],
           Annotation[#, 
            Style[
             Dynamic[
              FEPrivate`FrontEndResource["FEStrings", "sizeExplanation"]], 
             DynamicUpdating -> True], "Tooltip"]& ], 
          ButtonBox[
           PaneSelectorBox[{False->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowLess"], 
                StandardForm],
               ImageSizeCache->{108., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControl",
             StripOnInput->False], True->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowLess"], 
                StandardForm],
               ImageSizeCache->{108., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControlActive",
             StripOnInput->False]}, Dynamic[
             CurrentValue["MouseOver"]],
            Alignment->Center,
            FrameMargins->0,
            ImageSize->{Automatic, 25}],
           Appearance->None,
           
           ButtonFunction:>OutputSizeLimit`ButtonFunction[
            OutputSizeLimit`Defer, 2, 15167562623507322558, 5/2],
           Enabled->True,
           Evaluator->Automatic,
           Method->"Queued"], 
          ButtonBox[
           PaneSelectorBox[{False->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowMore"], 
                StandardForm],
               ImageSizeCache->{126., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControl",
             StripOnInput->False], True->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowMore"], 
                StandardForm],
               ImageSizeCache->{126., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControlActive",
             StripOnInput->False]}, Dynamic[
             CurrentValue["MouseOver"]],
            Alignment->Center,
            FrameMargins->0,
            ImageSize->{Automatic, 25}],
           Appearance->None,
           
           ButtonFunction:>OutputSizeLimit`ButtonFunction[
            OutputSizeLimit`Defer, 2, 15167562623507322558, 5 2],
           Enabled->True,
           Evaluator->Automatic,
           Method->"Queued"], 
          ButtonBox[
           PaneSelectorBox[{False->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowAll"], 
                StandardForm],
               ImageSizeCache->{93., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControl",
             StripOnInput->False], True->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowAll"], 
                StandardForm],
               ImageSizeCache->{93., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControlActive",
             StripOnInput->False]}, Dynamic[
             CurrentValue["MouseOver"]],
            Alignment->Center,
            FrameMargins->0,
            ImageSize->{Automatic, 25}],
           Appearance->None,
           
           ButtonFunction:>OutputSizeLimit`ButtonFunction[
            OutputSizeLimit`Defer, 2, 15167562623507322558, Infinity],
           Enabled->True,
           Evaluator->Automatic,
           Method->"Queued"], 
          ButtonBox[
           PaneSelectorBox[{False->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeChangeLimit"], 
                StandardForm],
               ImageSizeCache->{163., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControl",
             StripOnInput->False], True->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeChangeLimit"], 
                StandardForm]],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControlActive",
             StripOnInput->False]}, Dynamic[
             CurrentValue["MouseOver"]],
            Alignment->Center,
            FrameMargins->0,
            ImageSize->{Automatic, 25}],
           Appearance->None,
           ButtonFunction:>FrontEndExecute[{
              FrontEnd`SetOptions[
              FrontEnd`$FrontEnd, 
               FrontEnd`PreferencesSettings -> {"Page" -> "Evaluation"}], 
              FrontEnd`FrontEndToken["PreferencesDialog"]}],
           Evaluator->None,
           Method->"Preemptive"]}
        },
        AutoDelete->False,
        FrameStyle->GrayLevel[0.85],
        GridBoxDividers->{"Columns" -> {False, {True}}},
        GridBoxItemSize->{"Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}},
        GridBoxSpacings->{"Columns" -> {{2}}}]}
     },
     DefaultBaseStyle->"Column",
     GridBoxAlignment->{
      "Columns" -> {{Left}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
       "RowsIndexed" -> {}},
     GridBoxDividers->{
      "Columns" -> {{False}}, "ColumnsIndexed" -> {}, "Rows" -> {{False}}, 
       "RowsIndexed" -> {}},
     GridBoxItemSize->{
      "Columns" -> {{Automatic}}, "ColumnsIndexed" -> {}, "Rows" -> {{1.}}, 
       "RowsIndexed" -> {}},
     GridBoxSpacings->{"Columns" -> {
         Offset[0.27999999999999997`], {
          Offset[0.5599999999999999]}, 
         Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
         Offset[0.2], 
         Offset[1.2], {
          Offset[0.4]}, 
         Offset[0.2]}, "RowsIndexed" -> {}}],
    Background->RGBColor[0.9657, 0.9753, 0.9802],
    FrameMargins->{{12, 12}, {0, 15}},
    FrameStyle->GrayLevel[0.85],
    RoundingRadius->5,
    StripOnInput->False],
   Deploy,
   DefaultBaseStyle->"Deploy"],
  Out[2]]], "Output",
 CellChangeTimes->{3.7099063872309055`*^9, 3.7099148769446263`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"years0", "[", 
  RowBox[{"[", "1", "]"}], "]"}]], "Input",
 CellChangeTimes->{{3.7098496844571495`*^9, 3.7098496879508715`*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"1987", ",", "10", ",", "19"}], "}"}], ",", 
   "0.005833672500339167`"}], "}"}]], "Output",
 CellChangeTimes->{{3.709849672493678*^9, 3.7098496885659986`*^9}, 
   3.7099063916028085`*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"dates", "=", 
    RowBox[{"Table", "[", 
     RowBox[{
      RowBox[{"DateObject", "[", 
       RowBox[{
        RowBox[{"years0", "[", 
         RowBox[{"[", 
          RowBox[{"i", ",", "1"}], "]"}], "]"}], ",", 
        RowBox[{"TimeObject", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"12", ",", "0", ",", "0"}], "}"}], ",", 
          RowBox[{"TimeZone", "\[Rule]", "\"\<America/Chicago\>\""}]}], 
         "]"}]}], "]"}], ",", 
      RowBox[{"{", 
       RowBox[{"i", ",", "1", ",", 
        RowBox[{"Length", "[", "years0", "]"}]}], "}"}]}], "]"}]}], ";"}], 
  " "}]], "Input",
 CellChangeTimes->{{3.709754628673974*^9, 3.7097546537161055`*^9}, {
  3.7097708340223227`*^9, 3.7097708412618065`*^9}, {3.7097709256168137`*^9, 
  3.7097709355598507`*^9}, {3.7097751066253967`*^9, 3.709775111530402*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Short", "[", 
  RowBox[{"dates", ",", "100"}], "]"}]], "Input",
 CellChangeTimes->{{3.7097707660263906`*^9, 3.709770766826555*^9}, {
  3.7097751315505037`*^9, 3.709775133381879*^9}, {3.7097759990306764`*^9, 
  3.709776009039009*^9}}],

Cell[BoxData[
 InterpretationBox[
  TagBox[
   FrameBox[GridBox[{
      {
       ItemBox[
        TagBox[
         TagBox[
          RowBox[{"{", 
           RowBox[{
            TemplateBox[{RowBox[{"\"Mon 19 Oct 1987 12:00:00\"", 
                StyleBox["\"CDT\"", FontColor -> GrayLevel[0.5]]}],
              RowBox[{"DateObject", "[", 
                RowBox[{
                  RowBox[{"{", 
                    RowBox[{"1987", ",", "10", ",", "19"}], "}"}], ",", 
                  RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                  RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                "]"}]},
             "DateObject",
             Editable->False], ",", 
            TemplateBox[{RowBox[{"\"Tue 20 Oct 1987 12:00:00\"", 
                StyleBox["\"CDT\"", FontColor -> GrayLevel[0.5]]}],
              RowBox[{"DateObject", "[", 
                RowBox[{
                  RowBox[{"{", 
                    RowBox[{"1987", ",", "10", ",", "20"}], "}"}], ",", 
                  RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                  RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                "]"}]},
             "DateObject",
             Editable->False], ",", 
            TemplateBox[{RowBox[{"\"Wed 21 Oct 1987 12:00:00\"", 
                StyleBox["\"CDT\"", FontColor -> GrayLevel[0.5]]}],
              RowBox[{"DateObject", "[", 
                RowBox[{
                  RowBox[{"{", 
                    RowBox[{"1987", ",", "10", ",", "21"}], "}"}], ",", 
                  RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                  RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                "]"}]},
             "DateObject",
             Editable->False], ",", 
            TemplateBox[{RowBox[{"\"Thu 22 Oct 1987 12:00:00\"", 
                StyleBox["\"CDT\"", FontColor -> GrayLevel[0.5]]}],
              RowBox[{"DateObject", "[", 
                RowBox[{
                  RowBox[{"{", 
                    RowBox[{"1987", ",", "10", ",", "22"}], "}"}], ",", 
                  RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                  RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                "]"}]},
             "DateObject",
             Editable->False], ",", 
            TemplateBox[{RowBox[{"\"Fri 23 Oct 1987 12:00:00\"", 
                StyleBox["\"CDT\"", FontColor -> GrayLevel[0.5]]}],
              RowBox[{"DateObject", "[", 
                RowBox[{
                  RowBox[{"{", 
                    RowBox[{"1987", ",", "10", ",", "23"}], "}"}], ",", 
                  RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                  RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                "]"}]},
             "DateObject",
             Editable->False], ",", 
            TemplateBox[{RowBox[{"\"Sat 24 Oct 1987 12:00:00\"", 
                StyleBox["\"CDT\"", FontColor -> GrayLevel[0.5]]}],
              RowBox[{"DateObject", "[", 
                RowBox[{
                  RowBox[{"{", 
                    RowBox[{"1987", ",", "10", ",", "24"}], "}"}], ",", 
                  RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                  RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                "]"}]},
             "DateObject",
             Editable->False], ",", 
            TemplateBox[{RowBox[{"\"Sun 25 Oct 1987 12:00:00\"", 
                StyleBox["\"CST\"", FontColor -> GrayLevel[0.5]]}],
              RowBox[{"DateObject", "[", 
                RowBox[{
                  RowBox[{"{", 
                    RowBox[{"1987", ",", "10", ",", "25"}], "}"}], ",", 
                  RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                  RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                "]"}]},
             "DateObject",
             Editable->False], ",", 
            TemplateBox[{RowBox[{"\"Mon 26 Oct 1987 12:00:00\"", 
                StyleBox["\"CST\"", FontColor -> GrayLevel[0.5]]}],
              RowBox[{"DateObject", "[", 
                RowBox[{
                  RowBox[{"{", 
                    RowBox[{"1987", ",", "10", ",", "26"}], "}"}], ",", 
                  RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                  RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                "]"}]},
             "DateObject",
             Editable->False], ",", 
            TemplateBox[{RowBox[{"\"Tue 27 Oct 1987 12:00:00\"", 
                StyleBox["\"CST\"", FontColor -> GrayLevel[0.5]]}],
              RowBox[{"DateObject", "[", 
                RowBox[{
                  RowBox[{"{", 
                    RowBox[{"1987", ",", "10", ",", "27"}], "}"}], ",", 
                  RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                  RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                "]"}]},
             "DateObject",
             Editable->False], ",", 
            TemplateBox[{RowBox[{"\"Wed 28 Oct 1987 12:00:00\"", 
                StyleBox["\"CST\"", FontColor -> GrayLevel[0.5]]}],
              RowBox[{"DateObject", "[", 
                RowBox[{
                  RowBox[{"{", 
                    RowBox[{"1987", ",", "10", ",", "28"}], "}"}], ",", 
                  RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                  RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                "]"}]},
             "DateObject",
             Editable->False], ",", 
            TemplateBox[{RowBox[{"\"Thu 29 Oct 1987 12:00:00\"", 
                StyleBox["\"CST\"", FontColor -> GrayLevel[0.5]]}],
              RowBox[{"DateObject", "[", 
                RowBox[{
                  RowBox[{"{", 
                    RowBox[{"1987", ",", "10", ",", "29"}], "}"}], ",", 
                  RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                  RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                "]"}]},
             "DateObject",
             Editable->False], ",", 
            TemplateBox[{RowBox[{"\"Fri 30 Oct 1987 12:00:00\"", 
                StyleBox["\"CST\"", FontColor -> GrayLevel[0.5]]}],
              RowBox[{"DateObject", "[", 
                RowBox[{
                  RowBox[{"{", 
                    RowBox[{"1987", ",", "10", ",", "30"}], "}"}], ",", 
                  RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                  RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                "]"}]},
             "DateObject",
             Editable->False], ",", 
            TemplateBox[{RowBox[{"\"Sat 31 Oct 1987 12:00:00\"", 
                StyleBox["\"CST\"", FontColor -> GrayLevel[0.5]]}],
              RowBox[{"DateObject", "[", 
                RowBox[{
                  RowBox[{"{", 
                    RowBox[{"1987", ",", "10", ",", "31"}], "}"}], ",", 
                  RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                  RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                "]"}]},
             "DateObject",
             Editable->False], ",", 
            TemplateBox[{RowBox[{"\"Thu 1 Oct 1987 12:00:00\"", 
                StyleBox["\"CDT\"", FontColor -> GrayLevel[0.5]]}],
              RowBox[{"DateObject", "[", 
                RowBox[{
                  RowBox[{"{", 
                    RowBox[{"1987", ",", "10", ",", "1"}], "}"}], ",", 
                  RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                  RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                "]"}]},
             "DateObject",
             Editable->False], ",", 
            TemplateBox[{RowBox[{"\"Fri 2 Oct 1987 12:00:00\"", 
                StyleBox["\"CDT\"", FontColor -> GrayLevel[0.5]]}],
              RowBox[{"DateObject", "[", 
                RowBox[{
                  RowBox[{"{", 
                    RowBox[{"1987", ",", "10", ",", "2"}], "}"}], ",", 
                  RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                  RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                "]"}]},
             "DateObject",
             Editable->False], ",", 
            TemplateBox[{RowBox[{"\"Sat 3 Oct 1987 12:00:00\"", 
                StyleBox["\"CDT\"", FontColor -> GrayLevel[0.5]]}],
              RowBox[{"DateObject", "[", 
                RowBox[{
                  RowBox[{"{", 
                    RowBox[{"1987", ",", "10", ",", "3"}], "}"}], ",", 
                  RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                  RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                "]"}]},
             "DateObject",
             Editable->False], ",", 
            TemplateBox[{RowBox[{"\"Sun 4 Oct 1987 12:00:00\"", 
                StyleBox["\"CDT\"", FontColor -> GrayLevel[0.5]]}],
              RowBox[{"DateObject", "[", 
                RowBox[{
                  RowBox[{"{", 
                    RowBox[{"1987", ",", "10", ",", "4"}], "}"}], ",", 
                  RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                  RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                "]"}]},
             "DateObject",
             Editable->False], ",", 
            TemplateBox[{RowBox[{"\"Mon 5 Oct 1987 12:00:00\"", 
                StyleBox["\"CDT\"", FontColor -> GrayLevel[0.5]]}],
              RowBox[{"DateObject", "[", 
                RowBox[{
                  RowBox[{"{", 
                    RowBox[{"1987", ",", "10", ",", "5"}], "}"}], ",", 
                  RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                  RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                "]"}]},
             "DateObject",
             Editable->False], ",", 
            TemplateBox[{RowBox[{"\"Tue 6 Oct 1987 12:00:00\"", 
                StyleBox["\"CDT\"", FontColor -> GrayLevel[0.5]]}],
              RowBox[{"DateObject", "[", 
                RowBox[{
                  RowBox[{"{", 
                    RowBox[{"1987", ",", "10", ",", "6"}], "}"}], ",", 
                  RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                  RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                "]"}]},
             "DateObject",
             Editable->False], ",", 
            TemplateBox[{RowBox[{"\"Wed 7 Oct 1987 12:00:00\"", 
                StyleBox["\"CDT\"", FontColor -> GrayLevel[0.5]]}],
              RowBox[{"DateObject", "[", 
                RowBox[{
                  RowBox[{"{", 
                    RowBox[{"1987", ",", "10", ",", "7"}], "}"}], ",", 
                  RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                  RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                "]"}]},
             "DateObject",
             Editable->False], ",", 
            TemplateBox[{"776"},
             "OutputSizeLimit`Skeleton",
             DisplayFunction->(FrameBox[
               
               RowBox[{
                "\" \[CenterEllipsis]\"", #, "\"\[CenterEllipsis] \""}], 
               Background -> GrayLevel[0.75], 
               BaseStyle -> {
                "Deploy", FontColor -> GrayLevel[1], FontSize -> Smaller, 
                 ShowStringCharacters -> False}, BaselinePosition -> Baseline,
                ContentPadding -> False, FrameMargins -> {{1, 1}, {1, 2}}, 
               FrameStyle -> None, RoundingRadius -> 7]& )], ",", 
            TemplateBox[{RowBox[{"\"Mon 14 Dec 2009 12:00:00\"", 
                StyleBox["\"CST\"", FontColor -> GrayLevel[0.5]]}],
              RowBox[{"DateObject", "[", 
                RowBox[{
                  RowBox[{"{", 
                    RowBox[{"2009", ",", "12", ",", "14"}], "}"}], ",", 
                  RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                  RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                "]"}]},
             "DateObject",
             Editable->False], ",", 
            TemplateBox[{RowBox[{"\"Tue 15 Dec 2009 12:00:00\"", 
                StyleBox["\"CST\"", FontColor -> GrayLevel[0.5]]}],
              RowBox[{"DateObject", "[", 
                RowBox[{
                  RowBox[{"{", 
                    RowBox[{"2009", ",", "12", ",", "15"}], "}"}], ",", 
                  RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                  RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                "]"}]},
             "DateObject",
             Editable->False], ",", 
            TemplateBox[{RowBox[{"\"Wed 16 Dec 2009 12:00:00\"", 
                StyleBox["\"CST\"", FontColor -> GrayLevel[0.5]]}],
              RowBox[{"DateObject", "[", 
                RowBox[{
                  RowBox[{"{", 
                    RowBox[{"2009", ",", "12", ",", "16"}], "}"}], ",", 
                  RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                  RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                "]"}]},
             "DateObject",
             Editable->False], ",", 
            TemplateBox[{RowBox[{"\"Thu 17 Dec 2009 12:00:00\"", 
                StyleBox["\"CST\"", FontColor -> GrayLevel[0.5]]}],
              RowBox[{"DateObject", "[", 
                RowBox[{
                  RowBox[{"{", 
                    RowBox[{"2009", ",", "12", ",", "17"}], "}"}], ",", 
                  RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                  RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                "]"}]},
             "DateObject",
             Editable->False], ",", 
            TemplateBox[{RowBox[{"\"Fri 18 Dec 2009 12:00:00\"", 
                StyleBox["\"CST\"", FontColor -> GrayLevel[0.5]]}],
              RowBox[{"DateObject", "[", 
                RowBox[{
                  RowBox[{"{", 
                    RowBox[{"2009", ",", "12", ",", "18"}], "}"}], ",", 
                  RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                  RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                "]"}]},
             "DateObject",
             Editable->False], ",", 
            TemplateBox[{RowBox[{"\"Sat 19 Dec 2009 12:00:00\"", 
                StyleBox["\"CST\"", FontColor -> GrayLevel[0.5]]}],
              RowBox[{"DateObject", "[", 
                RowBox[{
                  RowBox[{"{", 
                    RowBox[{"2009", ",", "12", ",", "19"}], "}"}], ",", 
                  RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                  RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                "]"}]},
             "DateObject",
             Editable->False], ",", 
            TemplateBox[{RowBox[{"\"Sun 20 Dec 2009 12:00:00\"", 
                StyleBox["\"CST\"", FontColor -> GrayLevel[0.5]]}],
              RowBox[{"DateObject", "[", 
                RowBox[{
                  RowBox[{"{", 
                    RowBox[{"2009", ",", "12", ",", "20"}], "}"}], ",", 
                  RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                  RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                "]"}]},
             "DateObject",
             Editable->False], ",", 
            TemplateBox[{RowBox[{"\"Mon 21 Dec 2009 12:00:00\"", 
                StyleBox["\"CST\"", FontColor -> GrayLevel[0.5]]}],
              RowBox[{"DateObject", "[", 
                RowBox[{
                  RowBox[{"{", 
                    RowBox[{"2009", ",", "12", ",", "21"}], "}"}], ",", 
                  RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                  RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                "]"}]},
             "DateObject",
             Editable->False], ",", 
            TemplateBox[{RowBox[{"\"Tue 22 Dec 2009 12:00:00\"", 
                StyleBox["\"CST\"", FontColor -> GrayLevel[0.5]]}],
              RowBox[{"DateObject", "[", 
                RowBox[{
                  RowBox[{"{", 
                    RowBox[{"2009", ",", "12", ",", "22"}], "}"}], ",", 
                  RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                  RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                "]"}]},
             "DateObject",
             Editable->False], ",", 
            TemplateBox[{RowBox[{"\"Wed 23 Dec 2009 12:00:00\"", 
                StyleBox["\"CST\"", FontColor -> GrayLevel[0.5]]}],
              RowBox[{"DateObject", "[", 
                RowBox[{
                  RowBox[{"{", 
                    RowBox[{"2009", ",", "12", ",", "23"}], "}"}], ",", 
                  RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                  RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                "]"}]},
             "DateObject",
             Editable->False], ",", 
            TemplateBox[{RowBox[{"\"Thu 24 Dec 2009 12:00:00\"", 
                StyleBox["\"CST\"", FontColor -> GrayLevel[0.5]]}],
              RowBox[{"DateObject", "[", 
                RowBox[{
                  RowBox[{"{", 
                    RowBox[{"2009", ",", "12", ",", "24"}], "}"}], ",", 
                  RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                  RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                "]"}]},
             "DateObject",
             Editable->False], ",", 
            TemplateBox[{RowBox[{"\"Fri 25 Dec 2009 12:00:00\"", 
                StyleBox["\"CST\"", FontColor -> GrayLevel[0.5]]}],
              RowBox[{"DateObject", "[", 
                RowBox[{
                  RowBox[{"{", 
                    RowBox[{"2009", ",", "12", ",", "25"}], "}"}], ",", 
                  RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                  RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                "]"}]},
             "DateObject",
             Editable->False], ",", 
            TemplateBox[{RowBox[{"\"Sat 26 Dec 2009 12:00:00\"", 
                StyleBox["\"CST\"", FontColor -> GrayLevel[0.5]]}],
              RowBox[{"DateObject", "[", 
                RowBox[{
                  RowBox[{"{", 
                    RowBox[{"2009", ",", "12", ",", "26"}], "}"}], ",", 
                  RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                  RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                "]"}]},
             "DateObject",
             Editable->False], ",", 
            TemplateBox[{RowBox[{"\"Sun 27 Dec 2009 12:00:00\"", 
                StyleBox["\"CST\"", FontColor -> GrayLevel[0.5]]}],
              RowBox[{"DateObject", "[", 
                RowBox[{
                  RowBox[{"{", 
                    RowBox[{"2009", ",", "12", ",", "27"}], "}"}], ",", 
                  RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                  RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                "]"}]},
             "DateObject",
             Editable->False], ",", 
            TemplateBox[{RowBox[{"\"Mon 28 Dec 2009 12:00:00\"", 
                StyleBox["\"CST\"", FontColor -> GrayLevel[0.5]]}],
              RowBox[{"DateObject", "[", 
                RowBox[{
                  RowBox[{"{", 
                    RowBox[{"2009", ",", "12", ",", "28"}], "}"}], ",", 
                  RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                  RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                "]"}]},
             "DateObject",
             Editable->False], ",", 
            TemplateBox[{RowBox[{"\"Tue 29 Dec 2009 12:00:00\"", 
                StyleBox["\"CST\"", FontColor -> GrayLevel[0.5]]}],
              RowBox[{"DateObject", "[", 
                RowBox[{
                  RowBox[{"{", 
                    RowBox[{"2009", ",", "12", ",", "29"}], "}"}], ",", 
                  RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                  RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                "]"}]},
             "DateObject",
             Editable->False], ",", 
            TemplateBox[{RowBox[{"\"Wed 30 Dec 2009 12:00:00\"", 
                StyleBox["\"CST\"", FontColor -> GrayLevel[0.5]]}],
              RowBox[{"DateObject", "[", 
                RowBox[{
                  RowBox[{"{", 
                    RowBox[{"2009", ",", "12", ",", "30"}], "}"}], ",", 
                  RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                  RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                "]"}]},
             "DateObject",
             Editable->False], ",", 
            TemplateBox[{RowBox[{"\"Thu 31 Dec 2009 12:00:00\"", 
                StyleBox["\"CST\"", FontColor -> GrayLevel[0.5]]}],
              RowBox[{"DateObject", "[", 
                RowBox[{
                  RowBox[{"{", 
                    RowBox[{"2009", ",", "12", ",", "31"}], "}"}], ",", 
                  RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                  RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                "]"}]},
             "DateObject",
             Editable->False], ",", 
            TemplateBox[{RowBox[{"\"Tue 1 Dec 2009 12:00:00\"", 
                StyleBox["\"CST\"", FontColor -> GrayLevel[0.5]]}],
              RowBox[{"DateObject", "[", 
                RowBox[{
                  RowBox[{"{", 
                    RowBox[{"2009", ",", "12", ",", "1"}], "}"}], ",", 
                  RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                  RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                "]"}]},
             "DateObject",
             Editable->False], ",", 
            TemplateBox[{RowBox[{"\"Wed 2 Dec 2009 12:00:00\"", 
                StyleBox["\"CST\"", FontColor -> GrayLevel[0.5]]}],
              RowBox[{"DateObject", "[", 
                RowBox[{
                  RowBox[{"{", 
                    RowBox[{"2009", ",", "12", ",", "2"}], "}"}], ",", 
                  RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                  RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                "]"}]},
             "DateObject",
             Editable->False]}], "}"}],
          Short[#, 100]& ],
         Short[#, 5]& ],
        BaseStyle->{Deployed -> False},
        StripOnInput->False]},
      {GridBox[{
         {
          TagBox[
           TooltipBox[
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource[
                "FEStrings", "sizeBriefExplanation"], StandardForm],
               ImageSizeCache->{132., {6., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarCategory",
             StripOnInput->False],
            StyleBox[
             DynamicBox[
              ToBoxes[
               FEPrivate`FrontEndResource["FEStrings", "sizeExplanation"], 
               StandardForm]], DynamicUpdating -> True, StripOnInput -> 
             False]],
           Annotation[#, 
            Style[
             Dynamic[
              FEPrivate`FrontEndResource["FEStrings", "sizeExplanation"]], 
             DynamicUpdating -> True], "Tooltip"]& ], 
          ButtonBox[
           PaneSelectorBox[{False->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowLess"], 
                StandardForm],
               ImageSizeCache->{108., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControl",
             StripOnInput->False], True->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowLess"], 
                StandardForm],
               ImageSizeCache->{108., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControlActive",
             StripOnInput->False]}, Dynamic[
             CurrentValue["MouseOver"]],
            Alignment->Center,
            FrameMargins->0,
            ImageSize->{Automatic, 25}],
           Appearance->None,
           ButtonFunction:>OutputSizeLimit`ButtonFunction[
             Composition[OutputSizeLimit`Defer, 
              Function[{OutputSizeLimit`Dump`x$}, 
               Short[OutputSizeLimit`Dump`x$, 100]]], 5, 15167506970941007129,
              5/2],
           Enabled->True,
           Evaluator->Automatic,
           Method->"Queued"], 
          ButtonBox[
           PaneSelectorBox[{False->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowMore"], 
                StandardForm],
               ImageSizeCache->{126., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControl",
             StripOnInput->False], True->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowMore"], 
                StandardForm],
               ImageSizeCache->{126., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControlActive",
             StripOnInput->False]}, Dynamic[
             CurrentValue["MouseOver"]],
            Alignment->Center,
            FrameMargins->0,
            ImageSize->{Automatic, 25}],
           Appearance->None,
           ButtonFunction:>OutputSizeLimit`ButtonFunction[
             Composition[OutputSizeLimit`Defer, 
              Function[{OutputSizeLimit`Dump`x$}, 
               Short[OutputSizeLimit`Dump`x$, 100]]], 5, 15167506970941007129,
              5 2],
           Enabled->True,
           Evaluator->Automatic,
           Method->"Queued"], 
          ButtonBox[
           PaneSelectorBox[{False->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowAll"], 
                StandardForm],
               ImageSizeCache->{93., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControl",
             StripOnInput->False], True->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowAll"], 
                StandardForm],
               ImageSizeCache->{93., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControlActive",
             StripOnInput->False]}, Dynamic[
             CurrentValue["MouseOver"]],
            Alignment->Center,
            FrameMargins->0,
            ImageSize->{Automatic, 25}],
           Appearance->None,
           ButtonFunction:>OutputSizeLimit`ButtonFunction[
             Composition[OutputSizeLimit`Defer, 
              Function[{OutputSizeLimit`Dump`x$}, 
               Short[OutputSizeLimit`Dump`x$, 100]]], 5, 15167506970941007129,
              Infinity],
           Enabled->True,
           Evaluator->Automatic,
           Method->"Queued"], 
          ButtonBox[
           PaneSelectorBox[{False->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeChangeLimit"], 
                StandardForm],
               ImageSizeCache->{163., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControl",
             StripOnInput->False], True->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeChangeLimit"], 
                StandardForm],
               ImageSizeCache->{163., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControlActive",
             StripOnInput->False]}, Dynamic[
             CurrentValue["MouseOver"]],
            Alignment->Center,
            FrameMargins->0,
            ImageSize->{Automatic, 25}],
           Appearance->None,
           ButtonFunction:>FrontEndExecute[{
              FrontEnd`SetOptions[
              FrontEnd`$FrontEnd, 
               FrontEnd`PreferencesSettings -> {"Page" -> "Evaluation"}], 
              FrontEnd`FrontEndToken["PreferencesDialog"]}],
           Evaluator->None,
           Method->"Preemptive"]}
        },
        AutoDelete->False,
        FrameStyle->GrayLevel[0.85],
        GridBoxDividers->{"Columns" -> {False, {True}}},
        GridBoxItemSize->{"Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}},
        GridBoxSpacings->{"Columns" -> {{2}}}]}
     },
     DefaultBaseStyle->"Column",
     GridBoxAlignment->{
      "Columns" -> {{Left}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
       "RowsIndexed" -> {}},
     GridBoxDividers->{
      "Columns" -> {{False}}, "ColumnsIndexed" -> {}, "Rows" -> {{False}}, 
       "RowsIndexed" -> {}},
     GridBoxItemSize->{
      "Columns" -> {{Automatic}}, "ColumnsIndexed" -> {}, "Rows" -> {{1.}}, 
       "RowsIndexed" -> {}},
     GridBoxSpacings->{"Columns" -> {
         Offset[0.27999999999999997`], {
          Offset[0.5599999999999999]}, 
         Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
         Offset[0.2], 
         Offset[1.2], {
          Offset[0.4]}, 
         Offset[0.2]}, "RowsIndexed" -> {}}],
    Background->RGBColor[0.9657, 0.9753, 0.9802],
    FrameMargins->{{12, 12}, {0, 15}},
    FrameStyle->GrayLevel[0.85],
    RoundingRadius->5,
    StripOnInput->False],
   Deploy,
   DefaultBaseStyle->"Deploy"],
  Out[5]]], "Output",
 CellChangeTimes->{3.7097707673386593`*^9, 3.7097708441774035`*^9, 
  3.7097728060513935`*^9, 3.709775894587275*^9, 3.7097759743076096`*^9, 
  3.709776015176267*^9, 3.7097772764559064`*^9, 3.7097844235083237`*^9, 
  3.7098172529670773`*^9, 3.7098279031555457`*^9, 3.709906407832163*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Length", "[", "dates", "]"}]], "Input",
 CellChangeTimes->{{3.709769435014352*^9, 3.7097694397843294`*^9}}],

Cell[BoxData["8128"], "Output",
 CellChangeTimes->{3.709769440353445*^9, 3.7097707366773767`*^9, 
  3.7097727997491026`*^9, 3.7097758946362853`*^9, 3.709777276506916*^9, 
  3.7097844236333485`*^9, 3.709817253107106*^9, 3.7098279032185593`*^9, 
  3.7098502705092573`*^9, 3.7099064124291134`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"flightMerRx", "=", 
   RowBox[{
    RowBox[{
     RowBox[{"PlanetData", "[", 
      RowBox[{
       TemplateBox[{"\"Mercury\"",RowBox[{"Entity", "[", 
           RowBox[{"\"Planet\"", ",", "\"Mercury\""}], "]"}],
         "\"Entity[\\\"Planet\\\", \\\"Mercury\\\"]\"","\"planet\""},
        "Entity"], ",", 
       RowBox[{"EntityProperty", "[", 
        RowBox[{
        "\"\<Planet\>\"", ",", "\"\<RetrogradeApparentMotionQuery\>\"", ",", 
         RowBox[{"{", 
          RowBox[{"\"\<Date\>\"", "\[Rule]", "#"}], "}"}]}], "]"}]}], "]"}], 
     "&"}], "/@", "dates"}]}], ";"}]], "Input",
 CellChangeTimes->{{3.709754591337324*^9, 3.7097545993799725`*^9}, {
  3.7097546583700604`*^9, 3.7097546629447217`*^9}}],

Cell[BoxData[
 TemplateBox[{
  "EntityValue","nodat",
   "\"Unable to download data. Some or all results may be missing.\"",2,11,2,
   15166981765557368854,"Kernel 2"},
  "MessageTemplate"]], "Message", "MSG",
 CellChangeTimes->{3.7098281832014165`*^9, 3.7098305870642266`*^9}],

Cell[BoxData[
 TemplateBox[{
  "EntityValue","nodat",
   "\"Unable to download data. Some or all results may be missing.\"",2,11,3,
   15166981765557368854,"Kernel 2"},
  "MessageTemplate"]], "Message", "MSG",
 CellChangeTimes->{3.7098281832014165`*^9, 3.709834013945055*^9}],

Cell[BoxData[
 TemplateBox[{
  "EntityValue","nodat",
   "\"Unable to download data. Some or all results may be missing.\"",2,11,4,
   15166981765557368854,"Kernel 2"},
  "MessageTemplate"]], "Message", "MSG",
 CellChangeTimes->{3.7098281832014165`*^9, 3.709834015336342*^9}],

Cell[BoxData[
 TemplateBox[{
  "General","stop",
   "\"Further output of \\!\\(\\*StyleBox[RowBox[{\\\"EntityValue\\\", \\\"::\
\\\", \\\"nodat\\\"}], \\\"MessageName\\\"]\\) will be suppressed during this \
calculation.\"",2,11,5,15166981765557368854,"Kernel 2"},
  "MessageTemplate"]], "Message", "MSG",
 CellChangeTimes->{3.7098281832014165`*^9, 3.709834015533383*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Export", "[", 
  RowBox[{"\"\<22 yrs MerRx.mx\>\"", ",", "flightMerRx"}], "]"}]], "Input",
 CellChangeTimes->{{3.709754669031969*^9, 3.7097547123238387`*^9}, {
   3.709777084995473*^9, 3.709777087568*^9}, {3.709813989185218*^9, 
   3.709813989357252*^9}, 3.7098484940211463`*^9}],

Cell[BoxData["\<\"22 yrs MerRx.mx\"\>"], "Output",
 CellChangeTimes->{3.7098484946192713`*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"flightMerRx", "=", 
   RowBox[{"Import", "[", "\"\<22 yrs MerRx.mx\>\"", "]"}]}], ";"}]], "Input",
 CellChangeTimes->{{3.7098494417930045`*^9, 3.7098494624652753`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Length", "[", "flightMerRx", "]"}]], "Input",
 CellChangeTimes->{{3.7098502820036325`*^9, 3.7098502884189625`*^9}}],

Cell[BoxData["8128"], "Output",
 CellChangeTimes->{3.709850288917143*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"DateListPlot", "[", 
  RowBox[{
   RowBox[{"Transpose", "[", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"Delete", "[", 
       RowBox[{"dates", ",", "pos"}], "]"}], ",", 
      RowBox[{"Delete", "[", 
       RowBox[{
        RowBox[{"years0", "[", 
         RowBox[{"[", 
          RowBox[{"All", ",", "2"}], "]"}], "]"}], ",", "pos"}], "]"}]}], 
     "}"}], "]"}], ",", 
   RowBox[{"PlotRange", "\[Rule]", "All"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.709776899338133*^9, 3.7097769383551254`*^9}, 
   3.70977697737212*^9, {3.7097811775118403`*^9, 3.70978118277592*^9}, {
   3.7098433344069147`*^9, 3.709843362165651*^9}}],

Cell[BoxData[
 GraphicsBox[{{}, {{}, {}, 
    {RGBColor[0.368417, 0.506779, 0.709798], PointSize[0.002777777777777778], 
     AbsoluteThickness[1.6], LineBox[CompressedData["
1:eJxU3Ak0ld3bP3BDOKGUMqQkmU5pUIRKOA2mkgZESpLQpNnUYAwNCkUqJUPm
SjI2EBVCI49IkzgyRLNI6f917fdd6//2e9b6rc86zjn3nq6993Xvcys771y1
WUhAQKBISUBg6P/xLyQmoZU3ffe9wQP6R4zg/HvwsdsyCRHj9w+5rRNeHX59
vev8A0OWlUls5V2rHftHY4L/kE2M4PeqY/5E7wscsucW+LmCZsXtep8hp5we
+vs/JRe3nNk85Pq7Q3/vuXDkxPhtQxZth7mp51fmxuwcsq50Uisvy62Ie3XP
viG7GsCZYhXV85ZuHXKMKzyYYjouYNa5IZdHwOa/7OVfcQ4PufcW/Piy0ASh
o3uGrM6H37V9q03v2jJkW6nkVt7yoNnnJQfp80PmwoVHX2n5DjtE5d8EH8op
/tfb5kHlD4cHuFlHJfleVP5C+KnCw4KXNlRekw9wb4am5HFpKq+n5JVW3tni
WuGXLzyp/LpwglxWsbgpvb/eCT5QoixyrpS+v/IE3JU6faV4MdVnXz4cO9z+
mkUx/T23GZYqv/4uU5A+z04ipZX3SsZZtVolbMhhc2CNlZ+ef4ym9ircAOuM
l97xzm3vkNuPwur3l7zRUg4esnwufNdihtvPhoAhm72FrWNiRAIfUPt6c1Jb
eXJvZHfnR/sOOW02PHt5lPLoOvr8hnVw6vVFB0Tqw4fMCYV3WmiPq5Gh9+vf
gHVq9ab35tHfuzfBfiUuxtEHdg85ViQN31dnZCzvS+1TOROeaCIvmunjR+W3
hw0Xcnsc71yn8gfDH3a8VJ1mf5HKfw1+4a/ArdKg+glrgKVV7y6aFUvlKRRK
b+VVPwns/VeUReWfBkdqnDm3+PF5Kv8aWKDK/Ns8kaNU/gB4/gNRw036VF7v
TLhPRch36n6q77T/4KCT67euYf2/4R9sm1Di7fGR2oszNaOVt1j6s+b59XT9
+tZwlWTmRiMxet39MLx8//a6tGB6f2waHKni1avPoe+rfAEfTW1RHT/yOJX/
D8wJcTnu/oRe52pktvIcdw8anq2l99uthMvyR45R6aHXww7AjSrJQoOz6fsK
r8A72q0sZ+8NofI/hYPK064V/0eW/w2PfmbX6DmDPs9MNauV1+LY7J95K47K
vxxW2syZrz1An5fmDW/LU70oujaUyp8It76utuieQf2f8xh+ICkaYvTvGJX/
F+wlNGWmFOtv7spXW3k24ofKI3Xp72OXwiqzo3fs8aL2qNwPn7kzpe2oKr2/
Lx6uGFf/9UhrNJW/Cr6bZPpn8418Kv8PeG3Z6NtFtvep/BOvtfKOvP2UuUDl
DJXfDLbPuH7DYBTFg/Y9cLDxnpBNBaz8F+GMSQefKryg9jKrgL+ZnlT9mBdE
5f8KK7W9WalkT04bfx39ve31rNuXaXw3LIEzBPpTgxqpvTi7YK9M1U/3j8ZQ
+c/DD4RsbReOiqXyP4CtpYJsb86l74/tgUu/7tFwP5NL5ZfPbuXNatz95ZXW
bSr/QlhlklhvjFYilX8HPGztreRXO6l+7M7CDtPVNqafpf4bVgofd311SUWd
6ruwC1aSnhE3XZH6b7vMjVbepsPt5ty/1N7yxrDGr0urHe5dovJvhZ/HFE2Z
dJLGs/cZ+FSu4/w1a25Q+YvhmU8O11UH11D52+EEBU6YzuNyKv+YnFbe98ZZ
H+8dpfGmvwA+tdRIrKP7ApXfDfbfdP7RyMXUnrGRsHFj+4NDE05T+W/Dbx+t
sD4bEUHl58N12n9ebvpK7ccddbOVF229NdRMn+rPbh5ssFtfTdiRHOYC9xkb
V89Wps8vPAnnH43V3xdeSuUvhGNarcbVLsmk8rfAGy0UHFQF0qj8I3LRn2Uq
nIY50PV468FtWRPnC+1j/X8jPFbP/OXPMzQ/NByHZ+z7pfgtkczJh+2lfP+K
GaRS+d/Dn9ZqjczfQ/3BXTwP/XnRWQ/b01SeWB3Ya67xvUJxao9KR/jnzs5L
uk70el8YHBQ+t8l+DsV37k1449Q3Srdl6Xrs3sCuSWc8ymbR54eJ5aM+cspU
NA2iqPyzYO9t35Xa5tN4bneAP3ULTTF0peuTD4HvdQWO2JgbSeXPhmOax690
ekH2fgX7XHnA1Rmg+Jo2rADxtzD95Lsqup6GGfCce6vne7yheMuxh4f1TOPc
fUz9VT8InnR5pcMDtQIq/1VYKmpM2rMXV6n8L2HHLxx7qxHUfpWChajfp39v
6mmy+U8TDv5rO35RLdUv1xae4X7wyPtuih92/rDj95dB0nn0elgGbLX1hmCY
HbmwDubsqHuhtZ8+r30QflfkM1g1ntY38lOKWnlx/o1anVL0utlq+F1pVv1/
62k8eR+C5dsvfI7l0PelpcIfg7xqDNLo7xuew/VeTasftrD2/wNv3f77sLQt
zXf66rdaeZJTy6bPGU/lc18B/1FaZS1gSfUX6wub3NB2DjKh+FGZDDvskB2U
CTpB5X8CR2q1t3/0puvh9sN6FXnmI6bT9dup3G7ldUuOXOUy5ySV3xJOHeUu
HpDC4r8XLDe8SPnIVGq/9gT4sZp+yrw8Nv/XwAI+WSfX8Q9S+Xvhm69/73n4
mvqf96Q7+Pu78zL3eLDyW8DPwl2P7dZl7b8PPrqp/NQSC28qfzw8dmeTynwJ
Wr/pP4Jbk+yyztnS+s79O8xZfuNP4Upav8Uq3sV6c8O/i6bJrP+bwg7KW05t
uLCLyr8bNvVds+mgkQuVPw7OfPg8V16A1o925XD0IfcEhZ/bqfxf4BqjmY5R
12m9VqhQ3Mozy3X5ICFKbl8Mn59my09X30Hl3wnbrv1Y38Jh659zcPeuC9aq
PBb/78PDFhk/nTSZrietG/6xZOK/YXNpvdIgV4L4kOAvMMeBzf8L4TnXRo4W
D2Ptvx2u3fVjTl4cvd89Br4pbnRkTuIpKv+9kv+NXxSfKzvhU9znmp9bab7Q
HXMP8Wxq/IYn62n95roAdlGWsK9c6DrkGLd7/2f9XB4JL5t5pseilvpP7204
SUo4O0yb3q/eBvv3PF4htdt5yLajSrEevHM4INqVHDIPTpfQrFgmvHHI+S6w
08PhU3xiaL3WdhI2dhb0+q1C3y9bBJf8J/Z+QYDbkE1a4M3xllqNbL3pOaKs
lfeoeOm0aZFU/hQ9eIZHXOv7AHL9Rnhypa++6hWqb9ETcD3HVVG7muZj3XzY
IvaX4chP1D9c38NHt9+pkZ5N9R8jfr+VZ/RC8Z3qfHK5DtzzaL/SbGuq/15H
+Pkt7ZXT9tB8on4U1s9df2HeReovtjfhlot/nJ600PtD3sBpdQ+GFVhSf84X
e4D1fGWaYYoPladtFhzletjgjQf1X9l1sFdVnYa8DCt/CNx20H9d4Akqn2c2
rNEh053YS/0t5RUc3eG6UCyQ+lv9sIeYD3SiXVxD11P5Z8IxEUoeD9OpPXTt
4dfXYt0l8qj/ugbBb57VdRqfpOuLuTpk6cne62fQ95W/hKcJb667tJDWB72C
5RgPN7lCwl2s/NPgbX7j5FQ+UnltbWGvjWJFsbeofCH+8OXIzZKTjlH75mfA
b132q/CHUfna6uC6sD/259Oo/mT/wX/f5GheEqf3m0ypaOVtuJ59YJYixSvP
1XDg1W3bmwIoXqUcgveqrl8nFkvxpj4Vnuyv8/jFTlq/ir6AuSI3cko1qLy6
f+CbAlY3MkJpv+aqXon29kysbatj+78V8OUs+x1yMhRfy33h5Rsj326YSuOr
Nxme5jdXLn8/9Qf1p7BTwgljfX9bKn8/XH82+j/XNDMqv8oj7D9iP99Kcnai
8lvCP4ZPmOU+lvpnmxes+U0qSLaS+qdsInzV943orljav5nUwNUT78pKvaX2
9eyFdS4m908wovenTKpq5anGakjf/0T1W28BB1wIqZqeuYnKvx9eaadRxYt3
pPLHw72B3xKVjlP9uz6C9yhMvKfzYxWV/zs8NqRVNX0+9a9yxepWnuxZcWVD
Lv19rymcZ3FmUrvMOir/HrjFs9ngoC99vm0cvPT2Em/fSnMqf/mQRdJs/021
ofJ/gfnFM01mnqLra1OowXh+kSkpfHINlX8J/K7x+Wfz+3ZU/p2wc2SWzC9t
6s+e5+Af6TL/XFQofqfch9WOlMR5FlL/ru+G2/P0PEaIUnwRlX+M+fPE6zPD
Zam9dRfC6/Si7+tvpfZ23Q7PPhqnqpxB3xcTA5ukDJvj8mc1lf8eHKU9Z9EH
C4qHvZ2wyuv0yknnKZ6pyzzB+kcmImtVvzuV3wi+NNunxyCM6itkC/xSxjwz
S4T6d/5puPh63vK3yqz8d+G9mREOSjrWVP52ODnXSL72L7WnifRTrM9CE5S2
GVJ5PQ1ghaLZy6Z40eeluMLXjrg5+v1YSeWPGHp9zY59DytpPhO9DU930bQq
a6fP0+XDrpx9FcKlrP9LPWvlCS317a+VZf1/Luz26GmCyW02/jfBb/uve3ke
pfL1hsOlVU5BbvdZ/qMQXhHxUf6BJYt/H+Cm5dar9xnT+AiRfI75RbHELXcO
XU++Ljw6b2zHpHSW/3GCQ8fKrElRo/4sexz+6qn3faIlrRdM8mCxftN40Q9U
/57vYIO2C4aN8Wz8D3/Ryuv6tiLy0RuKT/Xa8N/d7SXqtTR/ijrCW87OL89Z
RdevGwaPWrl/d2Yn7bdcc+D6D4KvPe5QfIh5Dd/5a//S7msylV+0tpVn+S/8
dxGH1q+9WrBqSuOUrwk0XtUd4BMHNnzOimflPwJfD+mqdf1G4yfkOvyuIK74
Uw+1d34jXLxpq9PnWIpPbcJ1rbx/tjMf7t1E6yHZGbCTwfKHR1MpHpvYwVvz
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
BW6QqvHLCKP1tMkzeH/Xrscx/VT/nr/hmvstrs3L2PkvVUM+r/K1xXPBWsov
1C+Hh6vbHApgv8cS9YG/T2lbr7Oe+qNuEvzRdnDB5QT6PtfHsMpJud/9NdQ+
Mb/gE1ffuE/XZflPZSM+r6Qu4MbnpbQ+6F0Kp42OOaCwkcavuifscOJbyrgQ
Kp/tZbg3tKpy2XiKnyFV8Kzm31GvJWn/lf8DthuYMxgiw86/TjRGvBSrmrHO
mrW/OWzqUufwZh/FN5O9sKVF9+DzcJb/uAh3S8tlfUug8ZlSAXMaVm1zX8PO
v32F29/XtS8zos8TncDj8ySdXCRs77PzvybwCBndW1WSbP+3C5bPGLVnyybK
R8Sch7PM7SxW+tH1lj+AixV8Dk1QYudfe+D6YpN/zxZR/1UftxD1mXkgOfoR
jR/bRfDbqICiOBHW/jvggkv1xZMOkfPPwmv0JnL0VFn5S+F7nwRvitXQfCr7
CXYfyAif84vitYnsIj7v+cLSLsnpLP9tDG/V/U+sop3t/7fCpXNF+9td6fX6
M/C9Z2HzTCNZ+UvgnaeS8hadYudfO2BH00Waho9pPLmOWcznbZ5fqLv3H513
ilkAS+9aczzwCxv/brCtnlLHfZYv6Y2EMxXrMrxXs/5/BzaYO29L5kTqf7Zt
8MSHC4UdjGg9FTJqCZ+33XnePaf7ND/mz4Ob2+Ptvtiy+OcCf9Sc09Aqz9r/
FHzxXNAyG0kW/4rgimIzicERrP1b4Nkxggb+Z6i+UkaY8HnRk3L3vXBh+S89
2Cr59kZvlj8QdYaXvzCt2sPWF7on4Jvxyj+LhFn/z4fXjH9VU/CF+nfMe5P/
s18vFzdF+7Wqq917Q/XdqwNfFF01rWQ/zVfqG2CXxnCx1KPs/O9RuOKdDl/G
kJ3/vQnPEfqy99ddas/8N3BTiyhn9zkqX5uYGeaHFqt1otOpv8vOhp9eNt/b
cJfFv3Xw9S/i+I/2r54hcArXrC4vmd3/yYbXaWobz2bnD+tfwTVbNi/QKmTn
n0XMMV5/OL7y6aH61p0Jf3kw/+b1YfR+V3vYRSPOqiOOxb8gePRxn8GsUdS+
5VfhqPpXP36MoOvrfQkrf92cWy7H8l9CFliPS/LHZW+m9ZftNLh6+lSRw3G0
/guxhZ1TNcr+E2f5f3/Y7N9Xj+/H2PnvDDiy/3nf8RG0H5D9Dz7c5j7m3jQa
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
/j5Y3thRS7CTPf/5ErzF8tRg0wGW/6uET7Zdu6UzksX/b7CB0vEDFuz5IH0T
0vi8aPHo4tcz2fOvTeGLJi3rjV9Q+ex2w3Ifd7iGnqB8WNgF+MWYCQtKn7Pn
Pz2EbXcIB4yWY7//+Jw2dH8wp2VuNHv+jUI6+vsJu/JnM+l6zRbDaV/dlmrE
0Pzs7QH/Ev0vZrIv3R9Ji4Xl2t8ZzvtD9ddQNvT3S9TOaRiw3/90D3nWF4FH
I2i86stlID69Pr5Jvovlf3mwku6ft8OsaDzFboNLxD9UfF1Pr1dGw1aTTJeU
LKXr6yuBPQ8OC70lxZ5/0wkv73I4JGrH8t9jM9F/ZKYdGHxI66EwQ1giONIz
y5iup9Ad3vS14Uq0C81n7VFwtILt6JBK6q/yd+Gm+J5X8T10HsPsIzzjhLRK
/Q1aP3iPzsL6TLreONGDPf98Pvy47XaV4gDtFxs2w1mDgocWj6P65UTAC7RK
w58Ls+f/3ILvFq+etnGAxot7KyyR1rN+pjrVZ+zIq3zesEzFgtUDtJ6o1Ifv
nkr4KJzGzj87w9L6/albhdj933A4jxPyfjJ7vqFdAWy/027zxGe03whrhtv7
1321TKHXCyWuYT3VfW+t+QNaD7fPgSc/Fxt4+IPqR94JjugKdazeytY/x+B3
q94cWKzP8r+5cJW/ct3bnXQ+Je0tHPltbtdsXVqvN3Cu83m1YmYFBex8B0f7
+v+e96PxpL8ePu56Rtn0Hzv/HQp3fZY5ucGd+k/sDdiy+L8gc7Z/rmyCm3ud
tNSOUX/oE8nG/OrXvG/4Mvb8by1416/hG498pnyR3VrYPDh3QYkhO/8dDF/t
TFiRGMjm/2twznyDA7Xm7P5/Azz1m71e7GRan8sL38B+Z86TGUfD2f5PEz6y
KCrqZBl7/ofNkO2jeG5SbP3rB7tN2XUhw539/jUDjooOfRScxM6/1cFW0xZ+
D4pj578HYfG+BVozrOn7U7g5WH8MnxbxfTJdf/0qWKL7cU/kGLb+PQSvcHbe
P4I9b0Q3FZ4kONzMWIjlf57D0+3/M+IY0vwaMwCn7lcXW8vyT+VqN/k8XVu7
2nYDyuf0WsE7lWs59lPY8y984XbLOZlu7PfttsnwKHMZryPs9xQhT+B9E7Vc
Mp6y33/3wUlVX6r4kuz89+RcPu/jBr079yJZ/sMSdgmKn72zlr7PxAs+d22j
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
/9bD+1ce+CuiR/Mf+CpbOFe0vt5PaGH3j4DZcI3TIjnDLbT+yRK+1hzyII3y
N3B94D/ZzXtD6ij+mwIn7Pc4k6tI1/svvPELr+aV/TTfeWZVCydU94vonTh2
/evWwt/TTCbkzmTzu4SOwgZPntW0OTFrJMFew02TVf6w/IiO1bD7700Lt0ux
1yN/w/Pt1XRXr2AuVnrRwjm4PzLtbyVbb9y3BjadKV6c8IbNT1Q6BIdsj6z8
UseOzzIBHvXLbMnPKhrvqII3/XQ+HCjEynfWICyvHyKnH8Lab+60ly0cE8uE
UEWaTythCj+bfMGjQZfi3d7wiWtzFifspHz/V2E3gY1Wb/jY9yVWwJmjV4uG
nKb9Hvvg9K6VCjH3Kd+fQjXq25u7Dob/6e+tgh8OdY5Yxkf5vvbDcp8S53uu
pXjXFXj5JK1R1yaz9jawHN7xTLl5zwDrL2X3wpJPuiSedNF+b3KvWjhFu7lx
R0VovftKWOVZQ7K9JMX79sFZJzT6Iym+4X0ZPuHpGxlF862TSuFG1YMVF1so
33U3/Fv6NmfnJNb/EJataeHEDM+7qTaa5ruuqPk33ywuIUWSfb/Tbni7pUXw
PrqfRsfAke09NWkyzKVP4ceys31yT7PjH+iExbt1l/W/Y/VPWaYW/Rt9Rd5l
lD/cSh+eunjSe+5C2u/RDXaddVmv8x77vuxo+G2SmOHsjxTvLIJVXNIGzSZS
vosOeHl7X0pWA6uPRpJ1LZzydoEfC6NYeffmwMfSvF76Uz60pJ1wSsk18+r/
xDvPwz1abqceFbD6I/wI7jzNe7n9ATs/Wu1wROjKksfH2f3eacJrPK+8O1H5
XJTy3S6BS3Wt9DY0sfGtUif4V+saqSPz2H55A2dhfZ03UxSs2POVcgHcUNMT
OrKY4n1f4KSVFQMX3tB+n+PqWzjqI6uvSsrRfPfF8AKJoY28Rux6t26HI+JX
3P/UZcKOPwy+vFnD60415fvMhfk/JByNX0DzvZvhR0LNfkP6FO8Y09DCWaJj
vbeD5rPXa8GWT4xUuEcp37E9vCq5c7eEH+U7CIHFAn03nalm9d/pPuz2wdnj
Me3HGd0EZy+2+XSgnPI9j3zTwll8ZXefXSbNd1aHbQ9Mf9AuyNpn5a1w4WHz
lrq72ez4T8H8262/7HagfK8Z8OFL+w3f/mblL/sDXP03stGL5ku1Cr9t4ez8
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
D8gbrjJ6TPHfKDhjDt/lw7tpvl8RvG51wfwLjex8a32DCwaPNvHYsf6dk8Q4
Lqf71IW8TAva720ZnODkO2w3geI/LnB1zbOUPAea73cONq1x37LWhJ0P5Yfw
+/rmI6N0ab+3NjhVMCNi3G1WngLHi3M5xlmfDw/Q/uLZujA9H1O+3x3w/t35
pfFX2Xig1Fm4U3D2+LpcynedD/8YmK+cT8+v3lx44QEd4+KjlO9CbDyXox0y
vyAwjOJf2vApx8MP7iuz+V/C2+Etc/oX3NVl8UitUHh5rMbl0jtsfptTDnxY
cszVEi/2evRnuLLJW1z1CuU7Hj2By+kbvWSe0Wb2+QOacFTtrUmqbRT/t4On
3pqWXfmBlW+rYJj3TPxHP9r/MDALvrUt4+M52s8+uxG2MluVLf6b8t2KTuRy
YvduWJ1D+49JqcOWU45ZTvzEnreNbOG17Xn7VktT/CsIlsz03z1jFMU/7sGX
G7xH5W9g17f+PVx9YPvoKZRPUlhYAufz0H4RLX3K97AANshXlL8UyOqT0yY4
6ni0a5cmXf8A+Oyby/uNQ9j3l96BY37uS/ASov0O38BFc7qOe9N8bWVBSdxv
wwofDvKw/o3VXHhbXcairRY039Uatk02uO1Kf5/tD09ocPOSnkPr3W/BcnMu
tyrrsP6JVD2cWpanfdiB4l98Urg+orIbh2j9ifdsWFfzrOrjcHb/S7KEDWwW
Z/r9ZuWj3gf21L/+J5jG44VTYJPZ0/Zd+sKeP7VqYZFdOTtTjWm+619YwfXO
OfsVFP+fKY36NPzi0jhXyve7Fm74tnN43maKfxyBI/c8VXO4Tvk+kuC7MW96
k06y9t2qGhY4/TjK/TQ73sDf8Ho72wu5oaz9zVaSQX+k5+bQbkc6/jVwylHd
zLMRNN/zEFx148C+4Xa2f5xRAnz4x1CanSMbH/eugr/Yhkc25LH1G0mDcFft
n/4kZ5YvpH7aJLQn/k/0lxxl4xHCpvD31uGw1UXseLW84ZZpMveav1H85yqc
rSZg1TSV1b/oCniS1Nw8MyU2vlnaB//6LcCr84PF5wfkJ3M5998umiZXxfoX
yqtg4U0z7BbcZM9rVvv/2XfzQml/9nsD4+DU6P68Q1+esuMvg2Piwv0v9Rew
4/8JT+RbrfCC8rlLTZFFe5+0VnrSK8r3bQQrXD3qz2PC4lvee+CV+jai8jsp
/nkJ3pS9u/PIQsp3Uwy/Dn0+7/dI1v4Ld8Elox6d3h3L6rvWpCloP+dqKk3y
ZvFbJwM4WFElaOwN9nui3eGAlZH899/RfncX4LHRleHySizeN/AYtghX1R/b
ytZTKH+HT16vWy3xk5UvKyk5lH+XEUa+tP9MoB78skGpz5DWL2fvgu9tuio9
lMbqb2skXHdpV3aiLK13KISPBEj7fnhM7f9XeO2rMx/HUD5X74nyKD9Bh4OP
N7Hzn7QUPr3hXlDh2nJ2/M5wusqy7+qSRez4z8Fh12p28Oxk5UPrAbx3/y2v
qu0v2PG3wm4LbfWWiLD4ZrS4AtqLMaX5erMp34kOLF0+wcdbjeL/jvC+p7NX
HL3N7vfK4fC9Zu9nrqo03zUPtqm1lrJRovUuLXDqo46g07Npv+OxU3F+6h/7
+MdS+78I3tnuFbVpL43/OsCPpCZb7n/Czq/RGVh/69avt5+x9tg7G1bUat4c
t/ohO/5PcG1abUfDeNZ+14+ahvp6dEPEbxOWH0hYE154cayN7hwa/9gGX69/
v+1DPeV7Og2rTFt54Jcf1f9MeL2iwC1z2t+i9CP87cR0iafj2fjVgIgilxMX
mdCxaDz7fGU1OH5vzx3Ve6y9stoCJ6SHmfzOZ9czMBCe57RodMlxGv+4C6/u
dL6RrUDz/d/BCp777Y8sovn+I6ajvqu//36ch41fGM2HeU7LCyrPovE/G9ii
82oEP43PJ52Ac7buOnLwGu33mQaPMZ9f2+vLXhd+Ay9xqLs+8xS7X2sJKKF9
P9WlxFnH7DQH1hax0oh9SPv9WsHypbs3v9Kn8Q+/f7Y0CZJ8zMbLBlLhhY5i
sZMnsfZR+TXMNZOc4ujP4k9WvDO4nPCUKUI65XT9VWC7jmVnVGh8J3s93DVk
yP8+lfUPWo/BFO+ifCfJsPA1ueVHddjxGNXAnbk5Gu6HWfny/gNfGXjUss6H
9ntVVuZy6gWbP5j2svJZb6H8f88rdP87AsfrNbwR02X3F60b8LgNO6Rik9l8
QKeX8Lfm9pxbbex5OXoIXn1ya2R5KT3/Kc7kchbfNHLcS/NpNUzhouKIkhY+
9nscvWFT9Q+NoRns/hx5FeZMNku+uY/9nuIK+PTet6EO0ux89fXBXu6ed+cr
s3ikksIsLmdjisWVwTI2H8tyFZwlMX55SSc9/+6Hy9cUrHDTovkfcXB1sIoH
vxY9/5bBfUO8wmMmsPiaRA98ICJuztWdNN9pigqe7z33fOZco/3+jOD8+Lf6
03Mp38ce+JbXpJl+9ez76y7BP/uO1d0up+Mvgceqtju6rqf5Tl3wsJBBxh17
Wu89aTb6q50NxhdEab93A/i/45/u8KhZ/XPlhVm8su8CrBvydleMHSsvSk/g
NZkh91dspvne3+GOhtkPt9YyB0ipcjnnOzsLZY/Q868e3Cjju1PgNsX/d8HT
7lSLP69k9U8iCm4L4g94/ZhdD8NCOD05OtZEn+LfX+HioB2JM7/TfncT56D/
8O7J8Cza/6duKeyca8MZT/ErIRe4WHJtypXZlO/lHKwwYXhLujYd/wN4cslu
/KP5jq0w5ael+X7ic//n+blPB9aXuFi1J4jyHeyAsxMGVow5Suu9w2HtKyt1
djhQ/D8PHm/SMCZ1NcX/WuDSJRb3aoKYuWPn4fk9YNd57jCbryahDTstLFoo
bEXxPwdYY6/bavVCWu96BjZzSecNtGLXMzEbFrA4KXx9DGuf6z7BlpwJ04WW
0nr30fNRv3l6w0fX0H5fmnC4b7LDnleU730b/G5xtKyKCh3/abh4ZP8dNz/2
/uJM2GeeQuHn7ZTv/CM8MruuqmQ8u18riS7A/VntvIPjSfZ7LNXgqCexWyuC
WHkM2AKvPJbjf6mc1rsHwq4rTPcIUb5C7l14f85TWYNYmu/4Hr6l657nXUX5
vkcs5HLcI2ZwjJfTfO/5sKBE+8j4xex5OtEGTsmNO60rS/HvE7DaE4UTIo9Y
eRW6AydaWCdv3k35Xt7AU/f2vXL9Rc//Ampo3z22cVUjaL73HPhSe4vlm6OU
78IKnja2NMOpgfKd+sG+PcNbEr1Z/VW69c9T95137qF8n69hI/VVq8MoHhLA
q472OnXuo6xGmu+vAu/+NIZ3/QZWXrnrYR+eGkU/a/Y8JOED/3Fsq74+TPv9
JcOnZh04MG0h+3vPmn+ft+iiUusJynf/B74UsHvTigWsP1KnrIHnn2OvE/5y
2PUSWgvbKDiH2sbQfN8j8B//ostdVfT8ewP+qezbNzeU8j2/hHmMBeZFLGTt
VfEQvO2YQueZBlrvPV2Ty/FPsVxTvJO130pr4IsNYh07PlC+l4Owa/dDTkA6
G98MuA7XCLc5B/Sz/mpWJbxp6pSZib9YfecOwLFHVZRvtdB+d9O0cH50RV9f
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
nsuR0BghfutOITv+ZfCaA/s1HafT8bvA1+bKqI8boPnP52G+aR9X21P7ZfUQ
jgyqyfObztrHwDZ4xIp+jZEzKP47PpLLWdX6fFTNcvZ81KoLh01q48yaw54n
pZzgmGVNDqkitN/lWfhbsZ/VPVl2Przz4dielybNnux8J3FhlW/eFu+vUPkX
i0J/fYv2E6toWv+xGH7rpPpohhnLH6O1HZ60aInQrSBWH5xC4ZiWjsw06wfs
+HNg5bF97x4n0/F/huNjVIp8NlP+l9HR+D2to00UhVh9UNaCDwb5uEispv0e
7eDOBo+9Bqup/AfD0hXCZz/QepLsLHjHyrsNyRMo/t0I/y6z5omj5xWpkRe4
HB9VvYIQJVZ+jdThccXmDg+VaL9LW1h9y+m9XwRp/UMQHN/UOUv/Jbse9ffg
Wzte33nRQNf/A3y9YqNWsTDLR6QlfBH9IZOyFq1k9nlOC+Av1V8tsw5S/pNN
sEP1UZk+fcp3HAB/5OeNMd/B8tkM3IG1Lt/bYPmU1Q/lt3D5yjX7XvWy62sl
GMPldJfNdn1Zyc534FxYREZwTJgb7fdqDVN+f/b5rf6w38XpI3/rsfMhdRte
K9K0PMad7n/18IhNJ4Xf0HiMN98lLmdfxLDSrhKK/86GD6nbRP0xZuev3hKW
iXB5zhtD+S984T+jF8QaR7HzoZVy6d/8Zen6MCfW/3KqhWOLTdeuekf1/y/8
bUfc6KzprLyVzoxFe1EsNKR7lB3vwFrYvYMbu+Eme15TPgqPmKc5ccCD5v8n
wUoWzQ7Fuux8BlbDntbLH3yhfIfZv+EzMdlLf2rT/G+ly1xOAP/ZHar6FP83
h/frdo+7SM8vRofg09+b1/puZvcf7wT4O0+1A+9iyn9VBds8OLIk6SWt/xmE
VZY739/azj5fWDEO/avliiW+X1l90TKFD+wu+bpuNPv9Tt6w5SS3n1a03330
VThv0hWLPbNYe1xaAa/qLP687Qbrbw30wR95dq3psaT1Hwrx6D/+rRw1UZDV
V6tV8LQgiScp3dT/2Q+HXtge5/uQ9juNg4dFdE0H7Vh71FoG7w9Ie3KWQ/Pf
e2CpqbJPZ2lS/pMpV7gc65N3s/kOsf6CtxFsxVNRM6xK138PPPGmWHDJf/b7
vgQfvPRTUmsJ7fdRArtVLwp8VUbrf7rgTy/8Nnz/zuw06Sr6//vfS4ql0frv
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
Acf7eBcZXGTjK8FjsJ1AHcfrFM1/3IETOCvdV/ym/Y7fwSpbgup9I1n/ETvq
HfoPh1jFbVUU/1WGD372jykxp/5vC7xk6sKkhIns9ykdhQuMp7fwLaT9jlPh
hduM99+Pofm/t7CshY/+qavsfskdhi1Wxf2eM5+1h3al2jbOSPh9Wd9hdryS
prDYTrmpG69T/PswHNJjXa5D+SU+N+B2c6lV3QN0//8HV00UiTTdQfH/Qbgy
8yp3rys7HkHFOjzvZO1uZMhR+zeBtZvP88e1s/7K0Q+uFHiyqNCS+v9rcNJo
1aqPf6j+x2v4v7yj+k9FWfvr74e/PU/iPxdIxz+zHv1Dwo5qH0ea/zSGhd39
VDzofTfUG3b5PTKt6STrb3MTYKGEdTOd4yj+Wwan852dNriLxYMk++DR3mH5
WlTvwUi+AeP1c/cH/QvY8fmsgROf5wtElVP9dw/4QKG7t7owzf9dafi3PizN
degZmy8WfAGv+c7j9bKK6r/3wMb7PrfOkWfH5zj1PcZn5SLfV1dR/f9VcNeE
2c0C3uz5VHoANju8cWgCxV/74+DeRWd3CXyh8U8JPO7VsOvJB2y8afEd/niV
V1+I1q+GSjeiv9zFY32N4mm5K+DYm9EOZS9Y/9XuAkslbq/fvILWv1yAu77H
x/C+Zn/f6Ck8cGLZroqnVP+lC/74beTkqit0/FOa2jgXQqSrqimfUUIfnjYs
lrOgmrUXwz3wxcHr/+VG0X5f0fDgsqrE2gesvSYXwM2vNxx4SPsf1LTD89pN
jey9Kf4z6QP67xtn1B2HWXvU1oM76u+Wu/2i+I8DLN1ZItVJ+3/EnIY3XH13
wiKDHW/JI/iKtNTTalo/0fcZ3ua8tGKdCMW/RD/ifXBLvPn6Gsp/XQx/uCgg
MqJE8V87WN9pxg2bVKp/Egkbn69f9kGT8j9z4QetdZ42Smx8LNEC97Rc95Dt
o+Mf19zGWSzGI+4rwfoPr4Ww2Y9PNz4qUvzHFo6XW6eRTvU0a042/6u3tnWO
JY1X+LPh1zcbV/VRfor2R1h1YfCpGTvp/U/4Uxun823w8+d72P0UowmPJFzq
MBWi+M8O+Hh73S8ZWp/SFwpPvrDkuUk2O/+KmXDG3Tre7bGU/9gI9wzzZ/bs
oPXPAi34e5tTn7o60Ph/AXyKb8uij4MU/7GESwP/+P9WZ+1BIhhO17kcIbqQ
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
rl+0lI23+FfAcS1bomNl2d/TdoH/znkiP3UlHX+sIru/7yWIs/FGzBO47kPu
mTPzKf+1E5Yczmw8dYP9vT6J2Wh/3Zf+HLvN7l9FDuxZ5Pv0zlL2/c2c4XcO
6rM9VdjzIPgcfLz8/AHnAMr/fAwPbfh7cOZT9nxu+wKP2nxqc+YpZglxJYwH
lFvcTGn9quFSuMXA+u/B0+x+8nKEZz719RYJYfkUyWfg4kXBK/i30vHnwat3
vvS3LKb2z4Ul+ne9e9hL+X9ic3B+hgoL4q9T/tsS+HTKK6ELRjT/tRve6jNv
Yc4IHX8UvDNki8m0kzT/8QD2XJ1UxRdP6z9a4Z6BPJPTM9nfMxs/F9d/tIJF
IpfyX3VgB+270ya0Ufx3JzzVTENQpobi/+FwyeMVVi4/Kf8xB75lslhQSIr6
/2Y4K2JPZnogxX9FlHH/3Nywxzmf9n/Ugt156oKSDlP+rzU87WKchugumv8L
g1M39/lI91H8JwtWD44WLsim+F8TXKam5iK5gJ3fGMF56K9ihmYfHE/1X9Rh
mn9hx9tnBQ+9TTrW+4z9PcUQWL0zfXvLZ+r/M+BH9ZXj3lG9/OAG+LuFfOBA
D9U/H6PC5fhqB91MmUP9nyr8sPPJdXcXNv6U2AY/H90zmPyX3X+GQbDxVfG7
D/5X/ycNLtS+cUuX8m+Ta+G6M7YX55yl+N/o+VzO0zqnC7dM2P3DrwLrrdUM
PazC8oW0zeEj9bEP5m5mn9sHwDndka0C52j90y3Yus5kmwat5yuphmcO9ppP
1GPPm74R+PZNl7ozq2j901xVLuf9YLjTrlI2vjTbDFdPL/q6Nol9/+Aj8HwF
QbkFu6j9p8BRXRWKClQPoq0S5vu0eiCkjeK/QzDvUGTbuAsU/5+thvc3y1Fe
Gtns+nlthONPW+7aHcnu5+SDcP5DXrfNx9j4uuY6/Eve9sN3Dh1/BRzyQW6z
CC/FPwfgxbN+8t+keon2sxZwOVYDxvw19ex8xqyH16WNdf/5v/o3PnDf2OF0
416WD9WXCDc1/vuHnn+v4BnsH/Z9zH7DjxqEXGOz2d8Pnq7O5chkRB+uEmXt
J3stLH4v7+94Wv/b5gnvvbdb8+tell8lEQ9/0trZFevK9jMyfAkruJ/ZvvMJ
s9cveJa+9vF4D7beNXmaBpdz3qXqoIIQ+7zGCOZh/7Dfz+8OT622z23Yyqx9
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
4Dy7X5Rmr0d/stdlR9Mtqv+wEc7qzlWUpPU9oQdhz60hny/T+t/c67Apr8eY
rGGa/3gDTwyKObHuBl3/AfjD9LeHil9Q/vOsDTi/ns82GFD9Np/1cJWpiLLe
fVr/4gOHBzjbN1jQ/Z8I5410D/F+p/v/FZxWNTlU4S3Nf/yGHy5bOOBpTusf
ppugP7U6b7OC6jPEroVVYnN/bhuk+V9PWL1qLUe9n9Z/XIXP2yXtc1tN9b9e
wsHhC5JuCFL88xcc5tYdtvw6+/uh0zbiefr42Y+ZQ6x/yDWCGwy/x02Upuvv
Bu8anJqvnk35v5dhrwXnw3/l0PzXc7is5a3rbV2q//MDDrkxsyKtn41/U2Q2
cTn9mZ88L8jS838lPHHzv//R/J8rfLlM/Q7fEXZ8OhfhuJtHrXr30fPvGWyS
+XVljRnN/3yDu50dziYrU/67pCnOp/uOfCNan9y/HM5wtX4e6crOt9I+uMRl
pdzCUJr/OQ+fzuoONK+k8U8RfLZ5Tk+yBu1/8RUWvD4gov0f9X+TN+P8jptx
P6Cf+n99uCjrpcwBUxr/7IHjN7+6V0L7f/lEw2k8WqYlVO8spQAelhC2d86h
/R/b4TmezyUfSbN8EMFJW9DfrO4o9R5m4zcdPfhaX95/SkJ0/A7w5c2qE6O6
af77NPzmV7G3Ga1HL30E/zTavafrPM1/f4YdJ7/a56dA89+iZmjPVo/t/zTT
+78OLCg+3SRInz0vSnbC4eXc/iMZlP8UDvOmK8gPt1P9yxx4aJSLrEI6rf9r
hjdcTVuRa0nxXxFztPec3LMehqx/yNaCkyd0PTN3ofG/NRzREOAu/5zef8Pg
uommeYq7KP8pCx61VsMhgNYLejXBKrXvws0cKf9b0ILL8SsXMw+h+uw16rBc
wfCWhGha/7wdXsLD13CQ8hu0Q+CxASsfHbWk/M8MuNmup2zdaTYej2mAnwp+
5zy6Q/lPY7ZyOTYXlDxMN1H8SxU2SrwlZ7aH9R+K22C/WTJnNFTZ/WgWBL+e
F7jIiZfiP2nwGltxrbxzbP4suxaekBHwRjKS4l+jt+F5UVKwrngC5T+pwLMv
ST2fsZbyf8xh4U3+hxMjKf4TAK9Yf26lcAvl/9yC3ZI19aNH2PerqYYdWwQK
3ThU/4THkst5Wy5/XZniNdpzYfG492/1XdjzyX4zvET61o+bUbT+8wj8Ya6q
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
18MicbwnzOj9lN8XTpG4kqx7lN2v2knw160hC0XPs/Np/woe55lT2U3x85jf
sN3bjMgpHhT/nP6Jy7keWajRQ/XJ+9bCf7dcOnWG9jNQ9IKNpy4Rf9dMz794
+ILE1TOlS9j3D34JNy44bPYrnK7/L9jG4veih7do/mtaC543ekvt+v5Q/HM1
zPWwXhzFQ/WP3GGZV3Muf/Ol+c/LcFzqo+ajjez7JT+Hn9iGRTlMZePFmh8w
z7QfrzefYONRftlWHN/9TV5/ZSn/1xAu6HGM5af9fexd4ZbIkz+e1tLz/yKs
YXND4e1eqn/zDHZ1v6Cg3EHxz2/wZPNb7rn9NP8l9RnjE+dZidfWU/zTAK6s
r83bZ0j1X/bBTqP38fvYU/93HjaL0hQ0PEfxvyK4jleCu+QNu98lOuFmnft+
lfT7DCXauJzNDr9P+w9Q/WN9WKZ6woyUC3T998D3Jy0/M2UHzf9Hw8+j8t+u
X0j5/49hVbOxMWaBNP/3BY64azDu2Rv2++wncXG/rI93shGg9Q968Kvr81Kn
VlP83wFualJ6z7uLnn+n4Y1/EjPlpaj+WR6c0ChaEqxH9Z/a4KzTs5dFrWDt
L1i0Hc9D8TOL9pdT/u9iOPXSWd1zFH9vs4Mt7zXOTtGi+Z8o+FrmnEkXvNjx
GT6Ad+iEm44xoOvfAvNcHfk0bwXtfzvuC8YndsW5D7Z9Zce/EJ7mes0xdKSb
Hf9O+GX29oYb27vY8YfDn2rLK6xzm9nxZ8PLv8jHmXu8Y8f/EX7H61LnE1/B
jl+4g8s5FcRnNHnWS3b8mvAXnyDltyYsn1vRGr4ev1VV6iCLN5idgP3XvXwm
/Y05OBO2fnN7cbA0i99kN8JLcqxKSuTY520CX7mcTSvvzlzazt5HJNRh+YjY
spogFp8xtILjJn1esl6avX96BcOHZOqz5rmy+dXkdDjix7M1D/ax50FNPXzt
hcqP+dXs+cg/phPtc13iZj0RNj+nrQo77fjyNjuV2v9WWLg1y+/LbPY+GnMM
nj55Rq0NracuuQMfDzo59GQD7f/wDn4T31nhJE7Xf3QXzs/7ppfZcVT/fR58
nPPXvPMVjX/M/n1+g893DdUzyD4Kn4z06BO6SNc/Fe5pKJ/qOo7i/9Ww04O9
iT5GNP8/Am/+utimgNYPeM35xuUorv5RP1aA9j81hR8V3Ri1mUvj/8PwQK5D
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
Xw3PF11WKzJI55kPw+sfL9pSl85+v07BkctZrmadu0uL9TcCVvCFWrv9i3NZ
f6azH/aUe7pH7ikrr9M1WGdgweaX9P2jn8ORJp/OXKT5e+kP2L95yzTFdnY/
BuWdUH+vX39t68rqm6IFbLp3d7ukGLOtN3x22Z2N3X9o/HMFzkhViKn1oud/
OZwa2Wm+XpTyeQ/ABourdA6WUDx/qjPmgzkOB0/8YffHbClsM3PXOvsH7Pt7
e8GBqcvFTzxh/54UD8u5HClR8WL1te4pHHe6XWJzMpW/D7abnXDuzxXazy3n
gvHt2307f25i98/JDLZ5dP3g46tsv0/0btil4YjVxnusfZXGwanimV8mRbLr
nVUKh7pIV3e9Yf0/t+ff39uzrbvPk95n/s+VyzEeaXivqMI+z9wU9kq+0WT2
m/azesC2LY2/DljTeVbn4fcX6h6d+cmuR0Mx3KBU655Xw9qP0De4cVLqzgSK
J+rJuqF/SBF0WFXLnqcui+DWhOrdV5ez/QGxO+ALfm0rRNLZ/KosGpbQ+lXj
F86eF0MFsN2dUWt+nmPlU/4Mq8g8lMkwYf2dnZQ7l3N0p8z0/9LY/Qw3goPN
KldlqLLvk+UKr18+7YrJa1Y+7ln4z4+kHJ6llM83D35+cPnJfZQPypwLX70n
XPtbgvIZS+7AfGmXznvem7SfzxBe/0jt4423tJ/RCZ4e/1D25X6a/5+Gb83I
5YyzoHyej+Fjtq9nDG5jz2OXD3DBEvsU6xXs+8eO28nljHntFttP8eay+XB9
XFvnk1u0n9EB3v+l7JU05b9UPgEvErT2vVhP8fysnf+3nsTix+Hv4LMlvT0b
f29k5Rfdhfs1+kNsBy/t59aBS/m8pguOpfnvVvjd/dq9UxI3sPJHwi+6899w
HNh6vu8DmHeZs+jvkxTPbYUDbl6pjRFm16NhjAfqy9OR+NlF7N+FtGGXqb2G
tyh/i549jA509d1QymcQDhf9lL14sjCflT8DjrvDt/rIVPb+fNkbWGlfetke
eh9jSGA3yjPX83D5WspnqwE/LhSYPece5bPZADu+Ltrxg97HDA+Br0XvvMDR
p3jmbbgvJ49vvyi7ftxG+K3crPQiFxbvleXfw+WIeqal2wiyv28+BzbV2Gni
KU3nOdrBeu0WVk8zKZ/zYfhu3dlTw6MpnpsGdy1eYvX3DO1nq4d5Nt39FanP
2rcejyfmI/02osI2rP24qMFTqsXHKMmy/ip2DfwnnZcvNZTV37JDcPd8qzaj
e+z+DN2En0vMcanpYX9f+TWccW+KQvUHOs9sBO6qX5jYOZviH8peeH4eNT8p
NUL72VfBRYmXPTsn0PsM/nBrRJeU4l/az3cDFg0smvl+Nmtf5jWw4quR0oe0
/9L3FyzgWDo+x4Hy+c7ci/qjuKfPJIc97xusYHED/7XG+mx/p9ABmD+xpOPW
Z8pnkAg71T1LvevHxm8uVfBhsfq6IxFsfBQ7BM929snxdmR/v2z6Pi5niUYR
n9pMdn+HLGDv2DOSxqasv1X2gT/NnCw5ZoiNj+2uwhpjpQ78pfFseAV8Py/X
epQCG59nfYenF/LMcoxi95c71Rv194/RkMcC1j5ll8EZd9v8Domw8Z35Xjg1
oT1Kl85H970EBx24W6QUx9pbchkslCV96dNUav998BS/gcEKOn9TaLIPl5O3
zf16uT5rv3pLYP9S0wmRtF7tsgeeJlq5ZRGdLxJ7Ab5mceyE/io2vip7AqvN
vMEd/57ivd3wE7m5zxZIsPP0lCf5cjlf/gw/sXj1iJXfBH5dn9NzbAvbDxS+
C87/nrTggyflc4qFfTfnrNe4Qvnci+BI/539r+g8Vtmv8KMXs74eNKX4l8x+
Lke/Nt6yUI7y+XDgt24hb9xCaD3DHY51f3w9ifY3NZyDTfiq/I9epnweBXBP
59QLZ4PZ99H7BFfL9mSpttN6zoQD6A9FruioW1P9XwhLKHbxT9aj9xlc4PT1
n1w7zOl9hjPwPKscnR88tJ6RC2d9aVaK92X31+4jfOp8hk7mLlbfwyX8cH0i
LSVnjaN8Hgbwk3G9+4/psuvLdYQj5ykn7HrH2q/sKb9//aOB5/582s/6CNbv
DV/9fQLtZ38P3xB3EQ5KouffWH/0dw1n2z++pvuvBy/J2BEaYU3rmQ5wmMY2
pTA7Ws89Dvv++KV0l0v5/B/C89JMXoWmsO8T2w5HfFId3U7nyZWJBGC+ZrOf
c06GtZeheXB14/BwMr1Pr7wFPpZSNFdfhfbzH4WLN4YPzuphz7vw+7CObWlR
fA+dZ9kCzz2spRn4kdVHrtBBLid7zR1OXzV7/shqwZ9/738qQftrzTfBdtdr
tue0UPwzDOZPqiisl6L9vHdht6pYndxMep+jGc5LGBwvNEznGQgc4nJ2xGvI
Phhh10dPHf77UVji7BAbv7ish8eNcezPrKP49xFYw16h88B4dv/K0uGKZwtn
ya9g4+uhBvhp37Tw31b0PhdfIJ6HOv5rx71lv283G17x85RIvQbV/7Xwsq3v
d7Wqsvl+VhC8qcU6bZYRxf9T4d5TqisKLeg8gzpYSWyHsfsYep9rVBDao7Sk
PceIjf98VeH8AT1ruQT278k2sP2x915juun5dxC+endxo/1kNv8VugnXd0hZ
n66i8c+rf/9ePvXu6XfMLn/gSqOX3Y/F2PWIVTqM8WA/D/+BmWz8V2YNf1J/
zfs6iz0PhvzghL4xxm/203p2Erz/9QOtm7SeYFd9+F88sNnI/xKd5zAM14WV
Dlfbsb+fpRDM5WiabXD4/YBdP0VL+H3m9q8TFGn87wM/+k/+4NXHNP6/Cruf
dx+cY0n7mSvgWZFfiuM8aD/Hd1ibd3valAHazzTtCNoDJ2ibqgzFP5bBLwuq
VmaHU/xnLyxcmXjjD73/kHQJtuR6FrUUs+dNXRms8LZNTSGQ8vn2w0rp9X11
NRT/mRzC5Zzr5H4272Ljaacl8JlvRz7uUqT9jHvgI2Uu695OYOUpvQDPanq7
79g8Vp7BJ/CTFV9KVnyh/Uw9sGS5zu3+TNrPPCkU83+x6MKAPCq/Cbz41ECw
9iga/++CH71v2ZvjQ/t5Y+Ej4ouE5I/Q/KcYNtRpVp1ZTvt5v8I8jivCNPTZ
3/OWCcPzcUpq96hrNP/jwOmzcwYOdtF57u7w69Xf+TVK2fUUiIYtZZVe7xpg
5dEpgA93TJrY7kL7GT/BPiWT9yx5Q/t5J4Sj/RwbfUdNmOJ/C+H0wHzBse/o
fX4XWO6/fLWLtH9f8Sw8Kn63uLESlT8XbrjjzVugzT4/9CPssqI9wJDqS6ZE
BObvN5eGhebR/N8ADp/Q7qy4h95ndYJ3fA4zmB3L+i+zUzCn7tzZfbtY+/N+
FPF/7Y3NP5Lew/3THxtK3mHPk7qxR7mcgR2avZ/EKf49H3YzeTJvayur/zoO
sN/afs+Zduz57XQcrg2aa+1E58lHP4TznY1qltP7nKXt8FT71OPlX2n+JxKJ
/tLkxON6V8pnoQPf3mukntdJ+Ry3wIO6vksO0HkroUfhy655e5+upXwG92GL
vJvB787Q/K8Frtj2dtyJpfQ+/5hjaE+z0xpW11D5teBtiy1jfIVYf+i9Cf7k
+/PjRSGa/4XBveHtjZvmUT7bu/CPQos9a+h9K4E3cO4dsU3mTymficBxjG8X
8rQs72TjGyd1OPH1gR1eND+LXg9LJfIE/qX9qaVHYP9DU7oaVlP8Mx0eG7FE
pCiMtTfFRrjH3OXwzrsU/+Y7gb+vftUxXZo9/0Jnw6c5z2MHxlP8cy0saDVp
lvtL2s8cBF+o7DnjRfsZpNNg+dSDIye6aT9nHZxjnl+lQvnGvEedxPy71ern
70rK56oKnxL5lXXnJMW/bGDbz5kvjkfReW6H4Bt5dzd4ObHxhM5NWGxwQcuj
eVT/X8GPfASPv5rGfj76D3x1hWLLrc/s/pQqnUL53SMel2+lfP7W8KGohftG
mtnvK/r/+/dsCXHeb6w+2ybBlUr6L8XH0362aniFoGKf5QfKZzMM64f5f7Jx
oviPwmnU1wLbU1bzqPxWcGiUyJJRYZTPYz88uONpU0AKrf9cgw/1vHIOyaP1
v+ewSa3S7ge6tJ/xB7zlnsc9XheK/08/w+Xcmbdlv/0NOs/WAp4VsV58jRDF
/7xh6XEjpYI/Kf53BR57omz12vNU/8thmeSAK2MS6TzDATi95JBGTyHlc516
lsv5artW+/FX9vdtl8JW33iEBt5T/M8Lvmj0ZA8f7f/KjIc3NfRWTOpi4/nO
p7Cnv3O9z2naz9wHtzYFGIQ1UT5zuSjUd4H652l/6Tw7M3hQXaRMJoLyGe2G
gz36LlfGU/wnDq7WHLdGbyyV/wm8pVbv/rjPtP7VDc/Plh2qyKPyTzzH5ZhP
OTT7ahflc10MO8/+L3gcnYdQuhP+29QoO96Z8tnEwEe6703lraH+vwgO8y75
lJVA+/m/wHaGxWK2vnT/paPRf5m9dB8SZOOhTGP4RXBvSP91Fi/odIM7ApQk
u3ToffZzcN12w0Nq41h7N8uHRaf3LF3izv6+dxfcu104/mIA5bMYH4P5VFHt
eN4JrP+qWwC/4GmafHwH678FXOB9MutmLv7feW5n4CPWKXO4lay+OeXAPJmf
u+x8aP23EzZ9ylc3OJ3WP8RjuZz4558d63tZex/Uh0c18fCNXKb4tyPc4Oa5
b/Fvdj1tT8InTswr3LeBtbfQbFhKnZf7hfLhZ3bA+yZINIXWsHhkp9h5Lqfg
+yP+aAs23pLWg51XSR5atIbi39tgpUM3LK02ss/zPgb/SWlVCtlN8f9M+Omt
GvNU2n9R1wZbbouYUs/HPk9AJA7tbVV8k3Izez7qzINPese90ZCh9Y/NcFW5
Vfi9PtrPHAH7cDVOf6D109J7sOSefVdPS9H7DG/hwNXD60apUj4ToQvor8RL
+iTL6X0GTXhVSOlZvXvs+R26EV5dd+fv20zK5xwK7/OZ0iPGT+u/d+DO4eN+
DrfpfZZm+MPQa9PQbop/j77I5Xw7W6k3Zyf1/3PhyeWeId6HaT/zOrjEat0Y
50w2v6sLhvf7GNWZbmL79wTS4dejukyH1Fi+DJ0G+IPhlQOBOuznnXjjUf6S
wz/qplM+n1mw3ZiLXWeU6flvC8f3KW4xPUv5nAPhT72Ke8VMqP9PhTUvjC+9
+o21L9ta2H5kZ2G+Dr3P8Bc2Ov/uqgOtN2aqXEJ76vx86X44tf/VcHTDDj6B
D+z5JX0Qvq9wYiHfFtr/kAzrFM09ZryN1Sfvl3BznNSHTit6n+U3LFxi4q05
QPdf8TKXExM8K+ndG3Y/BKzhqIVum5X6KP7pB+cMHdGyq6b1z+tw6J5i4+Zf
9Px7Aa9r/HnVtpD1h6U/4RD9+7dV6lh/NDjjCpfT3WO+d1EN5bNbceXf+4dT
vkS/pvM8fGHPVY7yYXpU/xNgt49FL9/7sf46sxLe9VfgsP0q6v8HYZkfcUv5
TGn9U/4q6m/i+XqpSPZ9zJbDemI3IpK82ffx3gdvOqlq/I7ypyVdhgfMKsO+
t1A+u2fwpD8hEVd2UvkHYPvsvSbXa+h9tikJXE5RZeqkE/R+sZM5nFiZf/vC
Iqr/nvC4fbLHH9D7NqUX4SnWDca8tL96sBQWFwhNWnWX3ufrhZtP/JntdZfG
f/9dQ3v2N6v45UHrf6bw8FJ+DXVe2v/hAUvsPdu//wmtf5+Hy9yd8g5Npf0f
JXDPqK+5l9Vo/PMNFj4YnTkqg9Y/ZBO5nGnD8174/m//wyLYkicx2+kFu151
O+BUzv23ez/Sfv4YOHZviUr5TdZ+dArh+zef7H9wneL/n2H/i2OmFdTS81/q
Otprmppm7wHaz20ER8iq/A3oo/UvV3jblXK9LDpfSjEKlvfwDPihR+0/D257
pNc7KMz6C/NPsOTQtW35xez++E5IwvhyufQqt8+sv05eCE/i3D+b3U3nubnA
nJVfv/5ZyuaXQmdhB9PVF640sc/Xy4XfWOlvbrCg/W4f4YSqTaFqmezzYyVu
4Pddrpd8GqbzDA3g2ClLKhpp/+OQI7yjJ3+otoD2f52CZ9+PPH7Oid0vu0fw
s0dHDdbo03lW7+Hnz9yEu6vY8ylrbDKeNy/6pB1CaP6vB/MuXf/LJYjivw4w
X9WXkt9/2f0wPw4rbXRL3ynFnq++D+HNTdNOTHxD+Rza4e0rr/KtrKL97CI3
uZzzEl4dE+g8QiEdONs2x+TdDPb99LbAhQo34wNPU/mPwr/rNF8b6lD86z4s
PWuwSlGPzrNqgf88L30iIkj5DIRS8PtSohsLC+h9Zi2YO+berPwLbD5ptwlW
kyrI3POalSc8DOZJ1mt1FqH93HfhP3/VXQdEaT93M7wsPEIwgOK1sgKp6C84
XR6DEuz+mqvDEcYJ245TvhDf9bD6adVdtk2svicfgVPf8+uOz6f97Olw18mx
v35H0fy/Eb5hFfdlMuX/1+NLQ/m4GRnClbSfezY8OcX7zNMldJ7nWvhnWeuW
igTa7xmU9u/9UCGvwmVs/DaUCqfKGV8ViqR8tnXwfrm+At45rP7ZjbqF52lC
1YKwuXT/VeGfmyepr7Kg+LcNrOzjqH76HntecA/C3m/nP3k2QvGvm7DR5GeD
LgKs/Zm/gtd9eJQ1Yzntf/wD76lLfvo1m84zU0rH5682URMazeZjDdbwys70
b9d8Wf0U8ocjN0QUezazeL5eEtwePf/M4goWv3SphjWmnn02N47le4gdhm0s
FFc+5mP5n8oUbmM+XfNf4fhc9jwZWgE721ctMDJl8TDl/bCR8azJwep0nuM1
GJNhCZ8Sep/hOVz57G7/Rcr3l/UD1oi1MspfT/Fv+Tv4fvuVq3tpviNrAfvV
BKvkSdF+V29YjGvr43iazjO9AjeprTMJofzqyeVwZY2Z/B9hlr+7YQA2Sfi2
JTCPPQ+Fpt5Ff/HHa6sS7TfRWwp/Ks790H6A8nl7wd9Lkt351tB+/ng416CZ
ZyiE7v9TOObNuwlCdlT/e+HjalPmJixm4y9luQw8X2oDf9wtZ9fXzgwu3Pr5
8otkyue8G56ecbQpTo09/7Pi4LCk2QOvNSn+WwInTdydVb+D9n92w9qe19Ny
6fxi84n3uByzBKclGaMon+9i+L6w6siiENr/uRO+FLfqhO1mtj7eEAM737e+
O+s7yx8mVAR7zPmY+sid7Q/W+wKrVybnTnJmv+8ifR/9yVLH+iMOFP80hmWU
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
j/z7+3durluhy+pnlvIPzN9ism6kB1D8dxWcIxW1UWMvq0+yAbBX12BZLuV/
NL8B68raiNySofLXwOvVT0mabqH3X37B6tGHqnU+sflBw8wh1OdVPFPf/GD9
idBKeKLhv//T+vcBOObd0ev7P1L7T4SzGlY/qJJiz/fYKjguIMapldb3y4bg
NYHeQQdCWX0cmv4Tf2/p81vpD1h5lS3hrP6u8mQpev75wFPtzA3XDFP8/yq8
KE5bYUM9xf8r4EePn8teVab1j+9wRq5/TMpZymc2bRjjy93JezaUMZsvgxs8
Q1Vex7Of990Ln3wydeqzIdYfJF+C7cZGLZj5jdp/Gayyxrxi2U2K//fDgkYq
GuuLKJ/T5F/oT8zEpftpf3WSKWxcJVco6EfneXnA3Vs/Nwdepf1PcbC33cNw
XVov0imBPZQ6vepmUD7jb7B1a+euv5R/Plr2N+b/q9Mjv7tR/otF8MQ5Z5WF
yyj+swOu3m2h8c2f3v+NgU1Olm3kJtL4vxAW/e1/c/Mx1n5DP8PN8yVmW9Hz
OVPqD5730pFPtt2l+JcR/Her+Nj1MTT/d4PfX8oTkdzLrr9ZFKwT5cIvb8nq
g3cePMnPKfT3StZfJHHhnrZI22JP1n/XSY5wOb8ct4w3j6f43wJ4wrv921y2
0/5vZ/ip8Xx9+fd0ntdp+F1gkfWZS/T+52P4eHVxx1p6XpR+gFeV/G7TuETn
eY37i/txVLj38yfa/6YPL+SbGa57jvZ/bIetR6ukTDOl+OcJ+OFqqd8N9bT/
JwuWNnyi1HCJPe8638FtGsMbLOi8T2mxUV2c4wea3mXS+TtmunD+FZfHMuMo
/rUVjpC7cbStnN5/joTNyzi5MUHsetU9gIP0k5ItBtjvC7TB7dqni59m0P5P
YZ4ujs9Et5O1P9nnO2nDvVKb8R/F/+3hrRYPkj+m0f7PcDjj5bir85PY82ww
A65fl615I5biX2/hmf1Hv0vcpviXIG8X50aWeNu0VbT/TQPWCJ6n4C9G59lv
gMMHlrs57WHtsTMEPjlUOzEsk32+9B148ff+w9G0P9esCZ606NXPN+cp/wU/
XxdHbeLArNZA1t8lzYF/D6ca+4mz+VOdHSwWX7TkDeXDFAiGQ82sV/FQvged
W3Ds2WaJOkd6/7kePmjZPPEj5QuP5uHv4sQvvlHbeYTiH2pwY2VY9QUZyme9
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
GwyPNM04GzOd6l03w8M23x5PUaf+fXEc/j0nSanrMOX3sYQ/ewZpte9g318/
EPbdrdFRSPXZPbLhmBb/lKQAGt82wuPztDxFy9n3SeCPx/tFYYPDRjl2vriL
YLcfUXF+tJ9y0Bwuj2n5soHma+QC4JhoPgktSdY+WF6FVzh87XDIoPy2L/77
/dNrA7i3Kb/JPzhht36akT+733sWJOB8BcdtdvzAPl/CDD6yp+OEEI3nDY7A
0eMy77bIMHtlwUOCC9Rimim/QT288XGWqv8hWt/2B9ZMNU4SeMf6H6H5ifj7
laLLXCkfg9pG+B23S/rxV/Z5Tr5wW7tYw5bp7PwkZMBKIoljLKn+PLcWXnvy
oQ/3DRs/D/6Cp23tafGVp/pOc8/i+RAOUe+cT/kNNsA7/CUWzUhk93OYFzxw
TGu7cRNz4UW4yFVdXIeP9nc/gYdNNx84vY49XxI/4Ughh4bZJ3ew45dJQv89
3K8qMY3Zax2cdmD2l/j5rD5k1qGk/+ZT6hvu0H7Lpguw6RjX92UerL0Uegzf
ea5bFkH799S+w+Y5NalVj6m+l9Q5Hqc+VdxoSxdrrxIM4FPSP7+0b6D8Fgfg
LRsLF1bfoP3t52CjRi2/rrXseOQewXKXzm68Hcf+nuUXOLN+f/mrt5TfYXoy
j6M8bNIwQZniO6vhqqTXSoNrWX/b4warNbd1Go5gljgLz+2dZ17hT/X9HsKf
bud+f9LEPt/rE3zPOOSLJdXPypI4j+u1VGfcaDna364LL3M2zX51nsXDhPbC
OetMlvrkU3wrHk77PqtSKZXFb5zuw8Xup9o3O7J6Dgkf4OsdtSrOu1j8kDvl
At6XxgXunHehiB3/Srh3Zd8FswH29+Sc4QWu2jqvmim+HwNLuQWsXvKX6hve
gx3UtDifqX5cYQ88PDYkbtt9Fi/omZiC8V0Q/9MEE/b3JLTgRSkqPmridPyO
sOzIilWfaf+DVzT87a+RhIkfG+9k3YXtdOyLhmk9StM7OOycxJzKj5TfQTSV
x+GLSrueSuuH1dRhocUz+zMq2L932gkH7rkw43k15XeOhHcHqG/7Gk/rOwvh
gkxx4edfWPsy+BauqDP/zU/1IuVELuL7T/RtdPlC+Q1U4eDHb7/VXKb8xtvh
i3M2Te0oYOenMALeqRTjUaVN8xt58KOCtZ/VzrD4gUQ73PL7xItf49h4wWBs
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
XPk/bGRXpQ==
      "]]}}, {}, {}, {{}, {}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{False, False},
  AxesLabel->{None, None},
  AxesOrigin->{2.7690732*^9, 0},
  DisplayFunction->Identity,
  Frame->{{True, True}, {True, True}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->
   FrontEndValueCache[{{Automatic, Automatic}, {Charting`FindScaledTicks[
       (Charting`getDateTicks[Automatic, {Automatic}, 
        (Map[DateList, {
          SlotSequence[1]}]& )[
         SlotSequence[1]], None, 5, {{0.0125, 0}, {0.0075, 0}}, Automatic]& )[
        SlotSequence[1]], {Identity, Identity}]& , Charting`ScaledFrameTicks[
       (Charting`getDateTicks[Charting`getDateTicks[Automatic, {Automatic}, 
         (Map[DateList, {
           SlotSequence[1]}]& )[
          SlotSequence[1]], None, 5, {{0.0125, 0}, {0.0075, 0}}, 
         Automatic]& , {Automatic}, 
        (Map[DateList, {
          SlotSequence[1]}]& )[
         SlotSequence[1]], None, 5, {{0.0125, 0}, {0.0075, 0}}, None]& )[
        SlotSequence[1]], {Identity, Identity}]& }}, {{
     Automatic, Automatic}, {{{2.6823744*^9, 
        FormBox["\"1985\"", TraditionalForm], {0.008333333333333333, 0.}}, {
       2.8401408*^9, 
        FormBox["\"1990\"", TraditionalForm], {0.008333333333333333, 0.}}, {
       2.9979072*^9, 
        FormBox["\"1995\"", TraditionalForm], {0.008333333333333333, 0.}}, {
       3.1556736*^9, 
        FormBox["\"2000\"", TraditionalForm], {0.008333333333333333, 0.}}, {
       3.3135264*^9, 
        FormBox["\"2005\"", TraditionalForm], {0.008333333333333333, 0.}}, {
       3.4712928*^9, 
        FormBox["\"2010\"", TraditionalForm], {0.008333333333333333, 0.}}, {
       2.7139104*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       2.7454464*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       2.7769824*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       2.8086048*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       2.8716768*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       2.9032128*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       2.9348352*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       2.9663712*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       3.0294432*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       3.0610656*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       3.0926016*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       3.1241376*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       3.187296*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       3.218832*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       3.250368*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       3.281904*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       3.3450624*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       3.3765984*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       3.4081344*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       3.4397568*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 
        0.}}}, {{2.6823744*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       2.8401408*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       2.9979072*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       3.1556736*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       3.3135264*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       3.4712928*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       2.7139104*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       2.7454464*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       2.7769824*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       2.8086048*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       2.8716768*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       2.9032128*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       2.9348352*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       2.9663712*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       3.0294432*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       3.0610656*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       3.0926016*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       3.1241376*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       3.187296*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       3.218832*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       3.250368*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       3.281904*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       3.3450624*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       3.3765984*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       3.4081344*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       3.4397568*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}}}}],
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  Method->{"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Part[{{Identity, Identity}, {Identity, Identity}}, 1, 2][#]& )[
         Part[#, 1]], 
        (Part[{{Identity, Identity}, {Identity, Identity}}, 2, 2][#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Part[{{Identity, Identity}, {Identity, Identity}}, 1, 2][#]& )[
         Part[#, 1]], 
        (Part[{{Identity, Identity}, {Identity, Identity}}, 2, 2][#]& )[
         Part[#, 2]]}& )}},
  PlotRange->{{2.7690732*^9, 3.4712496*^9}, {0, 0.9999429744525548}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.02], 
     Scaled[0.05]}},
  Ticks->{{}, Automatic}]], "Output",
 CellChangeTimes->{3.709843366798608*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"pos", "=", 
  RowBox[{"Position", "[", 
   RowBox[{"flightMerRx", ",", "_Missing"}], "]"}]}]], "Input",
 CellChangeTimes->{{3.709831160007625*^9, 3.709831179567666*^9}, {
  3.7098433403961515`*^9, 3.7098433415563917`*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", "1828", "}"}], ",", 
   RowBox[{"{", "5603", "}"}], ",", 
   RowBox[{"{", "5605", "}"}], ",", 
   RowBox[{"{", "5606", "}"}], ",", 
   RowBox[{"{", "7694", "}"}], ",", 
   RowBox[{"{", "7696", "}"}], ",", 
   RowBox[{"{", "7972", "}"}]}], "}"}]], "Output",
 CellChangeTimes->{
  3.709780978421756*^9, 3.7097813894936204`*^9, 3.709792436990982*^9, {
   3.709843324870945*^9, 3.709843342179522*^9}}]
}, Open  ]],

Cell[BoxData[";"], "Input",
 CellChangeTimes->{{3.7098434893509336`*^9, 3.7098434912203207`*^9}, {
  3.7098435344112453`*^9, 3.7098435368837557`*^9}, {3.7098436891402197`*^9, 
  3.7098437106346626`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"sept11", "=", 
  RowBox[{"DateObject", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"2001", ",", "9", ",", "11"}], "}"}], ",", 
    RowBox[{"TimeObject", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"12", ",", "0", ",", "0"}], "}"}], ",", 
      RowBox[{"TimeZone", "\[Rule]", "\"\<America/Chicago\>\""}]}], "]"}]}], 
   "]"}]}]], "Input",
 CellChangeTimes->{{3.7098436439158745`*^9, 3.7098436497990904`*^9}}],

Cell[BoxData[
 TemplateBox[{RowBox[{"\"Tue 11 Sep 2001 12:00:00\"", 
     StyleBox["\"CDT\"", FontColor -> GrayLevel[0.5]]}],
   RowBox[{"DateObject", "[", 
     RowBox[{
       RowBox[{"{", 
         RowBox[{"2001", ",", "9", ",", "11"}], "}"}], ",", 
       RowBox[{"TimeObject", "[", 
         RowBox[{
           RowBox[{"{", 
             RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
           RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], "]"}], 
       ",", 
       RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], "]"}]},
  "DateObject",
  Editable->False]], "Output",
 CellChangeTimes->{{3.7098436313072686`*^9, 3.7098436504972343`*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"pos1", "=", 
  RowBox[{"Position", "[", 
   RowBox[{
    RowBox[{"years0", "[", 
     RowBox[{"[", 
      RowBox[{"All", ",", "2"}], "]"}], "]"}], ",", 
    RowBox[{"Max", "[", 
     RowBox[{"years0", "[", 
      RowBox[{"[", 
       RowBox[{"All", ",", "2"}], "]"}], "]"}], "]"}]}], "]"}]}]], "Input",
 CellChangeTimes->{{3.7098433923928995`*^9, 3.7098434670793314`*^9}, {
  3.7098435057673264`*^9, 3.709843512053625*^9}, {3.709843544032233*^9, 
  3.709843661425493*^9}, {3.709843714987561*^9, 3.7098437373541837`*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"{", "5095", "}"}], "}"}]], "Output",
 CellChangeTimes->{
  3.7098434688777027`*^9, {3.7098435069515705`*^9, 3.709843512869795*^9}, {
   3.7098435476259785`*^9, 3.7098435677141285`*^9}, 3.7098436202389836`*^9, {
   3.709843656316437*^9, 3.709843661821578*^9}, {3.709843719939643*^9, 
   3.709843738047326*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"dates", "[", 
  RowBox[{"[", 
   RowBox[{"pos1", "[", 
    RowBox[{"[", "1", "]"}], "]"}], "]"}], "]"}]], "Input",
 CellChangeTimes->{{3.709848077511075*^9, 3.7098480908018217`*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  TemplateBox[{RowBox[{"\"Wed 12 Sep 2001 12:00:00\"", 
      StyleBox["\"CDT\"", FontColor -> GrayLevel[0.5]]}],
    RowBox[{"DateObject", "[", 
      RowBox[{
        RowBox[{"{", 
          RowBox[{"2001", ",", "9", ",", "12"}], "}"}], ",", 
        RowBox[{"TimeObject", "[", 
          RowBox[{
            RowBox[{"{", 
              RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
            RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], "]"}], 
        ",", 
        RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], "]"}]},
   "DateObject",
   Editable->False], "}"}]], "Output",
 CellChangeTimes->{{3.709848089610575*^9, 3.7098480912829227`*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"pos2", "=", 
  RowBox[{"Position", "[", 
   RowBox[{
    RowBox[{"years0", "[", 
     RowBox[{"[", 
      RowBox[{"All", ",", "2"}], "]"}], "]"}], ",", 
    RowBox[{"RankedMax", "[", 
     RowBox[{
      RowBox[{"years0", "[", 
       RowBox[{"[", 
        RowBox[{"All", ",", "2"}], "]"}], "]"}], ",", "2"}], "]"}]}], 
   "]"}]}]], "Input",
 CellChangeTimes->{{3.7098481094216695`*^9, 3.709848157104523*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"{", "5096", "}"}], "}"}]], "Output",
 CellChangeTimes->{{3.709848134053759*^9, 3.7098481586298394`*^9}, 
   3.7098482382712984`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"pos3", "=", 
  RowBox[{"Position", "[", 
   RowBox[{
    RowBox[{"years0", "[", 
     RowBox[{"[", 
      RowBox[{"All", ",", "2"}], "]"}], "]"}], ",", 
    RowBox[{"RankedMax", "[", 
     RowBox[{
      RowBox[{"years0", "[", 
       RowBox[{"[", 
        RowBox[{"All", ",", "2"}], "]"}], "]"}], ",", "3"}], "]"}]}], 
   "]"}]}]], "Input",
 CellChangeTimes->{{3.7098482216888695`*^9, 3.7098482427462206`*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"{", "5094", "}"}], "}"}]], "Output",
 CellChangeTimes->{{3.709848224002347*^9, 3.7098482430842905`*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"pos4", "=", 
  RowBox[{"Position", "[", 
   RowBox[{
    RowBox[{"years0", "[", 
     RowBox[{"[", 
      RowBox[{"All", ",", "2"}], "]"}], "]"}], ",", 
    RowBox[{"RankedMax", "[", 
     RowBox[{
      RowBox[{"years0", "[", 
       RowBox[{"[", 
        RowBox[{"All", ",", "2"}], "]"}], "]"}], ",", "4"}], "]"}]}], 
   "]"}]}]], "Input",
 CellChangeTimes->{{3.709848313529849*^9, 3.7098483198011436`*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"{", "5097", "}"}], "}"}]], "Output",
 CellChangeTimes->{3.7098483205613017`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"pos5", "=", 
  RowBox[{"Join", "[", 
   RowBox[{"pos", ",", "pos1", ",", "pos2", ",", "pos3", ",", "pos4"}], 
   "]"}]}]], "Input",
 CellChangeTimes->{{3.7098437613691463`*^9, 3.709843770806097*^9}, {
  3.709848164510053*^9, 3.7098481770687156`*^9}, {3.7098482461559253`*^9, 
  3.70984824695409*^9}, {3.709848278340576*^9, 3.7098482799349055`*^9}, {
  3.709848327159665*^9, 3.709848333213916*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", "1828", "}"}], ",", 
   RowBox[{"{", "5603", "}"}], ",", 
   RowBox[{"{", "5605", "}"}], ",", 
   RowBox[{"{", "5606", "}"}], ",", 
   RowBox[{"{", "7694", "}"}], ",", 
   RowBox[{"{", "7696", "}"}], ",", 
   RowBox[{"{", "7972", "}"}], ",", 
   RowBox[{"{", "5095", "}"}], ",", 
   RowBox[{"{", "5096", "}"}], ",", 
   RowBox[{"{", "5094", "}"}], ",", 
   RowBox[{"{", "5097", "}"}]}], "}"}]], "Output",
 CellChangeTimes->{
  3.709843771323203*^9, {3.709848172513707*^9, 3.709848177336706*^9}, 
   3.709848247282258*^9, 3.709848280404004*^9, 3.7098483335299807`*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"pos5", "=", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", "1828", "}"}], ",", 
     RowBox[{"{", "5603", "}"}], ",", 
     RowBox[{"{", "5605", "}"}], ",", 
     RowBox[{"{", "5606", "}"}], ",", 
     RowBox[{"{", "7694", "}"}], ",", 
     RowBox[{"{", "7696", "}"}], ",", 
     RowBox[{"{", "7972", "}"}], ",", 
     RowBox[{"{", "5095", "}"}], ",", 
     RowBox[{"{", "5096", "}"}], ",", 
     RowBox[{"{", "5094", "}"}], ",", 
     RowBox[{"{", "5097", "}"}]}], "}"}]}], ";"}]], "Input",
 CellChangeTimes->{{3.7098494854450235`*^9, 3.7098494888227224`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"data", "=", 
  RowBox[{"Transpose", "[", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"Delete", "[", 
      RowBox[{"dates", ",", "pos5"}], "]"}], ",", 
     RowBox[{"Delete", "[", 
      RowBox[{
       RowBox[{"years0", "[", 
        RowBox[{"[", 
         RowBox[{"All", ",", "2"}], "]"}], "]"}], ",", "pos5"}], "]"}]}], 
    "}"}], "]"}]}]], "Input",
 CellChangeTimes->{{3.7095796286261916`*^9, 3.7095796859129286`*^9}, {
   3.7095802045952053`*^9, 3.7095802062025337`*^9}, {3.7095911477536173`*^9, 
   3.709591174294055*^9}, {3.7095914477110777`*^9, 3.709591450805712*^9}, {
   3.709754767913229*^9, 3.709754776827057*^9}, 3.7097753235759835`*^9, {
   3.7098437829846134`*^9, 3.7098437990729375`*^9}, {3.7098478894282074`*^9, 
   3.709847905383505*^9}, {3.709848184541193*^9, 3.7098481886550426`*^9}, {
   3.709848251099947*^9, 3.709848256040968*^9}, {3.709848337664836*^9, 
   3.7098483525109043`*^9}}],

Cell[BoxData[
 InterpretationBox[
  TagBox[
   FrameBox[GridBox[{
      {
       ItemBox[
        TagBox[
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             TemplateBox[{RowBox[{"\"Mon 19 Oct 1987 12:00:00\"", 
                 StyleBox["\"CDT\"", FontColor -> GrayLevel[0.5]]}],
               RowBox[{"DateObject", "[", 
                 RowBox[{
                   RowBox[{"{", 
                    RowBox[{"1987", ",", "10", ",", "19"}], "}"}], ",", 
                   RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                   RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                 "]"}]},
              "DateObject",
              Editable->False], ",", "0.005833672500339167`"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             TemplateBox[{RowBox[{"\"Tue 20 Oct 1987 12:00:00\"", 
                 StyleBox["\"CDT\"", FontColor -> GrayLevel[0.5]]}],
               RowBox[{"DateObject", "[", 
                 RowBox[{
                   RowBox[{"{", 
                    RowBox[{"1987", ",", "10", ",", "20"}], "}"}], ",", 
                   RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                   RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                 "]"}]},
              "DateObject",
              Editable->False], ",", "0.008952794357026587`"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             TemplateBox[{RowBox[{"\"Wed 21 Oct 1987 12:00:00\"", 
                 StyleBox["\"CDT\"", FontColor -> GrayLevel[0.5]]}],
               RowBox[{"DateObject", "[", 
                 RowBox[{
                   RowBox[{"{", 
                    RowBox[{"1987", ",", "10", ",", "21"}], "}"}], ",", 
                   RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                   RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                 "]"}]},
              "DateObject",
              Editable->False], ",", "0.006121199755152009`"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             TemplateBox[{RowBox[{"\"Thu 22 Oct 1987 12:00:00\"", 
                 StyleBox["\"CDT\"", FontColor -> GrayLevel[0.5]]}],
               RowBox[{"DateObject", "[", 
                 RowBox[{
                   RowBox[{"{", 
                    RowBox[{"1987", ",", "10", ",", "22"}], "}"}], ",", 
                   RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                   RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                 "]"}]},
              "DateObject",
              Editable->False], ",", "0.005572166349551508`"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             TemplateBox[{RowBox[{"\"Fri 23 Oct 1987 12:00:00\"", 
                 StyleBox["\"CDT\"", FontColor -> GrayLevel[0.5]]}],
               RowBox[{"DateObject", "[", 
                 RowBox[{
                   RowBox[{"{", 
                    RowBox[{"1987", ",", "10", ",", "23"}], "}"}], ",", 
                   RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                   RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                 "]"}]},
              "DateObject",
              Editable->False], ",", "0.0056829852790140365`"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             TemplateBox[{RowBox[{"\"Sat 24 Oct 1987 12:00:00\"", 
                 StyleBox["\"CDT\"", FontColor -> GrayLevel[0.5]]}],
               RowBox[{"DateObject", "[", 
                 RowBox[{
                   RowBox[{"{", 
                    RowBox[{"1987", ",", "10", ",", "24"}], "}"}], ",", 
                   RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                   RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                 "]"}]},
              "DateObject",
              Editable->False], ",", "0.005067441687159997`"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             TemplateBox[{RowBox[{"\"Sun 25 Oct 1987 12:00:00\"", 
                 StyleBox["\"CST\"", FontColor -> GrayLevel[0.5]]}],
               RowBox[{"DateObject", "[", 
                 RowBox[{
                   RowBox[{"{", 
                    RowBox[{"1987", ",", "10", ",", "25"}], "}"}], ",", 
                   RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                   RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                 "]"}]},
              "DateObject",
              Editable->False], ",", "0.00817497310864109`"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             TemplateBox[{RowBox[{"\"Mon 26 Oct 1987 12:00:00\"", 
                 StyleBox["\"CST\"", FontColor -> GrayLevel[0.5]]}],
               RowBox[{"DateObject", "[", 
                 RowBox[{
                   RowBox[{"{", 
                    RowBox[{"1987", ",", "10", ",", "26"}], "}"}], ",", 
                   RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                   RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                 "]"}]},
              "DateObject",
              Editable->False], ",", "0.005796710703693718`"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             TemplateBox[{RowBox[{"\"Tue 27 Oct 1987 12:00:00\"", 
                 StyleBox["\"CST\"", FontColor -> GrayLevel[0.5]]}],
               RowBox[{"DateObject", "[", 
                 RowBox[{
                   RowBox[{"{", 
                    RowBox[{"1987", ",", "10", ",", "27"}], "}"}], ",", 
                   RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                   RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                 "]"}]},
              "DateObject",
              Editable->False], ",", "0.005372687704026115`"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             TemplateBox[{RowBox[{"\"Wed 28 Oct 1987 12:00:00\"", 
                 StyleBox["\"CST\"", FontColor -> GrayLevel[0.5]]}],
               RowBox[{"DateObject", "[", 
                 RowBox[{
                   RowBox[{"{", 
                    RowBox[{"1987", ",", "10", ",", "28"}], "}"}], ",", 
                   RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                   RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                 "]"}]},
              "DateObject",
              Editable->False], ",", "0.011787020728898524`"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             TemplateBox[{RowBox[{"\"Thu 29 Oct 1987 12:00:00\"", 
                 StyleBox["\"CST\"", FontColor -> GrayLevel[0.5]]}],
               RowBox[{"DateObject", "[", 
                 RowBox[{
                   RowBox[{"{", 
                    RowBox[{"1987", ",", "10", ",", "29"}], "}"}], ",", 
                   RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                   RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                 "]"}]},
              "DateObject",
              Editable->False], ",", "0.005269914194986825`"}], "}"}], ",", 
           TemplateBox[{"8095"},
            "OutputSizeLimit`Skeleton",
            DisplayFunction->(FrameBox[
              RowBox[{"\" \[CenterEllipsis]\"", #, "\"\[CenterEllipsis] \""}],
               Background -> GrayLevel[0.75], 
              BaseStyle -> {
               "Deploy", FontColor -> GrayLevel[1], FontSize -> Smaller, 
                ShowStringCharacters -> False}, BaselinePosition -> Baseline, 
              ContentPadding -> False, FrameMargins -> {{1, 1}, {1, 2}}, 
              FrameStyle -> None, RoundingRadius -> 7]& )], ",", 
           RowBox[{"{", 
            RowBox[{
             TemplateBox[{RowBox[{"\"Wed 23 Dec 2009 12:00:00\"", 
                 StyleBox["\"CST\"", FontColor -> GrayLevel[0.5]]}],
               RowBox[{"DateObject", "[", 
                 RowBox[{
                   RowBox[{"{", 
                    RowBox[{"2009", ",", "12", ",", "23"}], "}"}], ",", 
                   RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                   RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                 "]"}]},
              "DateObject",
              Editable->False], ",", "0.027768595041322314`"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             TemplateBox[{RowBox[{"\"Thu 24 Dec 2009 12:00:00\"", 
                 StyleBox["\"CST\"", FontColor -> GrayLevel[0.5]]}],
               RowBox[{"DateObject", "[", 
                 RowBox[{
                   RowBox[{"{", 
                    RowBox[{"2009", ",", "12", ",", "24"}], "}"}], ",", 
                   RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                   RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                 "]"}]},
              "DateObject",
              Editable->False], ",", "0.046135489858146625`"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             TemplateBox[{RowBox[{"\"Fri 25 Dec 2009 12:00:00\"", 
                 StyleBox["\"CST\"", FontColor -> GrayLevel[0.5]]}],
               RowBox[{"DateObject", "[", 
                 RowBox[{
                   RowBox[{"{", 
                    RowBox[{"2009", ",", "12", ",", "25"}], "}"}], ",", 
                   RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                   RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                 "]"}]},
              "DateObject",
              Editable->False], ",", "0.03128468368479467`"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             TemplateBox[{RowBox[{"\"Sat 26 Dec 2009 12:00:00\"", 
                 StyleBox["\"CST\"", FontColor -> GrayLevel[0.5]]}],
               RowBox[{"DateObject", "[", 
                 RowBox[{
                   RowBox[{"{", 
                    RowBox[{"2009", ",", "12", ",", "26"}], "}"}], ",", 
                   RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                   RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                 "]"}]},
              "DateObject",
              Editable->False], ",", "0.04615478292638373`"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             TemplateBox[{RowBox[{"\"Sun 27 Dec 2009 12:00:00\"", 
                 StyleBox["\"CST\"", FontColor -> GrayLevel[0.5]]}],
               RowBox[{"DateObject", "[", 
                 RowBox[{
                   RowBox[{"{", 
                    RowBox[{"2009", ",", "12", ",", "27"}], "}"}], ",", 
                   RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                   RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                 "]"}]},
              "DateObject",
              Editable->False], ",", "0.016908212560386472`"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             TemplateBox[{RowBox[{"\"Mon 28 Dec 2009 12:00:00\"", 
                 StyleBox["\"CST\"", FontColor -> GrayLevel[0.5]]}],
               RowBox[{"DateObject", "[", 
                 RowBox[{
                   RowBox[{"{", 
                    RowBox[{"2009", ",", "12", ",", "28"}], "}"}], ",", 
                   RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                   RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                 "]"}]},
              "DateObject",
              Editable->False], ",", "0.007507175977036874`"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             TemplateBox[{RowBox[{"\"Tue 29 Dec 2009 12:00:00\"", 
                 StyleBox["\"CST\"", FontColor -> GrayLevel[0.5]]}],
               RowBox[{"DateObject", "[", 
                 RowBox[{
                   RowBox[{"{", 
                    RowBox[{"2009", ",", "12", ",", "29"}], "}"}], ",", 
                   RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                   RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                 "]"}]},
              "DateObject",
              Editable->False], ",", "0.022352550625207482`"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             TemplateBox[{RowBox[{"\"Wed 30 Dec 2009 12:00:00\"", 
                 StyleBox["\"CST\"", FontColor -> GrayLevel[0.5]]}],
               RowBox[{"DateObject", "[", 
                 RowBox[{
                   RowBox[{"{", 
                    RowBox[{"2009", ",", "12", ",", "30"}], "}"}], ",", 
                   RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                   RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                 "]"}]},
              "DateObject",
              Editable->False], ",", "0.00864026585433398`"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             TemplateBox[{RowBox[{"\"Thu 31 Dec 2009 12:00:00\"", 
                 StyleBox["\"CST\"", FontColor -> GrayLevel[0.5]]}],
               RowBox[{"DateObject", "[", 
                 RowBox[{
                   RowBox[{"{", 
                    RowBox[{"2009", ",", "12", ",", "31"}], "}"}], ",", 
                   RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                   RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                 "]"}]},
              "DateObject",
              Editable->False], ",", "0.015080497248828205`"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             TemplateBox[{RowBox[{"\"Tue 1 Dec 2009 12:00:00\"", 
                 StyleBox["\"CST\"", FontColor -> GrayLevel[0.5]]}],
               RowBox[{"DateObject", "[", 
                 RowBox[{
                   RowBox[{"{", 
                    RowBox[{"2009", ",", "12", ",", "1"}], "}"}], ",", 
                   RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                   RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                 "]"}]},
              "DateObject",
              Editable->False], ",", "0.005024545192030032`"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             TemplateBox[{RowBox[{"\"Wed 2 Dec 2009 12:00:00\"", 
                 StyleBox["\"CST\"", FontColor -> GrayLevel[0.5]]}],
               RowBox[{"DateObject", "[", 
                 RowBox[{
                   RowBox[{"{", 
                    RowBox[{"2009", ",", "12", ",", "2"}], "}"}], ",", 
                   RowBox[{"TimeObject", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                    "]"}], ",", 
                   RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                 "]"}]},
              "DateObject",
              Editable->False], ",", "0.011659295847452759`"}], "}"}]}], "}"}],
         Short[#, 5]& ],
        BaseStyle->{Deployed -> False},
        StripOnInput->False]},
      {GridBox[{
         {
          TagBox[
           TooltipBox[
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource[
                "FEStrings", "sizeBriefExplanation"], StandardForm],
               ImageSizeCache->{132., {6., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarCategory",
             StripOnInput->False],
            StyleBox[
             DynamicBox[
              ToBoxes[
               FEPrivate`FrontEndResource["FEStrings", "sizeExplanation"], 
               StandardForm]], DynamicUpdating -> True, StripOnInput -> 
             False]],
           Annotation[#, 
            Style[
             Dynamic[
              FEPrivate`FrontEndResource["FEStrings", "sizeExplanation"]], 
             DynamicUpdating -> True], "Tooltip"]& ], 
          ButtonBox[
           PaneSelectorBox[{False->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowLess"], 
                StandardForm],
               ImageSizeCache->{108., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControl",
             StripOnInput->False], True->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowLess"], 
                StandardForm],
               ImageSizeCache->{108., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControlActive",
             StripOnInput->False]}, Dynamic[
             CurrentValue["MouseOver"]],
            Alignment->Center,
            FrameMargins->0,
            ImageSize->{Automatic, 25}],
           Appearance->None,
           
           ButtonFunction:>OutputSizeLimit`ButtonFunction[
            OutputSizeLimit`Defer, 10, 15167133528138137613, 5/2],
           Enabled->True,
           Evaluator->Automatic,
           Method->"Queued"], 
          ButtonBox[
           PaneSelectorBox[{False->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowMore"], 
                StandardForm],
               ImageSizeCache->{126., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControl",
             StripOnInput->False], True->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowMore"], 
                StandardForm],
               ImageSizeCache->{126., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControlActive",
             StripOnInput->False]}, Dynamic[
             CurrentValue["MouseOver"]],
            Alignment->Center,
            FrameMargins->0,
            ImageSize->{Automatic, 25}],
           Appearance->None,
           
           ButtonFunction:>OutputSizeLimit`ButtonFunction[
            OutputSizeLimit`Defer, 10, 15167133528138137613, 5 2],
           Enabled->True,
           Evaluator->Automatic,
           Method->"Queued"], 
          ButtonBox[
           PaneSelectorBox[{False->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowAll"], 
                StandardForm],
               ImageSizeCache->{93., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControl",
             StripOnInput->False], True->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowAll"], 
                StandardForm],
               ImageSizeCache->{93., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControlActive",
             StripOnInput->False]}, Dynamic[
             CurrentValue["MouseOver"]],
            Alignment->Center,
            FrameMargins->0,
            ImageSize->{Automatic, 25}],
           Appearance->None,
           
           ButtonFunction:>OutputSizeLimit`ButtonFunction[
            OutputSizeLimit`Defer, 10, 15167133528138137613, Infinity],
           Enabled->True,
           Evaluator->Automatic,
           Method->"Queued"], 
          ButtonBox[
           PaneSelectorBox[{False->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeChangeLimit"], 
                StandardForm],
               ImageSizeCache->{163., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControl",
             StripOnInput->False], True->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeChangeLimit"], 
                StandardForm],
               ImageSizeCache->{78., {1., 9.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControlActive",
             StripOnInput->False]}, Dynamic[
             CurrentValue["MouseOver"]],
            Alignment->Center,
            FrameMargins->0,
            ImageSize->{Automatic, 25}],
           Appearance->None,
           ButtonFunction:>FrontEndExecute[{
              FrontEnd`SetOptions[
              FrontEnd`$FrontEnd, 
               FrontEnd`PreferencesSettings -> {"Page" -> "Evaluation"}], 
              FrontEnd`FrontEndToken["PreferencesDialog"]}],
           Evaluator->None,
           Method->"Preemptive"]}
        },
        AutoDelete->False,
        FrameStyle->GrayLevel[0.85],
        GridBoxDividers->{"Columns" -> {False, {True}}},
        GridBoxItemSize->{"Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}},
        GridBoxSpacings->{"Columns" -> {{2}}}]}
     },
     DefaultBaseStyle->"Column",
     GridBoxAlignment->{
      "Columns" -> {{Left}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
       "RowsIndexed" -> {}},
     GridBoxDividers->{
      "Columns" -> {{False}}, "ColumnsIndexed" -> {}, "Rows" -> {{False}}, 
       "RowsIndexed" -> {}},
     GridBoxItemSize->{
      "Columns" -> {{Automatic}}, "ColumnsIndexed" -> {}, "Rows" -> {{1.}}, 
       "RowsIndexed" -> {}},
     GridBoxSpacings->{"Columns" -> {
         Offset[0.27999999999999997`], {
          Offset[0.5599999999999999]}, 
         Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
         Offset[0.2], 
         Offset[1.2], {
          Offset[0.4]}, 
         Offset[0.2]}, "RowsIndexed" -> {}}],
    Background->RGBColor[0.9657, 0.9753, 0.9802],
    FrameMargins->{{12, 12}, {0, 15}},
    FrameStyle->GrayLevel[0.85],
    RoundingRadius->5,
    StripOnInput->False],
   Deploy,
   DefaultBaseStyle->"Deploy"],
  Out[10]]], "Output",
 CellChangeTimes->{{3.7098478901293535`*^9, 3.7098479119518623`*^9}, {
   3.7098481950363617`*^9, 3.709848212823037*^9}, {3.709848262838373*^9, 
   3.7098482887697315`*^9}, {3.709848345732503*^9, 3.70984836008947*^9}, 
   3.709849520922355*^9, 3.70984955602861*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"DateListPlot", "[", 
  RowBox[{"data", ",", 
   RowBox[{"PlotRange", "\[Rule]", "All"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.7098438054502554`*^9, 3.709843811823572*^9}, {
  3.7098480080447206`*^9, 3.709848012995743*^9}}],

Cell[BoxData[
 GraphicsBox[{{}, {{}, {}, 
    {RGBColor[0.368417, 0.506779, 0.709798], PointSize[0.002777777777777778], 
     AbsoluteThickness[1.6], LineBox[CompressedData["
1:eJxU3Ak0ld3bP3BDOKGUMqQkmU5pUIRKOA2mkgZESpLQpNnUYAwNCkUqJUPm
SjI2EBVCI49IkzgyRLNI6f917fdd6//2e9b6rc86zjn3nq6993Xvcys771y1
WUhAQCBPSUBg6P/xLyQmoZU3ffe9wQP6R4zg/HvwsdsyCRHj9w+5rRNeHX59
vev8A0OWlUls5V2rHftHY4L/kE2M4PeqY/5E7wscsucW+LmCZsXtep8hp5we
+vs/JRe3nNk85Pq7Q3/vuXDkxPhtQxZth7mp51fmxuwcsq50Uisvy62Ie3XP
viG7GsCZYhXV85ZuHXKMKzyYYjouYNa5IZdHwOa/7OVfcQ4PufcW/Piy0ASh
o3uGrM6H37V9q03v2jJkW6nkVt7yoNnnJQfp80PmwoVHX2n5DjtE5d8EH8op
/tfb5kHlD4cHuFlHJfleVP5C+KnCw4KXNlRekw9wb4am5HFpKq+n5JVW3tni
WuGXLzyp/LpwglxWsbgpvb/eCT5QoixyrpS+v/IE3JU6faV4MdVnXz4cO9z+
mkUx/T23GZYqv/4uU5A+z04ipZX3SsZZtVolbMhhc2CNlZ+ef4ym9ircAOuM
l97xzm3vkNuPwur3l7zRUg4esnwufNdihtvPhoAhm72FrWNiRAIfUPt6c1Jb
eXJvZHfnR/sOOW02PHt5lPLoOvr8hnVw6vVFB0Tqw4fMCYV3WmiPq5Gh9+vf
gHVq9ab35tHfuzfBfiUuxtEHdg85ViQN31dnZCzvS+1TOROeaCIvmunjR+W3
hw0Xcnsc71yn8gfDH3a8VJ1mf5HKfw1+4a/ArdKg+glrgKVV7y6aFUvlKRRK
b+VVPwns/VeUReWfBkdqnDm3+PF5Kv8aWKDK/Ns8kaNU/gB4/gNRw036VF7v
TLhPRch36n6q77T/4KCT67euYf2/4R9sm1Di7fGR2oszNaOVt1j6s+b59XT9
+tZwlWTmRiMxet39MLx8//a6tGB6f2waHKni1avPoe+rfAEfTW1RHT/yOJX/
D8wJcTnu/oRe52pktvIcdw8anq2l99uthMvyR45R6aHXww7AjSrJQoOz6fsK
r8A72q0sZ+8NofI/hYPK064V/0eW/w2PfmbX6DmDPs9MNauV1+LY7J95K47K
vxxW2syZrz1An5fmDW/LU70oujaUyp8It76utuieQf2f8xh+ICkaYvTvGJX/
F+wlNGWmFOtv7spXW3k24ofKI3Xp72OXwiqzo3fs8aL2qNwPn7kzpe2oKr2/
Lx6uGFf/9UhrNJW/Cr6bZPpn8418Kv8PeG3Z6NtFtvep/BOvtfKOvP2UuUDl
DJXfDLbPuH7DYBTFg/Y9cLDxnpBNBaz8F+GMSQefKryg9jKrgL+ZnlT9mBdE
5f8KK7W9WalkT04bfx39ve31rNuXaXw3LIEzBPpTgxqpvTi7YK9M1U/3j8ZQ
+c/DD4RsbReOiqXyP4CtpYJsb86l74/tgUu/7tFwP5NL5ZfPbuXNatz95ZXW
bSr/QlhlklhvjFYilX8HPGztreRXO6l+7M7CDtPVNqafpf4bVgofd311SUWd
6ruwC1aSnhE3XZH6b7vMjVbepsPt5ty/1N7yxrDGr0urHe5dovJvhZ/HFE2Z
dJLGs/cZ+FSu4/w1a25Q+YvhmU8O11UH11D52+EEBU6YzuNyKv+YnFbe98ZZ
H+8dpfGmvwA+tdRIrKP7ApXfDfbfdP7RyMXUnrGRsHFj+4NDE05T+W/Dbx+t
sD4bEUHl58N12n9ebvpK7ccddbOVF229NdRMn+rPbh5ssFtfTdiRHOYC9xkb
V89Wps8vPAnnH43V3xdeSuUvhGNarcbVLsmk8rfAGy0UHFQF0qj8I3LRn2Uq
nIY50PV468FtWRPnC+1j/X8jPFbP/OXPMzQ/NByHZ+z7pfgtkczJh+2lfP+K
GaRS+d/Dn9ZqjczfQ/3BXTwP/XnRWQ/b01SeWB3Ya67xvUJxao9KR/jnzs5L
uk70el8YHBQ+t8l+DsV37k1449Q3Srdl6Xrs3sCuSWc8ymbR54eJ5aM+cspU
NA2iqPyzYO9t35Xa5tN4bneAP3ULTTF0peuTD4HvdQWO2JgbSeXPhmOax690
ekH2fgX7XHnA1Rmg+Jo2rADxtzD95Lsqup6GGfCce6vne7yheMuxh4f1TOPc
fUz9VT8InnR5pcMDtQIq/1VYKmpM2rMXV6n8L2HHLxx7qxHUfpWChajfp39v
6mmy+U8TDv5rO35RLdUv1xae4X7wyPtuih92/rDj95dB0nn0elgGbLX1hmCY
HbmwDubsqHuhtZ8+r30QflfkM1g1ntY38lOKWnlx/o1anVL0utlq+F1pVv1/
62k8eR+C5dsvfI7l0PelpcIfg7xqDNLo7xuew/VeTasftrD2/wNv3f77sLQt
zXf66rdaeZJTy6bPGU/lc18B/1FaZS1gSfUX6wub3NB2DjKh+FGZDDvskB2U
CTpB5X8CR2q1t3/0puvh9sN6FXnmI6bT9dup3G7ldUuOXOUy5ySV3xJOHeUu
HpDC4r8XLDe8SPnIVGq/9gT4sZp+yrw8Nv/XwAI+WSfX8Q9S+Xvhm69/73n4
mvqf96Q7+Pu78zL3eLDyW8DPwl2P7dZl7b8PPrqp/NQSC28qfzw8dmeTynwJ
Wr/pP4Jbk+yyztnS+s79O8xZfuNP4Upav8Uq3sV6c8O/i6bJrP+bwg7KW05t
uLCLyr8bNvVds+mgkQuVPw7OfPg8V16A1o925XD0IfcEhZ/bqfxf4BqjmY5R
12m9VqhQ3Mozy3X5ICFKbl8Mn59my09X30Hl3wnbrv1Y38Jh659zcPeuC9aq
PBb/78PDFhk/nTSZrietG/6xZOK/YXNpvdIgV4L4kOAvMMeBzf8L4TnXRo4W
D2Ptvx2u3fVjTl4cvd89Br4pbnRkTuIpKv+9kv+NXxSfKzvhU9znmp9bab7Q
HXMP8Wxq/IYn62n95roAdlGWsK9c6DrkGLd7/2f9XB4JL5t5pseilvpP7204
SUo4O0yb3q/eBvv3PF4htdt5yLajSrEevHM4INqVHDIPTpfQrFgmvHHI+S6w
08PhU3xiaL3WdhI2dhb0+q1C3y9bBJf8J/Z+QYDbkE1a4M3xllqNbL3pOaKs
lfeoeOm0aZFU/hQ9eIZHXOv7AHL9Rnhypa++6hWqb9ETcD3HVVG7muZj3XzY
IvaX4chP1D9c38NHt9+pkZ5N9R8jfr+VZ/RC8Z3qfHK5DtzzaL/SbGuq/15H
+Pkt7ZXT9tB8on4U1s9df2HeReovtjfhlot/nJ600PtD3sBpdQ+GFVhSf84X
e4D1fGWaYYoPladtFhzletjgjQf1X9l1sFdVnYa8DCt/CNx20H9d4Akqn2c2
rNEh053YS/0t5RUc3eG6UCyQ+lv9sIeYD3SiXVxD11P5Z8IxEUoeD9OpPXTt
4dfXYt0l8qj/ugbBb57VdRqfpOuLuTpk6cne62fQ95W/hKcJb667tJDWB72C
5RgPN7lCwl2s/NPgbX7j5FQ+UnltbWGvjWJFsbeofCH+8OXIzZKTjlH75mfA
b132q/CHUfna6uC6sD/259Oo/mT/wX/f5GheEqf3m0ypaOVtuJ59YJYixSvP
1XDg1W3bmwIoXqUcgveqrl8nFkvxpj4Vnuyv8/jFTlq/ir6AuSI3cko1qLy6
f+CbAlY3MkJpv+aqXon29kysbatj+78V8OUs+x1yMhRfy33h5Rsj326YSuOr
Nxme5jdXLn8/9Qf1p7BTwgljfX9bKn8/XH82+j/XNDMqv8oj7D9iP99Kcnai
8lvCP4ZPmOU+lvpnmxes+U0qSLaS+qdsInzV943orljav5nUwNUT78pKvaX2
9eyFdS4m908wovenTKpq5anGakjf/0T1W28BB1wIqZqeuYnKvx9eaadRxYt3
pPLHw72B3xKVjlP9uz6C9yhMvKfzYxWV/zs8NqRVNX0+9a9yxepWnuxZcWVD
Lv19rymcZ3FmUrvMOir/HrjFs9ngoC99vm0cvPT2Em/fSnMqf/mQRdJs/021
ofJ/gfnFM01mnqLra1OowXh+kSkpfHINlX8J/K7x+Wfz+3ZU/p2wc2SWzC9t
6s+e5+Af6TL/XFQofqfch9WOlMR5FlL/ru+G2/P0PEaIUnwRlX+M+fPE6zPD
Zam9dRfC6/Si7+tvpfZ23Q7PPhqnqpxB3xcTA5ukDJvj8mc1lf8eHKU9Z9EH
C4qHvZ2wyuv0yknnKZ6pyzzB+kcmImtVvzuV3wi+NNunxyCM6itkC/xSxjwz
S4T6d/5puPh63vK3yqz8d+G9mREOSjrWVP52ODnXSL72L7WnifRTrM9CE5S2
GVJ5PQ1ghaLZy6Z40eeluMLXjrg5+v1YSeWPGHp9zY59DytpPhO9DU930bQq
a6fP0+XDrpx9FcKlrP9LPWvlCS317a+VZf1/Luz26GmCyW02/jfBb/uve3ke
pfL1hsOlVU5BbvdZ/qMQXhHxUf6BJYt/H+Cm5dar9xnT+AiRfI75RbHELXcO
XU++Ljw6b2zHpHSW/3GCQ8fKrElRo/4sexz+6qn3faIlrRdM8mCxftN40Q9U
/57vYIO2C4aN8Wz8D3/Ryuv6tiLy0RuKT/Xa8N/d7SXqtTR/ijrCW87OL89Z
RdevGwaPWrl/d2Yn7bdcc+D6D4KvPe5QfIh5Dd/5a//S7msylV+0tpVn+S/8
dxGH1q+9WrBqSuOUrwk0XtUd4BMHNnzOimflPwJfD+mqdf1G4yfkOvyuIK74
Uw+1d34jXLxpq9PnWIpPbcJ1rbx/tjMf7t1E6yHZGbCTwfKHR1MpHpvYwVvz
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
BW6QqvHLCKP1tMkzeH/Xrscx/VT/nr/hmvstrs3L2PkvVUM+r/K1xXPBWsov
1C+Hh6vbHApgv8cS9YG/T2lbr7Oe+qNuEvzRdnDB5QT6PtfHsMpJud/9NdQ+
Mb/gE1ffuE/XZflPZSM+r6Qu4MbnpbQ+6F0Kp42OOaCwkcavuifscOJbyrgQ
Kp/tZbg3tKpy2XiKnyFV8Kzm31GvJWn/lf8DthuYMxgiw86/TjRGvBSrmrHO
mrW/OWzqUufwZh/FN5O9sKVF9+DzcJb/uAh3S8tlfUug8ZlSAXMaVm1zX8PO
v32F29/XtS8zos8TncDj8ySdXCRs77PzvybwCBndW1WSbP+3C5bPGLVnyybK
R8Sch7PM7SxW+tH1lj+AixV8Dk1QYudfe+D6YpN/zxZR/1UftxD1mXkgOfoR
jR/bRfDbqICiOBHW/jvggkv1xZMOkfPPwmv0JnL0VFn5S+F7nwRvitXQfCr7
CXYfyAif84vitYnsIj7v+cLSLsnpLP9tDG/V/U+sop3t/7fCpXNF+9td6fX6
M/C9Z2HzTCNZ+UvgnaeS8hadYudfO2BH00Waho9pPLmOWcznbZ5fqLv3H513
ilkAS+9aczzwCxv/brCtnlLHfZYv6Y2EMxXrMrxXs/5/BzaYO29L5kTqf7Zt
8MSHC4UdjGg9FTJqCZ+33XnePaf7ND/mz4Ob2+Ptvtiy+OcCf9Sc09Aqz9r/
FHzxXNAyG0kW/4rgimIzicERrP1b4Nkxggb+Z6i+UkaY8HnRk3L3vXBh+S89
2Cr59kZvlj8QdYaXvzCt2sPWF7on4Jvxyj+LhFn/z4fXjH9VU/CF+nfMe5P/
s18vFzdF+7Wqq917Q/XdqwNfFF01rWQ/zVfqG2CXxnCx1KPs/O9RuOKdDl/G
kJ3/vQnPEfqy99ddas/8N3BTiyhn9zkqX5uYGeaHFqt1otOpv8vOhp9eNt/b
cJfFv3Xw9S/i+I/2r54hcArXrC4vmd3/yYbXaWobz2bnD+tfwTVbNi/QKmTn
n0XMMV5/OL7y6aH61p0Jf3kw/+b1YfR+V3vYRSPOqiOOxb8gePRxn8GsUdS+
5VfhqPpXP36MoOvrfQkrf92cWy7H8l9CFliPS/LHZW+m9ZftNLh6+lSRw3G0
/guxhZ1TNcr+E2f5f3/Y7N9Xj+/H2PnvDDiy/3nf8RG0H5D9Dz7c5j7m3jQa
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
/j5Y3thRS7CTPf/5ErzF8tRg0wGW/6uET7Zdu6UzksX/b7CB0vEDFuz5IH0T
0vi8aPHo4tcz2fOvTeGLJi3rjV9Q+ex2w3Ifd7iGnqB8WNgF+MWYCQtKn7Pn
Pz2EbXcIB4yWY7//+Jw2dH8wp2VuNHv+jUI6+vsJu/JnM+l6zRbDaV/dlmrE
0Pzs7QH/Ev0vZrIv3R9Ji4Xl2t8ZzvtD9ddQNvT3S9TOaRiw3/90D3nWF4FH
I2i86stlID69Pr5Jvovlf3mwku6ft8OsaDzFboNLxD9UfF1Pr1dGw1aTTJeU
LKXr6yuBPQ8OC70lxZ5/0wkv73I4JGrH8t9jM9F/ZKYdGHxI66EwQ1giONIz
y5iup9Ad3vS14Uq0C81n7VFwtILt6JBK6q/yd+Gm+J5X8T10HsPsIzzjhLRK
/Q1aP3iPzsL6TLreONGDPf98Pvy47XaV4gDtFxs2w1mDgocWj6P65UTAC7RK
w58Ls+f/3ILvFq+etnGAxot7KyyR1rN+pjrVZ+zIq3zesEzFgtUDtJ6o1Ifv
nkr4KJzGzj87w9L6/albhdj933A4jxPyfjJ7vqFdAWy/027zxGe03whrhtv7
1321TKHXCyWuYT3VfW+t+QNaD7fPgSc/Fxt4+IPqR94JjugKdazeytY/x+B3
q94cWKzP8r+5cJW/ct3bnXQ+Je0tHPltbtdsXVqvN3Cu83m1YmYFBex8B0f7
+v+e96PxpL8ePu56Rtn0Hzv/HQp3fZY5ucGd+k/sDdiy+L8gc7Z/rmyCm3ud
tNSOUX/oE8nG/OrXvG/4Mvb8by1416/hG498pnyR3VrYPDh3QYkhO/8dDF/t
TFiRGMjm/2twznyDA7Xm7P5/Azz1m71e7GRan8sL38B+Z86TGUfD2f5PEz6y
KCrqZBl7/ofNkO2jeG5SbP3rB7tN2XUhw539/jUDjooOfRScxM6/1cFW0xZ+
D4pj578HYfG+BVozrOn7U7g5WH8MnxbxfTJdf/0qWKL7cU/kGLb+PQSvcHbe
P4I9b0Q3FZ4kONzMWIjlf57D0+3/M+IY0vwaMwCn7lcXW8vyT+VqN/k8XVu7
2nYDyuf0WsE7lWs59lPY8y984XbLOZlu7PfttsnwKHMZryPs9xQhT+B9E7Vc
Mp6y33/3wUlVX6r4kuz89+RcPu/jBr079yJZ/sMSdgmKn72zlr7PxAs+d22j
aoIhe/5rAqy6YFtl3ie2/6+G+zbO3lkjy87//oRvZ1c8NNzO8l+T8rD/y0jc
mmVG+xNdC/jLnd3etVdpvLnugx8smMQ7Ik/zVcwlWP7DF/O7xhTfyyvhg12H
Yg01aLz3foN/OZx+w53Onn+hmI948Tu+YFEPtbetKVzfF3qlLp39/ns3nHb/
8P0j/4+qO4+nqmv/B24OTVKZSihJSaMpUR0hSkQlUikklKEJzYYSRUihJBpI
KClkrKgMESVEI8UJJZExqd+ndT3f3+t57rt/3q9znHP23mutvfa11rrWCHr+
i4FDTubbbWxg9Z/7FM520PnpnEbrX3/AsRLjPhWcZe2docx9HJ+cz1/eAXr+
04fLvmosjohjn5/oBjedH2O7dBbFf6LhlIGAJv75rD0Segw7XNj5KPUbe12j
A/7kfcLQ14byv0hmoz3vOPfb3Y/yv3DgM8KOr6aGsO8v3pn9L35uODJUiuKf
5+GWNQE7t3Jp/tMjeMD/WWSfMx1/O8wnPL+88CZbHxAwIaeFs+1Ynmw3xUez
lsAXvuiLVVM+aq4TnOr14cgPXXZ8EhHwiFVGjxX5aP1rAZxdviDp+kF2v/T8
Aq/5beUZWUjxj3G5uD/GpS4NM6Dn/8VwyL6HE/fH0/V3hEVtj1wU/0Tzv8Lg
vaVKxyXfUvnPhce1m+9qrmDfH9kMrxlsmztwkeZ/jclr4UQtlkl6957mf2nB
vdMqREVus/utkj3M0/Phrvp2Wv8eAud6rFLIT2f1LeA+/KWcN9L1AatfWU3w
Qj6Rm9ZhlP9nZD769y2lFmc/svMjoQHvCe8zFfGg+b9bYV+9ew2mV9l4gucp
eHDL48l6Ouz9iRnwKMnu084p7HjrPsAJAtk2eyJY/1VIpAD984db46vm0vzv
hTDP86qkKZPY84TjZrjJ0Fo+VYL1DyNP/nv90Mo6FcqfXZwOWxrJhMpTPK7v
LVwbaFxy1JTKv9CDFk6c9YGq96sp/j0Ptmw3jlxzivL/b4QTC4uXLKf5vFnH
4alFa8IdaH4s9zac7m2yxyGaxW8lGmCNiI/bl+1m18OQ/2ELZ7SsmpX4OJr/
rgq3d2noXNVm8bvEDbBh6vOP4Tso/68vrPm4/1oV5fcVSoWV067kB3Sz+7FG
Hfzty6+MUWo0/5/nEZ4/U5RurKf1BpGzYH5h09WWxuz4itfBL342uSQGsvPf
dxS+v0nsptcb9n6lm/AmroZIYtMadvyv4BRfmcOSQax8BwzDU1zOLZm3kZ3/
rBmFOH+xhbbzt9Dxm8OT7aN5friy6y1xGLZx71z7dgrrLxgmwsNbKz9X36f5
3y/g8+Hx6ysOsvt74i/YbcYqh4ROmv+oWIT+6Ls2vY6p1P6bwcoxtjdmUPnU
OAD3rFHxbRVm18vxGjy+P/jDq0msvEc+hzOiK+20T9P4Vz9s/nCDfE0n+319
Co9xvc95KASU0PiPCXxtePPEwRtU/j3hw9fPl40Xo/l/8fC35xoza3Po/vcM
fqVS9Vk0leJfPfBdu8wdF76z8iIh96SFU1yiK6Qbzq6foTHcZDS5t72K8t/s
hYc+8O9Y95m1z4mx8Gelik6X3TT+UwL/HeFvm7SYxv+64QvHO5enuFL8f/LT
Fs6WfQcFfP6z/sUQNnOq0Jwpy65PpAe86O3b81kUvy2+CFv8ueK+04eu/xM4
eK6sUCTlg1Xq/OfPf+eb/Sf/sXRxC8dKLE6LO5by3yyHxzXrRq/9xp7nslyL
/60HDjdWWMr6o9wo+E38qxNcTTr+Ilhu2dZ3DrQe3/AbTPtzsPy5nhIleJ5S
tQ+7nU7lfxnco3PRcpjyWda5wI7Cd46qVbDrI3QeVnaf07h3H83/fQjvOdW/
UUmPxr/b4PRi8SVenRT/H1/awvFxkvO4ZcHOX7Eu3FWdeLDrJe3/sQN2Nr8g
rNTB5kMpnYU3u72JL9Rh86cs8+GHL5YOPtxF6z+4cJ7n4fUqR1i8J0usDOVD
dMmNjFg6fm04bVflPV3KNyOxHa7cYXnfk/I5GIbCr0LVPs69TfP/c+BaQY/q
nrWsP5T4GaZ8sez61I1+hvrm1Viz2YnyX2jB3mXhP9JH0vx/O1hxT9C6t2GU
/z8Yfmq81nKxGbu/RGbBh+89Uz4dT/PfG2FLW7VLnrTfSJ9oOepH4/WKKQWs
/6CkDs8cd1fo+CH2vG1pC1/s2BYsf5CVz4Ag+Pu4Yb9jyyj+eQ8e3vzc55w+
xb/fw3/y780xv0vrf4Qr8Dzk5Cvh5EvzHxbA8oEPef0GKP/dJvjc7xPr2xMo
/3MA/OD7MseblP+y7g48fXOMRnMbrf94W/FvPsqdR/mhFP8UfN7CsbtupT2n
jz0POM6FPUdFqPq0susTaQ3reu6Ydf0J1X9/+Pwx0QCFCjr+W7DM9u5KvwGK
/9bD+1ce+CuiR/Mf+CpbOFe0vt5PaGH3j4DZcI3TIjnDLbT+yRK+1hzyII3y
N3B94D/ZzXtD6ij+mwIn7Pc4k6tI1/svvPELr+aV/TTfeWZVCydU94vonTh2
/evWwt/TTCbkzmTzu4SOwgZPntW0OTFrJMFew02TVf6w/IiO1bD7700Lt0ux
1yN/w/Pt1XRXr2AuVnrRwjm4PzLtbyVbb9y3BjadKV6c8IbNT1Q6BIdsj6z8
UseOzzIBHvXLbMnPKhrvqII3/XQ+HCjEynfWICyvHyKnH8Lab+60ly0cE8uE
UEWaTythCj+bfMGjQZfi3d7wiWtzFifspHz/V2E3gY1Wb/jY9yVWwJmjV4uG
nKb9Hvvg9K6VCjH3Kd+fQjXq25u7Dob/6e+tgh8OdY5Yxkf5vvbDcp8S53uu
pXjXFXj5JK1R1yaz9jawHN7xTLl5zwDrL2X3wpJPuiSedNF+b3KvWjhFu7lx
R0VovftKWOVZQ7K9JMX79sFZJzT6Iym+4X0ZPuHpGxlF862TSuFG1YMVF1so
33U3/Fv6NmfnJNb/EJataeHEDM+7qTaa5ruuqPk33ywuIUWSfb/Tbni7pUXw
PrqfRsfAke09NWkyzKVP4ceys31yT7PjH+iExbt1l/W/Y/VPWaYW/Rt9Rd5l
lD/cSh+eunjSe+5C2u/RDXaddVmv8x77vuxo+G2SmOHsjxTvLIJVXNIGzSZS
vosOeHl7X0pWA6uPRpJ1LZzydoEfC6NYeffmwMfSvF76Uz60pJ1wSsk18+r/
xDvPwz1abqceFbD6I/wI7jzNe7n9ATs/Wu1wROjKksfH2f3eacJrPK+8O1H5
XJTy3S6BS3Wt9DY0sfGtUif4V+saqSPz2H55A2dhfZ03UxSs2POVcgHcUNMT
OrKY4n1f4KSVFQMX3tB+n+PqWzjqI6uvSsrRfPfF8AKJoY28Rux6t26HI+JX
3P/UZcKOPwy+vFnD60415fvMhfk/JByNX0DzvZvhR0LNfkP6FO8Y09DCWaJj
vbeD5rPXa8GWT4xUuEcp37E9vCq5c7eEH+U7CIHFAn03nalm9d/pPuz2wdnj
Me3HGd0EZy+2+XSgnPI9j3zTwll8ZXefXSbNd1aHbQ9Mf9AuyNpn5a1w4WHz
lrq72ez4T8H8262/7HagfK8Z8OFL+w3f/mblL/sDXP03stGL5ku1Cr9t4ez8
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
D8gbrjJ6TPHfKDhjDt/lw7tpvl8RvG51wfwLjex8a32DCwaPNvHYsf6dk8Q4
Lqf71IW8TAva720ZnODkO2w3geI/LnB1zbOUPAea73cONq1x37LWhJ0P5Yfw
+/rmI6N0ab+3NjhVMCNi3G1WngLHi3M5xlmfDw/Q/uLZujA9H1O+3x3w/t35
pfFX2Xig1Fm4U3D2+LpcynedD/8YmK+cT8+v3lx44QEd4+KjlO9CbDyXox0y
vyAwjOJf2vApx8MP7iuz+V/C2+Etc/oX3NVl8UitUHh5rMbl0jtsfptTDnxY
cszVEi/2evRnuLLJW1z1CuU7Hj2By+kbvWSe0Wb2+QOacFTtrUmqbRT/t4On
3pqWXfmBlW+rYJj3TPxHP9r/MDALvrUt4+M52s8+uxG2MluVLf6b8t2KTuRy
YvduWJ1D+49JqcOWU45ZTvzEnreNbOG17Xn7VktT/CsIlsz03z1jFMU/7sGX
G7xH5W9g17f+PVx9YPvoKZRPUlhYAufz0H4RLX3K97AANshXlL8UyOqT0yY4
6ni0a5cmXf8A+Oyby/uNQ9j3l96BY37uS/ASov0O38BFc7qOe9N8bWVBSdxv
wwofDvKw/o3VXHhbXcairRY039Uatk02uO1Kf5/tD09ocPOSnkPr3W/BcnMu
tyrrsP6JVD2cWpanfdiB4l98Urg+orIbh2j9ifdsWFfzrOrjcHb/S7KEDWwW
Z/r9ZuWj3gf21L/+J5jG44VTYJPZ0/Zd+sKeP7VqYZFdOTtTjWm+619YwfXO
OfsVFP+fKY36NPzi0jhXyve7Fm74tnN43maKfxyBI/c8VXO4Tvk+kuC7MW96
k06y9t2qGhY4/TjK/TQ73sDf8Ho72wu5oaz9zVaSQX+k5+bQbkc6/jVwylHd
zLMRNN/zEFx148C+4Xa2f5xRAnz4x1CanSMbH/eugr/Yhkc25LH1G0mDcFft
n/4kZ5YvpH7aJLQn/k/0lxxl4xHCpvD31uGw1UXseLW84ZZpMveav1H85yqc
rSZg1TSV1b/oCniS1Nw8MyU2vlnaB//6LcCr84PF5wfkJ3M5998umiZXxfoX
yqtg4U0z7BbcZM9rVvv/2XfzQml/9nsD4+DU6P68Q1+esuMvg2Piwv0v9Rew
4/8JT+RbrfCC8rlLTZFFe5+0VnrSK8r3bQQrXD3qz2PC4lvee+CV+jai8jsp
/nkJ3pS9u/PIQsp3Uwy/Dn0+7/dI1v4Ld8Elox6d3h3L6rvWpCloP+dqKk3y
ZvFbJwM4WFElaOwN9nui3eGAlZH899/RfncX4LHRleHySizeN/AYtghX1R/b
ytZTKH+HT16vWy3xk5UvKyk5lH+XEUa+tP9MoB78skGpz5DWL2fvgu9tuio9
lMbqb2skXHdpV3aiLK13KISPBEj7fnhM7f9XeO2rMx/HUD5X74nyKD9Bh4OP
N7Hzn7QUPr3hXlDh2nJ2/M5wusqy7+qSRez4z8Fh12p28Oxk5UPrAbx3/y2v
qu0v2PG3wm4LbfWWiLD4ZrS4AtqLMaX5erMp34kOLF0+wcdbjeL/jvC+p7NX
HL3N7vfK4fC9Zu9nrqo03zUPtqm1lrJRovUuLXDqo46g07Npv+OxU3F+6h/7
+MdS+78I3tnuFbVpL43/OsCPpCZb7n/Czq/RGVh/69avt5+x9tg7G1bUat4c
t/ohO/5PcG1abUfDeNZ+14+ahvp6dEPEbxOWH0hYE154cayN7hwa/9gGX69/
v+1DPeV7Og2rTFt54Jcf1f9MeL2iwC1z2t+i9CP87cR0iafj2fjVgIgilxMX
mdCxaDz7fGU1OH5vzx3Ve6y9stoCJ6SHmfzOZ9czMBCe57RodMlxGv+4C6/u
dL6RrUDz/d/BCp777Y8sovn+I6ajvqu//36ch41fGM2HeU7LCyrPovE/G9ii
82oEP43PJ52Ac7buOnLwGu33mQaPMZ9f2+vLXhd+Ay9xqLs+8xS7X2sJKKF9
P9WlxFnH7DQH1hax0oh9SPv9WsHypbs3v9Kn8Q+/f7Y0CZJ8zMbLBlLhhY5i
sZMnsfZR+TXMNZOc4ujP4k9WvDO4nPCUKUI65XT9VWC7jmVnVGh8J3s93DVk
yP8+lfUPWo/BFO+ifCfJsPA1ueVHddjxGNXAnbk5Gu6HWfny/gNfGXjUss6H
9ntVVuZy6gWbP5j2svJZb6H8f88rdP87AsfrNbwR02X3F60b8LgNO6Rik9l8
QKeX8Lfm9pxbbex5OXoIXn1ya2R5KT3/Kc7kchbfNHLcS/NpNUzhouKIkhY+
9nscvWFT9Q+NoRns/hx5FeZMNku+uY/9nuIK+PTet6EO0ux89fXBXu6ed+cr
s3ikksIsLmdjisWVwTI2H8tyFZwlMX55SSc9/+6Hy9cUrHDTovkfcXB1sIoH
vxY9/5bBfUO8wmMmsPiaRA98ICJuztWdNN9pigqe7z33fOZco/3+jOD8+Lf6
03Mp38ce+JbXpJl+9ez76y7BP/uO1d0up+Mvgceqtju6rqf5Tl3wsJBBxh17
Wu89aTb6q50NxhdEab93A/i/45/u8KhZ/XPlhVm8su8CrBvydleMHSsvSk/g
NZkh91dspvne3+GOhtkPt9YyB0ipcjnnOzsLZY/Q868e3Cjju1PgNsX/d8HT
7lSLP69k9U8iCm4L4g94/ZhdD8NCOD05OtZEn+LfX+HioB2JM7/TfncT56D/
8O7J8Cza/6duKeyca8MZT/ErIRe4WHJtypXZlO/lHKwwYXhLujYd/wN4cslu
/KP5jq0w5ael+X7ic//n+blPB9aXuFi1J4jyHeyAsxMGVow5Suu9w2HtKyt1
djhQ/D8PHm/SMCZ1NcX/WuDSJRb3aoKYuWPn4fk9YNd57jCbryahDTstLFoo
bEXxPwdYY6/bavVCWu96BjZzSecNtGLXMzEbFrA4KXx9DGuf6z7BlpwJ04WW
0nr30fNRv3l6w0fX0H5fmnC4b7LDnleU730b/G5xtKyKCh3/abh4ZP8dNz/2
/uJM2GeeQuHn7ZTv/CM8MruuqmQ8u18riS7A/VntvIPjSfZ7LNXgqCexWyuC
WHkM2AKvPJbjf6mc1rsHwq4rTPcIUb5C7l14f85TWYNYmu/4Hr6l657nXUX5
vkcs5HLcI2ZwjJfTfO/5sKBE+8j4xex5OtEGTsmNO60rS/HvE7DaE4UTIo9Y
eRW6AydaWCdv3k35Xt7AU/f2vXL9Rc//Ampo3z22cVUjaL73HPhSe4vlm6OU
78IKnja2NMOpgfKd+sG+PcNbEr1Z/VW69c9T95137qF8n69hI/VVq8MoHhLA
q472OnXuo6xGmu+vAu/+NIZ3/QZWXrnrYR+eGkU/a/Y8JOED/3Fsq74+TPv9
JcOnZh04MG0h+3vPmn+ft+iiUusJynf/B74UsHvTigWsP1KnrIHnn2OvE/5y
2PUSWgvbKDiH2sbQfN8j8B//ostdVfT8ewP+qezbNzeU8j2/hHmMBeZFLGTt
VfEQvO2YQueZBlrvPV2Ty/FPsVxTvJO130pr4IsNYh07PlC+l4Owa/dDTkA6
G98MuA7XCLc5B/Sz/mpWJbxp6pSZib9YfecOwLFHVZRvtdB+d9O0cH50RV9f
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
nsuR0BghfutOITv+ZfCaA/s1HafT8bvA1+bKqI8boPnP52G+aR9X21P7ZfUQ
jgyqyfObztrHwDZ4xIp+jZEzKP47PpLLWdX6fFTNcvZ81KoLh01q48yaw54n
pZzgmGVNDqkitN/lWfhbsZ/VPVl2Przz4dielybNnux8J3FhlW/eFu+vUPkX
i0J/fYv2E6toWv+xGH7rpPpohhnLH6O1HZ60aInQrSBWH5xC4ZiWjsw06wfs
+HNg5bF97x4n0/F/huNjVIp8NlP+l9HR+D2to00UhVh9UNaCDwb5uEispv0e
7eDOBo+9Bqup/AfD0hXCZz/QepLsLHjHyrsNyRMo/t0I/y6z5omj5xWpkRe4
HB9VvYIQJVZ+jdThccXmDg+VaL9LW1h9y+m9XwRp/UMQHN/UOUv/Jbse9ffg
Wzte33nRQNf/A3y9YqNWsTDLR6QlfBH9IZOyFq1k9nlOC+Av1V8tsw5S/pNN
sEP1UZk+fcp3HAB/5OeNMd/B8tkM3IG1Lt/bYPmU1Q/lt3D5yjX7XvWy62sl
GMPldJfNdn1Zyc534FxYREZwTJgb7fdqDVN+f/b5rf6w38XpI3/rsfMhdRte
K9K0PMad7n/18IhNJ4Xf0HiMN98lLmdfxLDSrhKK/86GD6nbRP0xZuev3hKW
iXB5zhtD+S984T+jF8QaR7HzoZVy6d/8Zen6MCfW/3KqhWOLTdeuekf1/y/8
bUfc6KzprLyVzoxFe1EsNKR7lB3vwFrYvYMbu+Eme15TPgqPmKc5ccCD5v8n
wUoWzQ7Fuux8BlbDntbLH3yhfIfZv+EzMdlLf2rT/G+ly1xOAP/ZHar6FP83
h/frdo+7SM8vRofg09+b1/puZvcf7wT4O0+1A+9iyn9VBds8OLIk6SWt/xmE
VZY739/azj5fWDEO/avliiW+X1l90TKFD+wu+bpuNPv9Tt6w5SS3n1a03330
VThv0hWLPbNYe1xaAa/qLP687Qbrbw30wR95dq3psaT1Hwrx6D/+rRw1UZDV
V6tV8LQgiScp3dT/2Q+HXtge5/uQ9juNg4dFdE0H7Vh71FoG7w9Ie3KWQ/Pf
e2CpqbJPZ2lS/pMpV7gc65N3s/kOsf6CtxFsxVNRM6xK138PPPGmWHDJf/b7
vgQfvPRTUmsJ7fdRArtVLwp8VUbrf7rgTy/8Nnz/zuw06Sr6//vfS4ql0frv
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
6YR7JC7rB01m7aNUUprL+VF/9Mqe4yx+3q8PH8vq6bg6g+ofOcPOOekh0+vZ
eMjiHJwgvPtSigjN/z+GxV+Yry7Sp/n/L3C1ZP5i9Srm9okyOD7buA2ft1D8
RxcesZjDo7qX1r/aw50FT72Fimj/p1PwpumT8C/tf/QQzv7RG3+E8i0lP8Nr
A7w/Jk5jnxuOl+VyjMKeGQhr0frXRXCJhPTnLxNo//dd8ImwIypxdlT/NgLu
LY+adS6f8j9y4c/arY8uy1L87xMcryuwxUGV1v+LynE5/507JWIpTu8/2nDY
fs2Xlyh/qsQGPji9xPIZ1SvtC4N/Xd85vnw6rX+/D2tv7J77dQ57/pt9gFMW
CT07fpH9/mChKVxOZDS3zP8bu17ZGvCX6P7mNn12vtu2w6l+z93sHSn/NRT+
1LteK9mN1r/fg5+r9rrq0/3u/R72tpCPFL1K8W/+qXhe7C3TsbNj7a1GDXZJ
193L30X5r5ZwyOWmqN2Uz6F9HNY5L2Z15Ra9/92FV4/b5hcczT6PqYPLfPqf
7FxD+T+88hgvHFw/IFxC8Q8VeM7n5R5XJrL+VNEC5klp1G8KYPeDWSAcYDKz
tz+W3b/Bt+FZPik1eV/Y+De7Bi77b3e3DOUztvFM43KiBXpXFRXQ/j/K8KKs
Uu+Cq6x9GW6B7Qt1D/y5zPp7b394lZSP1mpT9v2Tb8IfO6uFDtH8Zk0VLN39
YPSn1TT/MQyX7g7UuP6K4l9K07mcWisxw1gO1f/YBL+Jmt7VT/kRMYdgPcm5
y87Es/65JBk+ZjTyoJfyCfoq4MzZc5Pl/lL+4yA8WLdzd78huz5mCjO4nN8N
YeNdZFj7DN4AF/0Z+3jqfsp/9YPDHZJdDorS+tck2FHJetISX3r/K4d13lTe
jB1H8c9++HhRjbJiPuW/zZiJ8bFmYPwlE/Z58jrYxm6jjBvlp9R4w1Oygxab
yLLrwZ8AB710Gb9aip0/7TL45Yybo8LE2PWz74UVvt+vPGlJ9X/lZ3E5/n4N
i0QdKP63Gl5z0uH5+V/s9/d5wDF2I6rbaT8fxStweTWn9iztZ2xWCo+76K/u
mc/Ob/BP+GvVIpP+MGr/cgrorzVkts7LZ+e3zVDh//obNh6X3A+flbh3LEya
fR/DONh5m+k0eWs2v+5dDI8ySbk+3pPy37rhuupDK11esfZSI62I+6G2cv2i
pWy8xb8CjmvZEh0rx/6etiv8d86TaVNW0vHHKrL7+16CBBtvxDyB6z7knjkz
n/JfO2Gp4czGUzfY3+uTnI32133pz7Hb7P5V5MBeRX5P7yxl39/MGX7noD7b
S4U9D4LPwcdfnd/vHED5n4/hoQ1/D858yp7PbV/gUZtPbc48xSwpoYTxgHKL
uymtXzVcCrcYWP89eJrdT96O8Mynfj4iISyfIvkMXLwoeAX/Vjr+PHj1zpf+
lsXU/rmwZP+udw97Kf9PfA7Oz1BhQfx1yn9bAp9OeS10wYjmv3bDW33nLcwZ
oeOPgneGbDGZepLmPx7AXquTqvjiaf1HK9wzkGdyeib7e2bj5uL6j1awSORS
/qsO7KB9d+r4Nor/7oSnmGkIytZQ/D8cLnm8wsr1J+U/5sC3TBYLCklT/98M
Z0XsyUwPpPiviDLun5sb9jjn0/6PWrAHT11Q0mHK/7WGp16M0xDbRfN/YXDq
5j5fmT6K/2TB6sHRwgXZFP9rgsvU1FylFrDzGyM4D/1VzNDsg+Oo/os6TPMv
7Hj7rOCht0nHep+xv6cYAqt3pm9v+Uz9fwb8qL5y7Duqlx/cAH+3mBY40EP1
z8eocDl+2kE3U+ZQ/6cKP+x8ct3DlY0/JbfBz0f3DCb/ZfefYRBsfFXi7oP/
1f9Jgwu1b9zSpfzb5Fq47oztxTlnKf43ej6X87TO6cItE3b/8KvAems1Qw+r
sHwhbXP4SH3sg7mb2ef2AXBOd2SrwDla/3QLtq4z2aZB6/lKquGZg73mE/TY
86ZvBL5907XuzCpa/zRXlct5PxjutKuUjS/NNsPV04u+rk1i3z/4CDxfQVB+
wS5q/ylwVFeFogLVg2irhPk+rR4IaaP47xDMOxTZNvYCxf9nq+H9zXKUt0Y2
u37eG+H405a7dkey+zn5IJz/kNd98zE2vq65Dv+aZvvhO4eOvwIO+SC/WYSX
4p8D8OJZP/lvUr1E+1kLuByrAWP+mnp2PmPWw+vSRD1+/q/+jS/cJzqcbtzL
8qH6EuGmxn//0PPvNTyD/cO+j9lv+FGDkFtsNvv7wdPVuRzZjOjDVWKs/WSv
hSXu5f0dR+t/27xgl3u7Nb+6sPwqyXj4k9bOrlg3tp+R4UtYwePM9p1PmL1/
wbP0tY/He7L1rslTNbic865VBxWE2Oc1RjAP+4f9fn4PeEq1fW7DVmbty3D5
ppGauyeY7Z/Dr/ZOk84zZI75Aa+3kuWNuMO+T4msJpeTdP3vya/V7PO+lfDG
32PPLtrBrOgG35cNbF9/n/282UX40avVYSNfH7DjfwabWJ0W4XvFnP0NHgw9
tbCokf18m5QWlxNYdvtc10b2/SUNYJPmKb/bwtj+VYZ74feLep5I/mXrl73P
w3oem4VFV7P38eQi2M888m7nCtZ/13yF/V1udVhdofkvSW0uR/FLVdSsj7T+
QR/m95/GiaXnqf0e+Mu4lmPvWin+Hw27qD9v0hGg9l8AR1dXbTLWZ/VK+9rh
NCGZE3HOlP87cSGX09HLNdak928zPXhxoXHlPh4a/zjATYXzY/QOsvaSfRp2
ujB33XRLWv/wCP5+TkRkyQpmyTb4war4DV3qtP5LTIfLqRS7Gv6H8qe8F8MW
iuKDO5Np/tcObkv4HB4/iZ2fmkj4807ja7q97HnE/wC2f/0i67wc6z+0W+CL
F/79w+43+7GLuBw3h/G/vsSy+yNmISzhcOTZUAS1f1uYO6ki15JL659OwgbJ
Bwo2yNH4JxtW2aXJa0z1Xsw+wp07i51m27DfHyy8GM+z7g2rVjVS/oMm/Eos
YSgrmur/74C9jstn6yjT+pcT8BV58XMPhSn/OxOe6XorMLKL5j8bYTmbIFmb
IJr/EFjC5VQtrH73MpfmvxbAT4S79k5MZj/PbwUv0+nc/vcOG49pB8OOvFHe
Hj+o/sU9OL7d0aioi83nWLyHW4ynjp82iepf8Ovi+R+iJLpnEev/ctXg6FV2
2ycfoPffbfBf0/0VFzXo/fc4zFnxqWvmTtafGN2FrdXiV7X3UP5fHTxDImXj
+Uh2vlN49TA+mKyxINKQ8r9UYC/lM9EHxrD2IGgBFw8W/bFbQvlvgXBg3dy4
1Zso/nkbVhIXqjtJ611ja+DpFZ8O/8dD+Z88S7kcjfijn0cL0f5/c+Hk6xJC
e79T/GcLfKMhwLvgB7ufLPzhg8P1FUFrWPsPvQmf/60oVabNrl9uFdwzTivS
hupZtw/BwjzDbQJfWPuSUlqG8eaQmaxBFXsfM9oEz5DkvBqpo+M/BF+0fjR4
8SDl/ybDH3n+Tns1kX2f2gpYMiLOYrITrX8fhLdYLFty0YLinwr6aB+DjsfF
kmn/vw3wuMcnhafQfpqxfvAO/U0uH9XZ86w0Cb5b8WRxdSv7Pv2v4SMH+gf5
JVn9QKV++LFhkdMPZxbftJjB4XIO/2gOq5nM2kPoOli8VAv/snh3rjesYrov
J+0Q7f8XD9euk1426hyt/y6D12wd1Z0YTeu/e+EJ/h8e3y+l/Ef55bgfTr/r
qnNg7TdlNbw/au8jDR7Wfms94KsdaWljT1H92yvwUf2pMT/T2M/rlMIjKqe3
ql+l/f9+wg9Wh1wpCKT4l5wBrpdY44XkYor/GsJHbhooSnaw/77fDTZamTOn
l+pLK8XB3QkWby6JUfy/GN55d7zKux3s/IV2w1rKOoemr6T8T+kV+PmH0U+L
H1H9WwP4QrZvotIXav+u8KITSV4HhKn+Ryy8ckr9qVd7KP7zBL7o5GlcIkjH
3wkHc7wiH0mzv1crufJffznLeLwx6/8EOfDM8S5zbhxlx6PjDC/krfKK1GLx
XMdzcLzUzNTbG1l8MPYxXFyja/eCQ/tffoGn+k8TOjlI698nGuJ51ajh6SvK
+mOlpbD8rtYDJ/2p/q0jrDzVacFnA6p/cAb+4XzSM8aB/f3cPPiB6fWJpz+y
42lvg6UXFYTzTKX65+Kr0H+Ezx4t5/KaHf8SeErnwMHzO1k9Zd/dcJ/tgN3S
KWz8nhIFr0vaOiu/hOKfD2DvivBTA64sni3YCnfJ9U9QmszGHzrjjLic3Zfv
Ln2nyH6fow48tTXtqooZ+32xO+EMZ+2qmCt0/4fD+b4KRlGeVP8gG974pfRK
QAr7e0rN8H/cCMW+d+xzC5HV//qL3QHhc1n97VAtOG/duQdlm9nzO9ca3u7X
+XuNPeW/noDLTSXLjDrY81YqC45eJsuVFqH89ybYquLQgZxIyn8XXIPxtuW6
I+s62HgtRR3etsJceLoyc60VLC0qkLcmldWjEQyBP6+6sefjTqp/kQEnzfl5
cYMjrf9ogFtO7A9/68IcO2Yt3vf1HNfKUb5uqSp8fbTBuVGfKP93K5z3JXJv
7SmK/wfB3me+rDOwo/pPaXCQRpTEmELq/2phLTmR5FE7qP756HVcTsDZajfT
RIr/zYMXK2rPWs5L+f/mcOvQr09rw2n/1wBYpyRHoTuV2fcWvLlC78E7W8p/
roaXfmxLqP7GxhO1I3DlUiP+txpsvC4415jLEbNaqnW3nvXPOpvh44pquiKR
7Ho5HoEXZwrnnpJnz//YFNg94Xa4qBm7P0or4cjyFYIetVT/5S98Jj0kwuA8
u1+UZq9Hf+LiuqPpFtV/2AhndecqStH6ntCDsNfWkM+Xaf1v7nXYlNdzTNYw
zX+8gScExZxYd4Ou/wD8YfrbQ8UvKP951gacX69nGwyofpvverjKVERZ7z6t
f/GFwwOc7Rss6P5PhPNGuod4v9P9/xpOq5oUqvCW5j9+ww+XLRzwMqf1D9NN
0J9anbdZQfUZYtfCKrG5P7cN0vyvF6xetZaj3k/rP67C5+2S9rqvpvpfL+Hg
8AVJNwQp/vkLDnPvDlt+nf390Kkb8Tx9/OzHzCHWP+QawQ2G3+MmyND1d4d3
DU7JV8+m/N/LsPeC8+G/cmj+6zlc1vLW7bYu1f/5AYfcmFmR1s/Gvymym7ic
/sxPXhfk6Pm/Ep6w+d//aP7PDb5cpn6H7wg7Pp2LcNzNo1a9e+n59ww2yfy6
ssaM5n++wd3ODmeTlSn/XcoU59NjR74RrU/uXw5nuFk/j3Rj51tpL1ziulJ+
YSjN/5yHT2d1B5pX0vinCD7bPKcnWYP2v/gKC14fENH+j/q/SZtxfsfOuB/Q
T/2/PlyU9VJ2vymNf/bA8Ztf3yuh/b98o+E0Hi3TEqp3llIAD0sK2zvn0P6P
7fAcr+dSj2RYPojgxC3ob1Z3lPoMs/Gbjh58rS/vPyUhOn4H+PJm1QlR3TT/
fRp+86vYx4zWo5c+gn8a7d7TdZ7mvz/DjpNe7z2gQPPfYmZoz1aP7f800/u/
DiwoMd0kSJ89L0p2wuGvuP1HMij/KRzmTVeYNtxO9S9z4KFRrnIK6bT+rxne
cDVtRa4lxX9FzNHec3LPehqy/iFbC04e3/XM3JXG/9ZwREOAx7Tn9P4bBtdN
MM1T3EX5T1nwqLUaDgG0XtC7CVapfRdu5kj534IWXM6BV+LmIVSfvUYdli8Y
3pIQTeuft8NLePgaDlJ+g3YILBqw8tFRS8r/zICb7XrK1p1m4/GYBvip4HfO
ozuU/zRmK5djc0HJ03QTxb9UYaPEW/Jme1j/obgNPjBL9oyGKrsfzYLg8nmB
i5x4Kf6TBq+xldDKO8fmz7Jr4fEZAW+kIin+NXobnhclBeuKx1P+kwo8+5L0
8xlrKf/HHBbe5H84MZLiPwHwivXnVgq3UP7PLdg9WVM/eoR9v5pq2LFFoNCd
Q/VPeCy5nLevpl1XpniN9lxYIu79W31X9nyy3wwvkbn142YUrf88An+Yq6ri
NIG5JAVeO7B8fdBLin9VwhP2rnAdcWJWHILVrxdVnlvJrp/ZbCsuZ+ya4yd+
z2S/P3gj/GqagE8v5dNkH4T3ufNUZeRT/ud1+HvAj913k9j1k6yAz+S+VOQ1
ZdfLcAAOWpT55xjNP3jP2o73vbODPJE3KP9nPZx7RG1BVTO9//nCD+2L9Jyb
WLyUPwnOfCqq+b6cHY/2a1jxprfzHD6K//+GjSbP2iJK6zFipu/gcmSDhpYe
qaH132thvt/i71e5Uf6bF+y+xeOZHM2HK8bDhtF3FkVLsueX2Uv42+tMuwxT
1r8G/4LVLiQKKnRR/tdUa7w/jMhdEb/NxtdtRnD743FpLUcp/u0Bz85wG9qb
Su9/l+F0BaHNiSsp//05bLGsP5W7jJ3/5B8wR2gwYIUgG1/UyNrgeXYy+H1h
Emsf/IZw4mTD8bcv0PV3g8+mjHH9Po3q/1yEK8J7YqQpPhnzDNaRyNE3/sni
cSXfYPEJWrn1Huz4+qRsuXgTv34+PYiuvwG8ac2qLNPZbHxmthfeuP/dArk/
rP8NPg/nOH8Ochhg8YPsIrji4BH1BH32/Gj7Cu+7eaOw8AzrfyQld2K8mfni
4XEJqn+hD99L5vE8S/nX3nvg+UdlxN3X0fxPNOwbMWFikgfrn2oK4OIJQhvd
Y2n/wy/wWY/iCxtovbX2xF1cztY67/Y4ym+z14PrszdbLJpG7d8BLrx5UFmt
go7/NLw7vkBQnPZ/6nsEC75fufnTeqp/2gZvW2r4i0eT+j8xO9w/fJdt1ztR
/uNieOl9vshfjux+yLaDG3w8bHYVs/h8WyScpH/6x3MaT0g+gF///TZLL4T9
vGELPJDyJSk5ip1v77G7uRznjpxYvSVU/2chLOF++fF7X1r/bQvbnhq2Cz5M
xx8Om4+7FT1Ghv0+7Wz4RdevFKvl7Pzbf4TlV/U3eVpT/Q9hezyfo/8snt1B
8V9N2NJsirfrGYr/7oBLdjz6a/Sb8r9PwP164Wo3Paj+Rybco+wxc/gXxf8a
4UOx8xr4wtn3zxZw4HImLTb+b+4G6v8XwKkXy88l+lD+uxVctubb6yIr1j8Y
BsOfpB5JZb+k+Z90OGOv1szhdezz5Hr4snjjx8ebqf3zOXI5Mv1ZOmMWU/xH
FZ7V3V1R28SsvRWWTVcrTc5l96/9MZi3zTdF7D3Nf9yBB+9Xt16So+N/Bwf4
pEvEHWLtoW+UE5czMWZr9nceav/z4P4nK8ofTaX612Zw/PlXkaM2svMbfBT2
qv4gP2LFnJ0KD1QMeYW8Y/dD21v4R8TUn0YtVP9jBFasCbz0zIHmf+bs4XIU
MiKunxyh/t8Udk592/1+OjvfyYdh23v5EpPKmWtuwA61vkeeLKH4fyWcPcA3
o+IzO3/af2FXz92nkqfS/neKzjh/vhvUXibQ/W8CX091Dre1ofX/B+DcySNq
qdLMfdfgE17ZPA2/KP7/Bu5fICG1IpzdP2Z/YLvpIltLl7PnW/BMFy5HL7L4
2OBrdn9mG8P1OvXpM4ep/r8PnG6+f+78/8X/EuHCp0vOyXdT/ucreHfetPkH
KV/Xuw8OmbtD4MhPOv5pe7mcl/Fn/IbFWH9Wswae2Capuk2P8n+94IKzX25c
06L451W4YsEdm4btNP/1Av5jwa3rNqL6Lz2w6IwzHfx+7H2yZIorlyPikeOU
rcbaR98qWPngTr2l9+n6u8NH9J8a9GRR/v8lOCpCQ03Lj/r/EvjB/OZxFbX0
/PsOn76drZe/kOa/ZfahPapvv63Loef/Sth7f1vhPW16/u+DUw82jdXZS/Wf
LsBBHwqK/0um+N9TOEkmL3zqWdr/oQtu11KZ30v1avml3P7l19k0/kyh/S+W
w0m+Hh848qy/tneBx0z5UKBjxM5HTAzcnb2n+/Umev4VwtPNk4I9dlH+cwds
dVnQaw7l2ylO2o/xbuGf2/EuLF5ttgzexpktPHWQPY+DneA1770kS0ZesOM/
C8fYbi3u5mH3X1s+HKzrtf3Ddap/0g5f2rat4fAe1j4MJ7jj+dP6xnyHJbs+
3rpw0YzRZ+Lvse+bbA+LySvN2ZLEPq85BYfrKzZLeNL45xGsUW0xcIbWu2p/
hv+/9Yj24z1wP5xML/lG9V1iFsEFL8Y09/6l+PcueGBivphQP3s+9UXAXg/X
LnvczayYC29dvTby/SRa//UJ7hUV+PGhltZ/iXri+K7du51H+WLZ2nBrocCx
TS1U/8MGHlKVEuoxYuNHyZOwpf+mwpqrNP95H55aaKb3W571B94f4Ne6r5tO
llD9MyEvLudUz6GA31GU/68Bm0zgrOajeqb8O+BP59yFD9D+KNqhcM0z41N3
vlP9k3uwrNUsjb+vaf7/PZylf1d8I41vS/i98b69tad/7iKq/6QGm0SrWMdX
sftB0RLW3D7+3aHvVP/rODz93bZ5ZdT/BN+FxdWX4V/297Pr4FZfB6fTUpT/
wuuD8ZPf4K9BWi8qOR+uncJnsovidYYW8H6HVF7P7zT+D/z3+bNnEdvkaPx7
G2775anhUEf739bAAlvvXj+SRPkvo3y5nHGzttl6UP0kbWVYtfJohjStB7Xf
AqvlOBoslaH8b3/YtnW/1Xp1yn+5CfPEWvruiKL4VzV8eyCmcrEZ1X8Ygaer
xKwKSqb3/7l+XI7xj67K7cfY9TTaDLfOUVgtq8w+9z0Ch+7rmjH6Eu1/lgLf
WnPJb856qn9dCbebNAR0eFL95yH4QLfvsdmUn64z+wCX07L1bdHjD1T/dyNc
9/LT96nD7OdjD8Ju9o2rNRdS/efr8IXQr0tHNbLz1/8Gtl4da+A/j97/BuCF
R98oHlvB2pfFrINczjqtxS/Np7CfD10PL1ifMXIokuI/vvD6zOMPGjRZf9Ke
CC/nUdunS+sfpV7DTwsdXU1ofZHRb7giyDHVm9bP+04/hM9v1/lrvKL837Ww
Uukn8e6JFP/1gjsnVvq67mDPa8F42PP8+J4bnXT8L+F8ow+Wk2h/ecdf8Pjq
3M+FtN9m7NTDaB/zv6a9jmTj61IjeOO8Z6d057P20e8Oh0st2PkslMWzlS7D
Xr4VfDedqf7pc9j39ILfdxdS/t8PuMBBOUyf1h/lyh7B9X44tif2Db3/r4Tf
2zmcSI2k/Ec3mFf98YT/jR+MLsJpkZ8ajSOo/ukz+EQzN3yDBL3/f4OXTeat
TLSm/Dcpf1zPT0dP+BjR+n8DeMnfKvc5ND+nsxeO3Pj87Ykiyn8/Dwdcu1z4
7CO7H2KL4IoRMRtXLdY/lH6F+Rdldk6xpfovk47ieSS54ImAH9V/1of5Qr+4
3ztF9Z/3wJfUnC3m/6Xjj4aLOcHtew/T/n8F8Dk+3i8FdjT/0w5XTMsTmiHF
2pPUxACMbwMeeNuksZ830oP1svRUHtD8hq8D7PdmvJekFdV/Pw3bzjo42PKV
8r8fwTOW1Wa9DWL3r2Ab3H3R+fiC0exzHbFAvH8svLMn8D17n3JcHPiv/3uv
5MFl5yvWDtZYUGEz9Jc9X0sj4d7gqM7xzux+7s+FN7w4rLwhndb/t8AnQv/9
Q/U/xh7jcnRNX1ztLmLvj6ELYdvOrU2WjnT9beG1jvcNmhXZ8bWfhE/lX95Z
tYzyn7Phdutj9W9p/GT0EVY2mLxYq5/qHwsH4X7XOCkgRfVwUjThwVuPlgaP
pvmfHXC8tnb44v/Nf52APbtXfZG4xsZXOpmwg+37pV5RlP/dCGe/4ijvNKP6
JwLH0d+s173i/pbyvxfAL3+4vPpgS/FfSzjtZbmu0Wi6/4Ph7LffhezPs/Nt
kQ6rTw9ZVzqd/b3QevjHJGv8S/E/vmAu546s9ajNW1m8r30+PPcz5+EiYxYf
l9oK5/b2aKk3UPs/Bmua1P5xovcd3zvw9rjoXpXfVP/kHaxY+WTUxkh2v9eO
CsHzNGlXbnwaqy8uOA9OtVzCufyF4t9mcHpuvF79aWbHo/Ad91++nHkU/0+F
J2yRXxeRzOqBl76FveW+pu9ewvIF+ofhb9Ly0bwD7PwozQlFexEdyJzvSPU/
TGHJwOIbxc+o/s9h+NzEbVdE3lD9ixvwGXVP203UP7X/Bz90bZy0T472v/wL
/3dJcM1rWq9spHgC46+Vhw/ZKVD9BxPYPee2msV71j5TDsBhTyUWvKP3r9pr
sMDbfNO5AZT/+wZO4FyKXfyHPU90/sDN+5Vst6lR/Z+ZYeivkqaru4+h/R+N
4WyfQoUpPOz9otQH3v71kNKRVPb86U+Ao9rGa099TfVfXsFduQ9NTe5R/aM+
ONm0YY7iEO1/Oe0kl3O3eVCxhdY35a6BJTJ4drz+Sus/PGHfwekBOVSPUeoq
PCBj1KSQStf/Bbx36qu2Ihd2/nx7YKMq16s7hNnnKVPCuRzp5Ogfq8PZ8dWu
Cv8X/7+zrSCG6v+4w2tfX3L2W0zrXy7BzZt4sr6X0PxfCaxbyeXVsKP493dY
YkW86zMNqv8kE4Hx3V2zsplKVP9/BZxxdFzxKVo/pLQPDrkW0O9C+V8WF+CD
pb7lJaZU/+Up3Lt6VUDOTOr/uuBHQeYqgTvZ72ufHMnl7JinJSQ9lX0utRwW
0vrU3X+B7n8X+OSPgy0mzjT/GQPXy/5oVvRj1yOlEDacKp/Mb0nrvzoi/80H
3Mp0pfiw4KQoLkfl7OKSHZrsfOgsg79FLq7wUaf1D06wS5re+g5e9vdiz8I2
N7sG08bR/Gc+PH+c6+0BKVr/w4WDLNc4ZR6g/m/CKS5n8vDFhVfOsPcBC114
5HbCNssYuv/t4c5FWwwqxlL9r1PwPf/5YcVirP9ofwir3umq4Uyi+ief//2+
JX8Gxiyl+c/xp/F8fFxjzLONzXf4LoJ5x3P2LfxOz79d8PI7IYWyJux81kbA
38VjwvdTPSDBXHi8Z/iFnUep//8Eb501qBbFS/nfome4HMf5veZyNF6r0YTf
zvvhURZM+79Yw6az7uQ0/6b6tyfg7/zF257k0v5/mbDMUufPY+wp/7kRNrr4
zntzIfv+JQJnuRzttfbjVxVS/usCOGFTOm/zZdaeFa3gMrGkIY9ain8Ewx15
ZiJxuRT/TYd3OuYF2ZWy+yu7HjZ6bilXSfVO2/ii0d5C3Wr/cij/WTX63/qW
dyqTqZ6B4Va4a7yN7NgQyn87Bgs6tr7oSaD8vztw0jfzbVYa7PzVvIPHCtv3
K0my4+MffQ7vDye+q+rk0vrneXBy05jGdEk2v2hvBnPTx40+qsve32KOwj67
Lyma/GHftyQVjrbe/zkymt7/3/5zUfxZ/MuOfwQ+yv+34zTFU83mxHA5L/Ly
nr6iel3BpnCRr/Kg3Caqf3kYnnWylN98Mjuethtwi4Wu/LsYOv5KuHCco6D4
G6r//RcuLog+c43qQXkrnsfzZWOh7KR6yv81gW8r66YUz6P85wNwl4nGi8TV
VP/hOrzARe/EQlqvq/3mn41MW599pfynP7Bb//KwoxF0/WfG4vgHFBITnFj/
WGIMBz8OFd0VyfqnPh/Yy+N1mo0be54oJsK3lkZdPb6VjRfMXsHVcvFv5eIp
/tMHpyfuXTp3P3vfzZ52Af3pkX8ZNFT/dA0szv6h/H8v+P69DzXpAbT/3VV4
Tp7Esz2alP/9ApZ+sCei3IrliyX3wDJlVetezGT1w2qmXORynsUEXu50pvX/
RnBomojr+1bKf3eHP2UM1ezTpvzHS3DNqLSK9jTWfmNK4I4X/V2bNrD4Tcl3
+NXjcw2tfFT/RSYO/aV07Z/QDqp/sBK+25KUrree2v8++EJrVW7yL6p/ewFu
Ch8dNJdD8x9PYSdJnTTT8xT/6YKt+ypmHJlE8V+pS3h+H+5OvFNJ8a/lcKFY
YJ7JbHb+vF3gnth7M6Unsc+TY+Cj6mtjukQo/lsIB7WY//Wro/jHV3j84z96
E09R/H/SZbw/hOwYGjxH138ZvLBFLC8xlN5/neCMY0dShv+j+jdn4YCYtvhX
IzT/kQ+ffBKhG0v11RTb4djSG3GzT1L8b8IVLmfPe8Wjf9PY+CRYF/55YPy7
ZYfZ9cq2h8c6HfysIsTGS22n4GaFlWL6uux9W/IRrPemR/dND2tPhp/hHguj
w6k0/+I9/irGbxbxVy7to/jHIvjqs+kb1l5g7bNmFywjHnB5xnkWf+ePhD9c
n8H7pov999q58M0xuvrygXT8n+CMmnueY8az9hUjGo/x5Ya8YyLz2PUo0YaF
I3+nhCWw89dnA9uZq57waGDjC8WTsFTpmb4oZ8r/uw/zWpurlIyj+qcf4In/
fX1kNpby34US8Dz5ETEybxkb/7dpwI+jRDcmXmTnW3IHPJj838H1tP7HMBRW
KW3I+P2U+r978L17GhPubKH7/z1sm6FYKUD1xmr4E7mciOsLq9SiKP6xAL7w
blHbn4dU/8QSrpqTPXxgP8X/j8P5184JZt+k+O9dWGHWuDvOJZT/Xwe/qNTM
PBJG7Z83CeOpLSJBm8ZT/vt8eOW1ux8uZ1H8ywIWftGxxy+L7v9A+EyESrDY
OXY9s2/Dh4+UxXY/ofmPGrhS6sEl2Qhq/6Ou4fkWL1hgQPv7GirDPnxPs8w+
UPx7C3x7BV+d2nmKf/jDUxYaP4pKo/7vJixx7ENyE60/438LJ4k6B50YR8+/
YfhJx+jUBin2/e2VruP7fJ75a2Ulzf9ugt32fe7sHaT1H4fgSTVtKsKqbDzd
lwwvjvu7o57m9xT/g38IKRc0bKD1L4PwAq1Enlpd9n4QrJDM5axQL6iuXUnz
PxvgQ41B07y9KP7nB+uc1FL1f83G75LX4GtLVnTojbD+x7AcLhcuWCtWw36/
dz/cG7NxnzTt15I84wbG68LDxy45M9esg0eLdJ844031P3xgC/MK5UkzKP6f
AF/cbXnvmz0df9k/H5tstqyKjr8XzvTk95tWT/F/+RSMJ75ln+ujemR9q2G/
rgOTnvJQ/rMnHK00XGy1h+pfX4Fn8D1TU7Gi9Q+l8K3Uf//Q8/8nbF7z8U0o
jSfa5G7ifN7O/epfRe1/1c1/662FvyXb0/N//z9f9XVNo/iQdxycHVf0O+wG
u1+Ti+HWg7p7xq9n36emG550ctk0xY+0/kkmFeO/RRO/ZcbR828FrDU7INfE
g+r/uMKDaTlNPoXU/8XC29954V+qf/AEDpvcbJZE+cR9nbCbm4ia2nmq/zT5
Ft7Pvt71lL1N8U8O7LfhVcYtqr8Y7Ax/ep9+TSOd6r+fg9+nLw5uXcuOp+0x
fKrfXtef7m/JDnhnpULFmjKKf0vcxvPxoFvNfKpf6L0Ujm5cJ2WSTPN/jvDP
aROMN7ym+hdn/v38oPZeWVea/8z/9/Prd4TdEqP1H1w4e8nZcvsIFp+2F7/D
5WQ5WptKtrD2GbME1rHfoZjmTfsf7oajLn2YJeBA+19EwfXtq5Ljamn9z0PY
7a3ahzaKD5i1wp3L7y61zKPxz7g0vP9YJ9fKUvwwWwe2d/ws6PCKXa+2nXBY
bIdSfzbNf0TAM4y1TKZXUvw3Bz6otkX43iiq/9QMi2k/871ZQvO/Incxnjod
2icsQfN/WvCWefeXbCym47eBjbfGD2X40/6fYbBDw8vKY1QvwT4LtitzVWlW
p/VvTfDzI6VmChfo+SeYzuXsm+y7an4ErX9ThzurnhctPUz1f7bDj1XcDJJ7
qf5bCGzUfEAibRW1/ww45fChOadTKP+7ARY0ksn0taL2PyYD7+ens1NkEmn9
mxq8/9Dx/vVWVP9nG9xfWN7NE0Dx3yB4+y4Zgw8Ur05Og3MrndLCFtH6v1r4
7wuPhWNraPzHew/Xu2HbGJPtVP9IBeYv26l7ci/VPzKHSzIKKtxSaP/PAFhA
+n39ggNU/+cWfLFaQ/eWHjt/fdWwf3mXaRflVyryZHI5yg8t08ZI0v0/F371
5vLaFsqfCt4Mf7xzy2uRAXs/yT4C9yY4SzpfYPd3WwocuqH4gvcGyn+pgvP+
hGWPTKLrPwSnebgULaf9kL1nZ+G/b6n/NLaGPZ+SN8Lx+gktO2l9as1BON+p
/0liHa1/Sobfv0jV791I7///we7Lq8aqf2XHr/QXNl9nV7vvJsU/FO/j+m04
+2R7G+V/msDu+jOELs1h/U3uAThDYrlSXDzV/70GPz4mveieLPu+Um/gyI76
zfsl2N83+gMnxO9NU1hD7/8zs/G++96oR1mePT9SjOFEtZIu/9FU/8MHPv5T
abv+THa+BRNhaafwJV7htP/ZKzgooU0ok+rhO/bBquHDci00fxA7LYfLuZF2
ZuTyNcp/XgOfeHBFq7KEfd7vCR+4dzZM/TI7XqWrsNTg65ysXez8WryA/7YV
276m953QHjjI4fVKTdpvL3dKLsa/Egrtbykftn0VXGCQGCa2j50PKXc4YeEy
1Rhav210CRZbuPrnLXOK/5TA/NMVBy/S+vaU7/Cpu1ItXdXsetTKPMD3yfk9
3TKMvb8KroR3NT8xiQ+h9999cIFYz7CqPGvPjhdgvozce6K0HiH2KfwrYYzB
xk7Kf+168C8fd8mlrTZU/2LyQy7nMlfriNZ2Ov7l8MDHTxZdzbT+3wWOs66/
EfiJrn8MHKKuvjTUj+qfFv7776Urx56upfzHDrjuj/ACp9FU/2LSI4yfBncn
3qF6zEbL4Aw1nnlStP7K1wm221rdv7Gb6h+chXcKGBzjvU/v//mwlubcLxsX
U/5jOyzs4h9yX7CEHf+EPC5H1DNL/lEfW3/jqAtL1k1oEnrE9h+MtYevaOYt
3TOT9j88BTcJJIg3HWbji/6H8Dq3xt2nxrDxjNJn+NiVT/6699n7k8X4fC5H
ceqfgN8f2fMhdBF8PMxb3yiIjT9yd8FfFDKGUh5T/C8Clvkokq67j30ulQtv
27FSuCST6r9/gneGNZYrf6DrL1qA8UljEVe4jJ2fFG3YVlN14E4mGw/V2sBG
9g/yFo5Q/u9JWNN9XYEcxR917sMyEXH3InOo/vMH+JBBuMjiFta/xgo95nL+
8FqFcKPZ+SjVgE+FRHVOcmHH178dfrzfYWn6D3Z8SqHwyrkaaguCKf/1HqzZ
+anhSSHV/3gPd6y/nSMez9pLLn8hl/Nwfo+WSjiLF7WrwfdvZQUG0HowKUs4
brmlmyzVpzA6Dq/xe2Qcd5Xq39yFu1P97nV00P6fdXArX02ux1PK/+Ytwvth
k4OoWDWz4Hy4K/OpqsARuv8t4Kpn15cG11D950B4pHZclvwf2v/1Nuw+Lvmr
wx72vlJaA3P22X7cRvki/TxP0F4/6uP/Yf2NkjI8x33V4S1d7P3NYgtsXDT7
9t+z7O+H+sP5PJ5urY1s/J57Ex4paIp7nMrOX3sVPCM/wvv9MNV/HoYjLg+e
+n6e6j8pPeVyRtkmiMy6Q/H/TfA5VRc+2clU//oQnLJJSXXWWWr/yfBCjvCn
DCtq///Bezc/VJQJoes/CJ+/2Tvx8mjKf1Z4hv5k+eplF9ez7x+7AY79/cdU
OZP2v/WDZxyqNd5C47X+JDhAYNnG5m2sfSqVw+tb11fbCVH9l35YQ7yquHkb
1T+YUYz3g/CywR17WfvJXQfPzCjIua7K+u92b7jxrs7CSBmq/58AL+yLyBSj
/SWNymCTvbKn9VPZ+61vb/G/fFvRnoBxdP3lS/A+Ha8bd47ql9Suhr/zjMe/
rD0JesIPZVKtd0iyv6dzBc68Lz7Pw5ddD8dS+Hy8e8WMAsr//QkP+fifOLKa
tbdSuedcTvWz7z9yXKn+syH8WMr7XvQaiv/uh6f1JU5rsaT9P+Pgce63Dvhe
pfovxfCUyv+073+k+c9uWDp8yx9FN2r/0qVczp0C35Q7f6n9r4ADGhRP5e+k
+jeucL/wtRfKTex9yDcW1jVPnW5pTP3fE3j/ylOjlthT+++EZbd1F5mosuMT
nPwC44EeRT1rP7r+HDh6if4D3mjWfhyd4VErkv/q0/xC7Dl4dmSG7/BFiv8/
hgPHmKoqRTxjx/8FvrgpKpDLw+JXShIvcb4//SdywYfdDxZL4WDzdh+FVsp/
d4THTBS6lreb7v8zcIHM7ey4Aap/kwcfKWv4/puX6j9xYbGrvx8bJ9D1Fy/j
cpb735eUoP13fZfA1sMiix2WUfvfDU81CI4sqaTnf1TZv3ylumO+o6n+90P4
fafRrZpu9jzXaS37Vx/HaErpbfY8dBz3isvRUyg1DdSl+L8ObD3NrefaZrr/
d8Jh3+oq7vGw98P+cHjpqrJVd/ZS/ZscuHN3YozmKJr/boZDyzNU7/dQ/RuR
1xhfTtPcrbGWPZ9ztWAdAQmjCVdo/Yc1PMZ5l73Vdpr/CYPLz5+b40nxDqMs
OFlceqTOktY/NMGn+WZfDLSj9R+C5VxOoWZ2L58n5T8sgGc759yxrKL3H0v4
hnf6itGKlP9xHP7t4riVh9ajJ9+Fba59O5yqwc5nTR1c/oRv8hRXZn6+N2i/
+1JlDiyl+O98eImTP8+427T/lQVc1vno+JdZtP45EH4V8tgjzZXiv7dhH3kT
zWIPyn+pgXc9azOqjmb5/IqjKjB+477aFGRO6/+VYYktnOyOBaw/DN5S8X/r
Pan+pT883nKT4ZlVVP/5Jqyj1rMitJjdj5Jv4a7m69GeXbT/2zB8Za7m0QIp
yn9T+g/vs1eF73o9Y+Oj5E1w78/w59OF6P3vEDxbu6wtMZziHzdghbUGkk+1
afz/Hzz90ZbJLrRezH4QfhSf6rqpguK/CpX/1uNsWuVB++mVbIAzH0f8FbzC
fn+fH1wsM0lkbBrtf3UNfu7oYeprS/nP5fCEjpcZjdFU/7MftnWbeW3aPdr/
Z0YV3v92j/svUIDyH9fBcbLKfacVKf/LB+7bGWMxht4vDRNg130BFY19FP8p
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
pivu01h92hIT+JLlGOW1xm7s+A/ArtmCuyRDWT0IxevwMge9F8pfWD6s2Rs4
8YTQQYXlbP+H4D+wrsarpE3ZtH/HzO9cDv9AZJL0ENVvN4aHdLPyAxVo/O77
/V+9Nt4/Z1bT/uWJcOb4jZfXurDxm045nCSuLCj31OGfHfthsftORYd+Ufxy
xg98H3f/AXU7yl9eB3tmBeUdofhAvze8x2WSQd89ls+rlAB75eXc1vvM6jta
lME9d0VOWDjR/kW9MF+NiGp/MtsvJVf+J8ZDGh9rLJey89e+Gn6iX6uh0s7W
90p5wkfVphe17Ga/z+gKvOrn5E9qcqzehW8pPD8qrru+2+6fU37Cw82C3crX
2fmtlevB+2igQsxiN/bzgqvgMS7i/cseUP7mfrjJLMG+7D7t3xQHv96obCW2
j/18bDEcMHJZo/MuO3+l3bDO2lUf+7oof036F5dzeF7LvIW0Hl1pBXxT6ftn
z/9H1X3HY/32/+PPCBmFMuqtoWQ2rBCKs5CKpCQtDdmVolAokpV2kpSGJCGV
SpRNEhKV0yqjoVPLTFLp++h4Xp/b7fe7rvc/95s4z+P1OvZ4HtKsfXbYAcsd
/2rMnU77t+PgvqWGnjF+7H6O7GJ4/+27eqqBziz9X+DPeiKrD9m6s/TLfcd4
QOHlZfXd7PtYcuDLdzflao5l93/4e8JTSmQUzF9Q/Ooz8HEV7/x3URS/ugAe
E3Zz/MfJLD+KfIJvzErmesmx8mowbgDv72iesI0Va2/c5sOt6av4k2dT/HI3
+GZg0LeF1J8pPwULXtDW475hHsyF5/NXvG7XZOehVT/Cvf2TfHkc2r8t9QN/
z7fb1beCfZ9II5j/h6PmyIesPGQ7w3f2BcvN52PPg3cc1p+cabTuL8tP8g9h
2eMLTzsVsL9v+R7u94o87UT3nfuPHsR4YmHjM4k62r9sALdcDaktMmL1Q8MW
WNtkcZ/YLYrfchSuVxpyUJvM6heDB/DPGYVJO/RZet3a4eDr6n0D1nR/qdhP
jJcUTlQ4UXtXPgee+LNDY00bpX8jPEXi3IT9y1n+Vj38799Luo36uYSVV4d7
cMC61u53UQ4s/S3w7sIdx++Lb2DpFxn6yLGaHiJgv5C9b542fD01pu/1Bvb7
8hvg9TZK093/t385As7R/irGpfUJ/zvw/RVN0Yb/i1/SDN+4cFHNNob2b4/8
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
epriV8pq8jgdkQHP6k0pfoMpvHHMqpAbzjT/5wH3CZVFjzFiv18eA9fLeQcp
1rPyM5j/7+eLLr1w30jp74Rb31wtSL1L8QvGavE47qeK5z+7RfGr58FzXpcm
d0Sw55ftCj+bMm5O+g1WPnkn4YWuVXf5btL8Vy5sJzKvq3kES59lB1xcGDgq
8Qcbf/hLaqN8P0x+PLncjqXfED48Vs5qeijrzzdshVuy1zyXDGf9fZHjcEdZ
0Mfcr8wGObBGc/m9aR/p/PY7eNT6s5lZdD4lTkIH7a+C44lmd9YfLNeHH/eN
k9BpY/udBzfDAulxLQpOFL/1CGwX72J4roCVB4cs+NbllzGbqb8a2Qav6Y2e
XuBA719UF/3r6s86vFS6v00XLjV+F3fxD8Wv2QgL+C+7uzqH5n+i4N/PFH+M
30r5/+6/f++tWSn+lO4vfAOHuT82SDtO81/Cc9A/m7S7sZnih4how5/3HzA6
PZXmP9fDTl/tXUokKX5NOGw8bvSc+YIsf8Tdhm2P6Xz4O525vAmuDSqqPjrT
kaVfUA/jhzeTzLnjtrH0z/7nM/lrqlxZ+hzWwPs+Rtu/ofgLkaHw4OAdbdl2
1l/LvgnvFuX475Ol+7vq4ax3fHscjdjnyfPr4+85x695ocb6K5Yz4DVhx2R3
+rH62t8eDrm25Fwr3Q+YEgwP5rwZscqa4remwtu9JQIq82n+tw5OOnRBdJDu
GzX4++/vJ/93qZzuu3NTM+BxRs+9nuDyiT3fuJVwyXbp2i+X2b8vD4KvFX+V
EUig+C3X4Y+ZXq9sqf+s+gKuEdy+w8qMlU+H3/DPd9vdUntZ+xCpPBf5N2yx
RC3d75u9HA7Lmjdl3B2a/94HjzvwUjqJ5oflr8HhO+69XT1I7/85PF/18Zx5
FL/J/yecU7RyZv5cVt5SphmiP9uzyHwk9e8brOG1Mk8epY2i+T9/+MuUOZdt
+tnfN0iE621+Hk/7SeW/Cj4hV1zce43i9w/AsjsFTT4sp/g1U4zQfvnfWmVs
Rvc3LoH3vMlqV6H4rqp74HPPLji9NKf47Zfg3yJq3NVHaf7/KVx6R/Gx/m32
edl9cPmxHbWtCTT/N9GYx5F4ukcheSbFL7eEXWd/Pb8pnvbve8Ojdk9P99hH
6b8Af4o9cdWD4n2J/DcP+WFxSurtUay8GpjDX4LGF3bTer2bF5y1Py5DlOZf
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
W+HJLoUnLL0uV2G9/nkbX9D3j30GR5t9OnWBxu9lP+DA5k1TlNvZ+xhQdEH+
vXbtlb07y2/KVrD57p3t0hLM9r7w6SW313f9of7PZTgzTelsnQ+1/xVwWnSH
5VpxisfdDxstrNbbX0rz+ZNdMR7Mddp/7A97PxaLYbvpO9Y43mff39cHDk5b
KnnsMft5cgKs4HaoVM2H5VfuEzj+ZLvUxhRKfy/sMDPxzJ/LtJ9bwQ392zd7
tv/cwN6fiwVs9/Da/kdX2H6f2J2wW8Mhm/V3Wfkqi4fTJLO+TIhmzzu7DA53
k63pfM3qf173v7+3a0tXrzedR/7PnccxHW54r6zGPs/SHPZJud5k8Zv2s3rB
9i2Nv/bZ0n1U5+D357kPT/1kz6OhBG5QqfPMr2XlR+Qb3DghbXsizScayHug
fkgVdlpRx9pTtwVwa2LNzitL2f6AuG3w+YC2ZWIZbHxVHgtL6fyqDYhk7cVg
Iexwe8Sqn2dY+lQ/w2pyD+QyzVh95yDjyeMc3i439b909j4jTeBQi6oVmers
+2S7w2uXTrls9oqlj3ca/vMjOZdvMcXjzYef7V96fA/Fc7LkwVfuitb9lqJ4
xNLbMF7aofee/wbt5zOG1z7U+Hj9De1ndIGnJjyQf7GXxv8n4ZvT8jhjrCge
5yP4iP2raQNbWHvs9gEuXOSYaruMff+4Mdt5nFGvPOL6aL65fC5cH9/W8fgm
7Wd0gvd+KX8pS/ErVY/BC4Rt/S/U03x+9vb/W09i88eRb+HTpT3d63+vZ+kX
34H3NfJD3Dt+2s+tB5cJ+EwVHk3j383w23t1uyclrWPpj4afdxW85jix9Xz/
+zD/Elfx38dpPrcVDrpxue6sKHseDaO8kF+eDCfMLGY/F9GF3Sb3GN+k+CsG
jjAq0JV3wikeQSRc/FP+wvGiApb+TDj+tsDKQ5PZ+ffy17DKnozyXXQeY1Bo
J9Iz2/tgxWqKR6sFPyoSmjnrLsWjWQc7vyre9oPOU0aGwVdjt5/nGNJ85i24
NzdfYK84e368RviNwoyMYjc23ysvuIvHEfdOz7ATZn/fchZsrrXdzFuW7mN0
gA3arWyeZFE85oPwHe7pE0MjaT43He5cuMjm7ynaz1YP82248yvakJVvAz5v
jEf67MRF7Vj5cdOAJ9VIjlKRZ/VV3Cr4Twa/QFo4y7/lB+CuuTZtJnfZ+xm8
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
Ub2Hnz31EO2qZu1T9ugUtDfPe2Wdwmj8bwDzL177yy2E5n+dYIHqL6W//7L3
YXkUVlnvkbFdhrWv/g/gjU1Tjo1/TfEc2uGty68ILK+m/exiN3icc1I+78bR
fYIienCOfa7Z22ns+xlsgouUbiQEn6T0H4Z/c7VfGevR/Nc9WHbGQLWyAd1H
1QL/eVb2WEyY4hmIpOL3ZcTXFxXSeWYdmDfq7oyC82w86bAB1pApzNr1iqUn
MgLmSzFodRWj/dx34D9/Nd37xWk/dzO8JDJKOIjma+WF0lBfcDq9BqTY+7XU
hKNME7ccpXgh/mthzZPqO+ybWH5POQSnvRfUH1tA+9kz4M7jo3/9jqHxfyN8
3Sb+y0SK328gkI708TIzRatoP/dMeGKq76kni+g+ztXwz/LWTZWJtN8zJP3f
+VARn6IlrP82mAanKZheEYmmeLRceK9CbyH/LJb/HEbcRHuaWD0vYja9f3X4
58YJmiusaP7bDlb1c9Y8eZe1F7z9sO+buY+fDtP81w3YZOLTATchVv4sX8Jr
PjzMnraU9j/+gXdxU558zaH7yFQy8PkrzTRERrLxWIMtvLwj49tVf5Y/RQLh
6HVRJd7NbD7fIBluj517amElm790q4G1Jp9+OjuexXuIG4LtrJSXPxJg8Z/K
lW5hPF37X9HYPNaeDC6DXR2r55mYs/kw1b2wiemMiaGadB/jVRiDYSm/UjrP
8Ayuenqn7wLF68v+AWvF2ZgUrKX5b8Xb+H57VWt6aLwjbwUH1Iaq5cvQfldf
WIJn7+d8ku4jvQw3aawxC6P46CkVcFWtheIfURZ/u6EfNkv8tik4n7WHIpPv
oL7447NZhfabGCyGP5XkfWjfR/G4feDvpSmeAqtoP38CnGfUzDcYRu//CXz2
9dtxIg6U/3vgoxqTZicuZP0vVYVMtC91wT/uVLDn62ABF23+fOl5CsVj3glP
zTzcFK/B2v/seDgieWb/K22a/y2Fk8fvzK6n++3lu2Bd72vpeXT/sOX4uzyO
RaLLoswRFI93IXxPVH14QRjt/9wOX4xfccx+I1sfbzgLu96zvTPjO4sfJlIM
e836mPbQk+0PNvgCa1al5E1wZb/vJnsP9cli5/pDTjT/aQrLqfJ0Ivlp/t8D
ltXJf9azhvZ/xsAlgn8OmZ5n5VO1AI5p97l9jI/dP+jQCVscVLoSnMryS+TY
+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
vKfrRMrUUpr//gbrqvE2G6+j+xjla3icd/7XVM096D6yBbDq0/slD6bTfWzb
4JbSiuy1PpT+s/D5He+iDxyleK5FcODhTIsJC2n+6zOs676+VE6b7uOTqcV4
vjO16indJ881gTlNHaHdcbT+6QGPdKoodvel9Z8YOPKaZYjDYXr/+XDV2jb3
bzZU//HgNzHtsjc9KR6x9Av83C521H1RSr8xHGFeXOvyi82HK7vCz7+/OvPG
lOVf+5PwtKTziZG0/yP8Eaz3lG/lA03K/x9g+VVB68UsKZ7VmJd4f0/rkkbH
0v5fQ9jtdMqE9JtU/rfC5dq30tfGs/Liewxum1ZrJD+WpSc5G5Ydme94zY3i
cb+FZb498p+bT/WfxCvkr2cjbvVT/Hk9fXhm1Gv51wPU/m+Gz/GPVVgazfqj
sdHw3gj7AtOprHyX3YeF+EN1fCaw/sZAK3ylW/Rk3T6K5yNah/pYYaqpvhr7
fva6cJT24coybdr/7wgnhNj3bH5L8egjYbl7/IkpWRTPNhMe82Dyw4wSmv9/
8+/3x1YoC5+m9y/MRX79s6dlfzbdx6EFR8g9Np9L91kkr4Ofryr4lvCA8n8Y
LNszjuNuS/v/b8Myop7GK2Mp/U3w3YgbO6PGsvzqIliP+kvf5V3UZpafY2fB
M9085S7R/W9lDvDBKUKq82Ko/3MQFuyY2dO7iNr/m3DRpsWjU0PYeNK+HuZY
BSm4jqH08zWg/5R919+9nfK/BrxjtubZzpOsf9ixCjY5fL/uvDbl/2DY7PCM
8s/vaP4vFQ6QfJ7s0k3xfF7BrzK8u/sesO+fPNzwL16iiEO0B8XjVm1E+TG/
miChQOt/Kxv/L/4Yzf8HwXXFM1O/utP6x3V47le+R13U34qthUPEnR4E+dD+
51+wmV3Iy4VmtP49vQn1S6WEQMJKev/LYRtr92VpdL+h/T44TF7puVQV3ceQ
BMdUrD5v8p3lj6xqWF3gyZGobxTPaBBumWS2VJbO38pOa+ZxZvD/OLUvlu6j
sIYHy/dkpTvQfcx+8NY3TfG6FB8++QqsIpOyMZvuP+JWwm2LswtWnGfzIUID
//69r+6SMToUz3rKa9S/FWMqrw5TPO8lcG2ki4rHH5r/3A2n2jzcHUL32Zdd
hIOvNkxISWTff6AcviWj1LxHjJUH5T7Y0b4zpfw5nX+Y+IbHUbr24H30e4rn
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
eJ6qIzs5alNVkrwPs/kC2ZVw53Oh2Z/p/h2LIFg8KFQ4vo7iOV+HRZ/Nzrdf
SOmvhY+65XM2UbxG7i9YM3reRYMUlj+FlIU6OS52E9Z7ilD8g+WwX7TCjYCT
NP+3Dx44ecCzlOLvxSbBI9d9vGRB8ZPKquEtZl1/93Ho/MMg3GC5VfvTfFr/
mCbcyXmqkLs27Sa9f2s4NMR7aK4eK9/hfvAk9j/2fLKuwG4FYgX+B2j8Xwnr
fynat3geyx+yA/A7g0v8rf40/p8i0skpNDutnpVM859L4Jkb/yYsSqL5n91w
8okdKas0aP/rRbhLpi1fRoruo30KBz2TXp8YzOZP9Prg9UdsW7V7aP/7xFGd
nOGvsjEq5hT/YREsM1329gvaj1K2C5acL2wg0Eb7n8/DecnXXVJEaf6/DHZ/
8lwudi6t/3TDSVajzlXT+lH4BNFOzqcTC38pF7D8kmUGm6UqKd1oY8+zYwes
flli0smllP/PwX847z6VlNJ9fCVw0muXLhO6/933K1zxquhogSrt/5YTw/P/
cdXu4Heq/zhw/RnPmy8ofo7QNnibrkWVdgirL/RiYYdEmW138mj/XyGcuD4t
OSSWPe/YT/AfyU3OY6dR/h8n3sl53m1zX5Lmhwbmw88Sm5/N20n3mbnDRzSL
xPMpHrf9aXilwdHCJYq0/zkPdvyitL3xGau/sj7CGz0GKt65svfRISXRyZko
8Pez+jWa/zSG60eIV5w8yOYTLVzgU0adyQP1lP4TsGSc/hndAvZ8kh/Cs3Si
7F0T2Pfnvoc1PYPPzKX7DoXGjEb6udojDG5T/Ie58C0fne2HftD+XyfY+MjO
T4evsfnK2KNwc9SSxth4uo/4ARzzZtKOS7nU/rXD6gVh/4U/pPVf8TGdnP5I
MX99G3r/evDyG8M5+pEUz30TLKbYUnF/Lp3/OAzPlOnXUVdm7XPHPbgz6Of7
T6to/2crPLE6M9SUR/GvRkmivJn6VTiMo/3fOnDfoS927zLpPrcNsGZqQGHC
Tlr/iYDfiOknWStT/Z8JTw23nSlSTPcxv4atU7+Pd06j+S8hqU4O187jYPli
2v+vCV/yiT4S9oH2P6+FIyc170+n8wADh2DOUYXSqCyK/3ALtl+iONWnmea/
GuGQPRNuquhS/S8gjfbh2sBlDzqfnjUTflmuODahnM5/rYZjfk/46aNA6T8I
Py6TeFH6mta/0v9fU3ceVnMX7QFcSUJRhpQhZUhEEQ2adJIkUpIGKQkVUhHN
pGhSSjSqKA1CydREKVJOohTSgEpJJyFTEnG/7173Ps993vefz1M65zftvX9r
770WHKd8e3nGdqpH2ghvzKm4Z+RE+dxHTOJxxJXLNJLofapxIWzLJmRo/mMz
/DZho/aE29T/+8N/JrmNuErv6w6X4DW9t28b61D+r2fw5O8JYSJR7H23ahgO
jLfSeviE3R8D8yfzOEpCLeXaVP9E1hT+uXTs1unaVI/SDy78dO1GXwbVM8iC
b756kPkzksY/T+Gz2zUfjTKn/n8IXvD+XtedzZTPf94UHif+YKKLvxLNfxjD
703DjHTtqP/zhsc6tS3fk8/Of1Y6/Fy57a2DE13/J/DBbKvLFd8on/0g/Htw
QuBfTfb9VWaL8zgyN/L5jb/S/qf18Nrtsp97OTT/5QHb8cQcH5VRPvdUOOdc
1IlMyj858Aiea1fuYc9h50/2B1zqvmOa7WLK/zNrKo+z9/AHuadWdPxr4WG/
KoFEWs9e4A5XjZNbFStG659T4KfCI5KlLtD8Nxe+N9YvRDeUtcf6X2GfFbze
K1qU/2aGBJ5PKeGdIpSfM0sflppb8zfPg55/N7jyw4mk6Vbs/AkmwWp3Tx8u
51I9g0pYadhL4eBsdr0dPsNzA9aWXiql/l9SEu3B1XHOF4Vp/nMVHPG4Mt84
heL/+2ArE8XHP9+z+0M2AS5+URCxR4Q9z+b34dDL40dt0aX1331w3TYzdZGx
dP3Fp/E4lw/O2fz1NI1/deBTQQVLF5SxeK/4XtgtynSo7hKLD+vHwv8EsuWc
t1H8twz2mha07hnNF2fx4EF5v9sZ3yif9aTpPM51UzszawGqx60N2y59NlaE
1surOMERtanl8n40/38adgyLuZFznOL/JfByT1vHwDRq/7rhgSfC9ebO1P+J
zuBxXp07eEl3Pjt/shqweoFzr8Qxdv7Nd8GZTQvOxYhTPdooeOlk7fW6lJ+g
oPi/n2fY7Dem+j7dnbD0paL1Iwzo+R8/k8eJ1rcevWwptX9q8OmOj4MT8qme
gT0c/rjomP8Qi9dlRcCDUr+VRtym+c8CeEpljUwv5VPkvoWlp465m3KUtfeD
wlJoL14lDOZPp/VPqvCR3Hszu17S+q/t8ETpWjHpWop/h8OzfrklhC1i7U1R
PrznNKfzvCy9/7XBGSKT1NX9aP3z2FloP6YJam58Re9/y+GWl3Of5gtRPmtb
eHTzZYkdw+z8Z4fCaVvaFs1VZOez6QZc1XkyT+cD1TN8DS8NOzLlWA87PrXR
0mjPFizSlqR8lk5L4c67O0eeovhsgjX8ym6uza4/9P4fBH96mC4YG0jrv/Jg
4ZyVaQdE2fMk1wKXitk+3XeBXW9LARke51JOUaoCrVcOVYBbNp7iil5h8fIi
S7hg3kLtMZT/uScQLl4j4P/XgOIfubDe92r1HT9p//NLWDq81KewlN5/+Wbz
OHd9wyLeHmP5/LLl4e6O6erjVrL7v2kzfNJzzuib81m+SqGj8OlCcQf7dvb5
apdhRQMRtXM2tP7tOTw7fb66cDY7Hwl/YW5P0oPIE+z55MrN4XEiM0cFvQlj
6+8GTWHJyrXuV86Vs+M/DA8d2VNy8Awbn1tehI0SXWQPStP+53pYo/DHA411
tP79N6xebHcwdwz7ec+8uTxOYrTRBx1Hin+YwH8Cq48f7qF6hj7wybLb6hOv
UPw7A/7yRmHQrpP2/9fC1sp7f+00o/jvICzGVcb/lM99zjycv7rGbfuOs+up
ZgT38i583a/Enm8nT3gwZXDhyslsP2xCGvxWvHn7WwvKd1sD/xT9JZ9wnl3P
wR/wvCdv1Uvp+slJy6L/qRF8GTmP9Y+WhrDe5xHjlo2g+O9BmPd8bsayMBZ/
LzoH34lcutlXiuWX6uHCd394ll+5ztZXSnyDtZ6OcY9xpPjfzPk8zqFXaTff
hlL+jzVw1OkjF0/R+0j2ftjU7FPMEhPK55wEN85MvXb0FM3/VMHWg6eqKyh/
tVo//KRDUftqFZsfcJomx+OM/6qan5bB2tsEPXjOyBNbRlWy54vrAkf8FLuU
8Ii1j4MJ8PxfEzd22lP+kwp47e8vlr7LKJ/5R1hJrG9G7xp2P4ROXYD761lO
3ygLyn/BgR/+4CV/p/pvPXvhe58mLf84mvIdx8F7onkLVh6j+F85rPlwSeuX
ixT/74ULss6mX7Fnz3f25IV4363WbM7So3pu2vC7so7iVTuonuFueOGxMfOc
XrH5PLUzcLzTf/+x9e1OpfCE/U1HMzfR9X8PNywrq//aztpHrpg8j7NLWDsh
fwvVs9SAP/r4FkkMUf4bBzhGZrX/kUnsfrI8BX/drRb7L4mO/zZsqH/PO3Ix
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
9w/+BE+0/ihm/ZHivxJmGN9zn/qYC7PP69aFrY3F38V30vO/DzZ5P/HlYDd7
v9GPh3utJm2Q/UP53+7Bn84K8I0bZv1N1gfYdvToCsWDdP9P2czjVI7a8c3o
FOV/1oHvBchrBcnR+HcPXBr9t7HAj32+Qwy8UKmmJuQI+3txd+EcM32+rjTa
/9UDX7+0vOuVI+X/mWjO4ywdcS373G6qf6EFx4tv4t82lua/HWFZb27k31ha
/xwNf8m7LsNvQvmf7sDGL+zLrwqw69f9Dh47qu80l9bHi4taYHx82qVoyzJ6
/tXh42GF3T++0PzPTjhj54zag/7s+LIi4dMJd1RVDWj/XxG82q20VVSI5n87
YdXDsk+FKd6gImKJ3/euU7hZRvN/qrBez49lbr20/2k77G2X9OI5jW+qwmG+
+pza1ZS/fCAf/pzrYXP+GI3/2uEbrTNFRQop/9NYK7Q31l/6dlC94ODl8LSJ
KhYrqN53gS3cfjHC/Uwoxb9DrXj/f3+C+E14dGRC1MUhyv/9GjZ446Ib40rx
/9Fb8HxFrRyqrqD1P0thr9l3l/rtovl/azi7QHWTVBnlfwmGhwKSA9oSaP/j
NXi6/wK+JmWqf9MCPzr3rHG7DMW/Ba3RXz0WGZT5TflPl8CJ44v+TplB67+2
wBlvJqbUU77XnuNwUJR1rGc+rf/Lg72at2lrUL1eg2Y4y2+av8sB9n28Rm7F
+80Q/7TftN4wezGsZm7Ku19L678tYM9U84nyWsxCgbCI5vW+7Reonl8OrH/0
n/PnZtb+OjXCk1aktPpIUfx7hA2P45H/TfiuLvs5dyF8ZW9iudwz1j4NmsEr
I2+eu5zL7jc5f3ic0PCb0cZU/+oS3N3Jt097I9XzewavPcP9MyWC3W9Fw/Ae
yZfRizso/8d8W5y/8p12SktYPFvCFPZ0nZyY8YKNtw38YLNUXctjyex8emXB
/wT11+xax/qX7Kfw4/frdRQ20PqvIdjF6Y9dpQKt/5q3jcf52yx1sZzW+6kZ
w5p8vGtl1D86ecP/uEueWoiy/iMhHZYKKv33wJXl0+I+ga8+1Ba7nEn5P37C
RT5XCn2uUPxjth2PIz7/fPW6vWz8a7kedpcv3sCzpfivB2wT/n2Bkjd7XotS
YXNRix2HBKje2yM4ccjxqn0M+/cSP2Dn0Q2JLy9T/a9Z23H+o1bdeDuf5Uvy
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
ofzOr+EnKryfRx9TfuPRGTzO9krHdctG0fzWUviyi//Kb5msveJaw60i7wZW
NlH7FwTvDxXgJqZRfctr8G5X7wez/On+b4FX7bzWanWF/X6oQCbeX0fLC3s8
Yd+vSAF2Tj9v4JnN5mN6LOEjTRoKpVQ/ROIYbHp/U/nx/ex91SAXTmiz2HN1
JbvfvV7C0kIOfl82sfshmy8L9/Mr6VdtVG+iSR4uNW2K/NHM2kshczj8YZzr
Pxv2fqt2FNZYsWtObiQd/2V4a0F04y1Dym/9HM5f++C930+q7/cXPhOkOtV9
A/Og3EW8H36bVvOskbWfcpvggH7jZv5gdryWh+EfmoJ3uqRof8dFONDKp+H1
OMrvXQ+X3AqfUs1P+Z1+ww4Wdr4pAVTfTzabx7nzIfnMOxua3zSB5e+P1Pa/
Sc+/D/y+uVjkyVSa38yAlZUbtZdG0vr2Wjhr58nd5x6yzxP6BTc3X0h0uEr5
beZc4nHOm3j7hRaz43Uygr0K0rJ/t9H6dk84earm2af0PsNNg+ufKayMv8nG
34M18OJv6cH6PlTfcABWOWX6cyIftf/Sl3F93jwfP2+AXe9QQ9jDI/+i4HV2
/xUdhIuVHGU0qL5gzzl4jsSb1t27WX1diWr4TYyW4fsEWt/9DX40K+FPQDV7
Xr1mXsH3uZmdkxJF8e01sNS/8xVpxyi/+X54rFHE9FETaH1/Mnz65a3QmVS/
wuMBfMXdXaeXS/VdPsGFMyrLltdRfEsiB+2bW/sULU12/gRXwSd/GDpP+Mee
f5V98PE4y5GSclTfOh4utEvN25NI6xvvwXviRfhS41h/VPXhv9+fkzhDX432
t07J5XFCrn6qD0yh/c068EydVec+9lJ9kz3/OZzf+ncpex6DY2AlAf3gclo/
VHAX/hCkscCwhur79cA3yg7db97HPl980lW0T8eye2OGWH+qrwVP4MvdVkL5
lj0cYQEn7k2bFBrfRcMyr4/+CW6l+i53YN2EOfaXJNl8jmA33NS0t095gPb3
ieahvZFT1T5A+1Ed1OEzWaZXulNZexi3E5afO2225gD7/lWR8IEi4cEuN6pv
UgQX3Vyl1NPKnm/ZTlhjmL/y1Hta3yRyDePPhoKc0fNZfxisCsuW3k17P4bW
t22HSz4H7d2lR/XtwmG7XItDE7ey90/xAvjD5Mu2a6jesX473D51tO1Laarv
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
ON4=
      "]]}}, {}, {}, {{}, {}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{False, False},
  AxesLabel->{None, None},
  AxesOrigin->{2.7690732*^9, 0},
  DisplayFunction->Identity,
  Frame->{{True, True}, {True, True}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->
   FrontEndValueCache[{{Automatic, Automatic}, {Charting`FindScaledTicks[
       (Charting`getDateTicks[Automatic, {Automatic}, 
        (Map[DateList, {
          SlotSequence[1]}]& )[
         SlotSequence[1]], None, 5, {{0.0125, 0}, {0.0075, 0}}, Automatic]& )[
        SlotSequence[1]], {Identity, Identity}]& , Charting`ScaledFrameTicks[
       (Charting`getDateTicks[Charting`getDateTicks[Automatic, {Automatic}, 
         (Map[DateList, {
           SlotSequence[1]}]& )[
          SlotSequence[1]], None, 5, {{0.0125, 0}, {0.0075, 0}}, 
         Automatic]& , {Automatic}, 
        (Map[DateList, {
          SlotSequence[1]}]& )[
         SlotSequence[1]], None, 5, {{0.0125, 0}, {0.0075, 0}}, None]& )[
        SlotSequence[1]], {Identity, Identity}]& }}, {{
     Automatic, Automatic}, {{{2.6823744*^9, 
        FormBox["\"1985\"", TraditionalForm], {0.008333333333333333, 0.}}, {
       2.8401408*^9, 
        FormBox["\"1990\"", TraditionalForm], {0.008333333333333333, 0.}}, {
       2.9979072*^9, 
        FormBox["\"1995\"", TraditionalForm], {0.008333333333333333, 0.}}, {
       3.1556736*^9, 
        FormBox["\"2000\"", TraditionalForm], {0.008333333333333333, 0.}}, {
       3.3135264*^9, 
        FormBox["\"2005\"", TraditionalForm], {0.008333333333333333, 0.}}, {
       3.4712928*^9, 
        FormBox["\"2010\"", TraditionalForm], {0.008333333333333333, 0.}}, {
       2.7139104*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       2.7454464*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       2.7769824*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       2.8086048*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       2.8716768*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       2.9032128*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       2.9348352*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       2.9663712*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       3.0294432*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       3.0610656*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       3.0926016*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       3.1241376*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       3.187296*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       3.218832*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       3.250368*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       3.281904*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       3.3450624*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       3.3765984*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       3.4081344*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       3.4397568*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 
        0.}}}, {{2.6823744*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       2.8401408*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       2.9979072*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       3.1556736*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       3.3135264*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       3.4712928*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       2.7139104*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       2.7454464*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       2.7769824*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       2.8086048*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       2.8716768*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       2.9032128*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       2.9348352*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       2.9663712*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       3.0294432*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       3.0610656*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       3.0926016*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       3.1241376*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       3.187296*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       3.218832*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       3.250368*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       3.281904*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       3.3450624*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       3.3765984*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       3.4081344*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}, {
       3.4397568*^9, 
        FormBox[
         InterpretationBox[
          StyleBox[
           
           GraphicsBox[{}, ImageSize -> {0., 0.}, BaselinePosition -> 
            Baseline], "CacheGraphics" -> False], 
          Spacer[{0., 0.}]], TraditionalForm], {0.008333333333333333, 0.}}}}}],
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  Method->{"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Part[{{Identity, Identity}, {Identity, Identity}}, 1, 2][#]& )[
         Part[#, 1]], 
        (Part[{{Identity, Identity}, {Identity, Identity}}, 2, 2][#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Part[{{Identity, Identity}, {Identity, Identity}}, 1, 2][#]& )[
         Part[#, 1]], 
        (Part[{{Identity, Identity}, {Identity, Identity}}, 2, 2][#]& )[
         Part[#, 2]]}& )}},
  PlotRange->{{2.7690732*^9, 3.4712496*^9}, {0, 0.3982569449848261}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.02], 
     Scaled[0.05]}},
  Ticks->{{}, Automatic}]], "Output",
 CellChangeTimes->{
  3.7098438127717686`*^9, 3.709847922134967*^9, 3.7098480154502497`*^9, {
   3.7098481993492527`*^9, 3.7098482146594167`*^9}, {3.7098482667141733`*^9, 
   3.709848290592108*^9}, 3.7098483647554345`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Length", "[", "flightMerRx", "]"}]], "Input",
 CellChangeTimes->{{3.7098497327071204`*^9, 3.709849741633966*^9}}],

Cell[BoxData["8128"], "Output",
 CellChangeTimes->{3.709849742195081*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Length", "[", "years0", "]"}]], "Input",
 CellChangeTimes->{{3.709849746806034*^9, 3.7098497518140697`*^9}}],

Cell[BoxData["8128"], "Output",
 CellChangeTimes->{3.709849752465296*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"dataretrogrades", "=", 
  RowBox[{"Transpose", "[", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"Delete", "[", 
      RowBox[{"flightMerRx", ",", "pos5"}], "]"}], ",", 
     RowBox[{"Delete", "[", 
      RowBox[{
       RowBox[{"years0", "[", 
        RowBox[{"[", 
         RowBox[{"All", ",", "2"}], "]"}], "]"}], ",", "pos5"}], "]"}]}], 
    "}"}], "]"}]}]], "Input",
 CellChangeTimes->{{3.709848413859581*^9, 3.709848447045439*^9}, {
   3.7098494146693983`*^9, 3.7098494183931675`*^9}, 3.7098497981636467`*^9}],

Cell[BoxData[
 InterpretationBox[
  TagBox[
   FrameBox[GridBox[{
      {
       ItemBox[
        TagBox[
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"\<\"retrograde\"\>", ",", "0.005833672500339167`"}], 
            "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"\<\"retrograde\"\>", ",", "0.008952794357026587`"}], 
            "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"\<\"retrograde\"\>", ",", "0.006121199755152009`"}], 
            "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"\<\"retrograde\"\>", ",", "0.005572166349551508`"}], 
            "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"\<\"retrograde\"\>", ",", "0.0056829852790140365`"}], 
            "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"\<\"retrograde\"\>", ",", "0.005067441687159997`"}], 
            "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"\<\"retrograde\"\>", ",", "0.00817497310864109`"}], 
            "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"\<\"retrograde\"\>", ",", "0.005796710703693718`"}], 
            "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"\<\"retrograde\"\>", ",", "0.005372687704026115`"}], 
            "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"\<\"retrograde\"\>", ",", "0.011787020728898524`"}], 
            "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"\<\"retrograde\"\>", ",", "0.005269914194986825`"}], 
            "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"\<\"retrograde\"\>", ",", "0.0047377326565143825`"}], 
            "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"\<\"retrograde\"\>", ",", "0.009828931572629051`"}], 
            "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"\<\"prograde\"\>", ",", "0.01036164160910199`"}], "}"}], 
           ",", 
           RowBox[{"{", 
            RowBox[{"\<\"prograde\"\>", ",", "0.005153241117439653`"}], "}"}],
            ",", 
           RowBox[{"{", 
            RowBox[{"\<\"prograde\"\>", ",", "0.006648445002585507`"}], "}"}],
            ",", 
           RowBox[{"{", 
            RowBox[{"\<\"prograde\"\>", ",", "0.007866203670895047`"}], "}"}],
            ",", 
           RowBox[{"{", 
            RowBox[{"\<\"prograde\"\>", ",", "0.009011432414256892`"}], "}"}],
            ",", 
           TemplateBox[{"8082"},
            "OutputSizeLimit`Skeleton",
            DisplayFunction->(FrameBox[
              RowBox[{"\" \[CenterEllipsis]\"", #, "\"\[CenterEllipsis] \""}],
               Background -> GrayLevel[0.75], 
              BaseStyle -> {
               "Deploy", FontColor -> GrayLevel[1], FontSize -> Smaller, 
                ShowStringCharacters -> False}, BaselinePosition -> Baseline, 
              ContentPadding -> False, FrameMargins -> {{1, 1}, {1, 2}}, 
              FrameStyle -> None, RoundingRadius -> 7]& )], ",", 
           RowBox[{"{", 
            RowBox[{"\<\"prograde\"\>", ",", "0.006317889603192197`"}], "}"}],
            ",", 
           RowBox[{"{", 
            RowBox[{"\<\"prograde\"\>", ",", "0.021602557037363607`"}], "}"}],
            ",", 
           RowBox[{"{", 
            RowBox[{"\<\"prograde\"\>", ",", "0.15852361588989677`"}], "}"}], 
           ",", 
           RowBox[{"{", 
            RowBox[{"\<\"prograde\"\>", ",", "0.10506770267954064`"}], "}"}], 
           ",", 
           RowBox[{"{", 
            RowBox[{"\<\"prograde\"\>", ",", "0.015675705406743304`"}], "}"}],
            ",", 
           RowBox[{"{", 
            RowBox[{"\<\"prograde\"\>", ",", "0.01862053768179815`"}], "}"}], 
           ",", 
           RowBox[{"{", 
            RowBox[{"\<\"prograde\"\>", ",", "0.027768595041322314`"}], "}"}],
            ",", 
           RowBox[{"{", 
            RowBox[{"\<\"prograde\"\>", ",", "0.046135489858146625`"}], "}"}],
            ",", 
           RowBox[{"{", 
            RowBox[{"\<\"prograde\"\>", ",", "0.03128468368479467`"}], "}"}], 
           ",", 
           RowBox[{"{", 
            RowBox[{"\<\"retrograde\"\>", ",", "0.04615478292638373`"}], 
            "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"\<\"retrograde\"\>", ",", "0.016908212560386472`"}], 
            "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"\<\"retrograde\"\>", ",", "0.007507175977036874`"}], 
            "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"\<\"retrograde\"\>", ",", "0.022352550625207482`"}], 
            "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"\<\"retrograde\"\>", ",", "0.00864026585433398`"}], 
            "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"\<\"retrograde\"\>", ",", "0.015080497248828205`"}], 
            "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"\<\"prograde\"\>", ",", "0.005024545192030032`"}], "}"}],
            ",", 
           RowBox[{"{", 
            RowBox[{"\<\"prograde\"\>", ",", "0.011659295847452759`"}], 
            "}"}]}], "}"}],
         Short[#, 5]& ],
        BaseStyle->{Deployed -> False},
        StripOnInput->False]},
      {GridBox[{
         {
          TagBox[
           TooltipBox[
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource[
                "FEStrings", "sizeBriefExplanation"], StandardForm],
               ImageSizeCache->{132., {6., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarCategory",
             StripOnInput->False],
            StyleBox[
             DynamicBox[
              ToBoxes[
               FEPrivate`FrontEndResource["FEStrings", "sizeExplanation"], 
               StandardForm]], DynamicUpdating -> True, StripOnInput -> 
             False]],
           Annotation[#, 
            Style[
             Dynamic[
              FEPrivate`FrontEndResource["FEStrings", "sizeExplanation"]], 
             DynamicUpdating -> True], "Tooltip"]& ], 
          ButtonBox[
           PaneSelectorBox[{False->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowLess"], 
                StandardForm],
               ImageSizeCache->{108., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControl",
             StripOnInput->False], True->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowLess"], 
                StandardForm],
               ImageSizeCache->{108., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControlActive",
             StripOnInput->False]}, Dynamic[
             CurrentValue["MouseOver"]],
            Alignment->Center,
            FrameMargins->0,
            ImageSize->{Automatic, 25}],
           Appearance->None,
           
           ButtonFunction:>OutputSizeLimit`ButtonFunction[
            OutputSizeLimit`Defer, 18, 15167133528138137613, 5/2],
           Enabled->True,
           Evaluator->Automatic,
           Method->"Queued"], 
          ButtonBox[
           PaneSelectorBox[{False->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowMore"], 
                StandardForm],
               ImageSizeCache->{126., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControl",
             StripOnInput->False], True->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowMore"], 
                StandardForm],
               ImageSizeCache->{126., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControlActive",
             StripOnInput->False]}, Dynamic[
             CurrentValue["MouseOver"]],
            Alignment->Center,
            FrameMargins->0,
            ImageSize->{Automatic, 25}],
           Appearance->None,
           
           ButtonFunction:>OutputSizeLimit`ButtonFunction[
            OutputSizeLimit`Defer, 18, 15167133528138137613, 5 2],
           Enabled->True,
           Evaluator->Automatic,
           Method->"Queued"], 
          ButtonBox[
           PaneSelectorBox[{False->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowAll"], 
                StandardForm],
               ImageSizeCache->{93., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControl",
             StripOnInput->False], True->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowAll"], 
                StandardForm],
               ImageSizeCache->{44., {1., 9.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControlActive",
             StripOnInput->False]}, Dynamic[
             CurrentValue["MouseOver"]],
            Alignment->Center,
            FrameMargins->0,
            ImageSize->{Automatic, 25}],
           Appearance->None,
           
           ButtonFunction:>OutputSizeLimit`ButtonFunction[
            OutputSizeLimit`Defer, 18, 15167133528138137613, Infinity],
           Enabled->True,
           Evaluator->Automatic,
           Method->"Queued"], 
          ButtonBox[
           PaneSelectorBox[{False->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeChangeLimit"], 
                StandardForm],
               ImageSizeCache->{163., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControl",
             StripOnInput->False], True->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeChangeLimit"], 
                StandardForm]],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControlActive",
             StripOnInput->False]}, Dynamic[
             CurrentValue["MouseOver"]],
            Alignment->Center,
            FrameMargins->0,
            ImageSize->{Automatic, 25}],
           Appearance->None,
           ButtonFunction:>FrontEndExecute[{
              FrontEnd`SetOptions[
              FrontEnd`$FrontEnd, 
               FrontEnd`PreferencesSettings -> {"Page" -> "Evaluation"}], 
              FrontEnd`FrontEndToken["PreferencesDialog"]}],
           Evaluator->None,
           Method->"Preemptive"]}
        },
        AutoDelete->False,
        FrameStyle->GrayLevel[0.85],
        GridBoxDividers->{"Columns" -> {False, {True}}},
        GridBoxItemSize->{"Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}},
        GridBoxSpacings->{"Columns" -> {{2}}}]}
     },
     DefaultBaseStyle->"Column",
     GridBoxAlignment->{
      "Columns" -> {{Left}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
       "RowsIndexed" -> {}},
     GridBoxDividers->{
      "Columns" -> {{False}}, "ColumnsIndexed" -> {}, "Rows" -> {{False}}, 
       "RowsIndexed" -> {}},
     GridBoxItemSize->{
      "Columns" -> {{Automatic}}, "ColumnsIndexed" -> {}, "Rows" -> {{1.}}, 
       "RowsIndexed" -> {}},
     GridBoxSpacings->{"Columns" -> {
         Offset[0.27999999999999997`], {
          Offset[0.5599999999999999]}, 
         Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
         Offset[0.2], 
         Offset[1.2], {
          Offset[0.4]}, 
         Offset[0.2]}, "RowsIndexed" -> {}}],
    Background->RGBColor[0.9657, 0.9753, 0.9802],
    FrameMargins->{{12, 12}, {0, 15}},
    FrameStyle->GrayLevel[0.85],
    RoundingRadius->5,
    StripOnInput->False],
   Deploy,
   DefaultBaseStyle->"Deploy"],
  Out[18]]], "Output",
 CellChangeTimes->{
  3.7098484482166815`*^9, {3.70984940021041*^9, 3.709849419177331*^9}, 
   3.7098495849025764`*^9, {3.7098497767732267`*^9, 3.7098498002340755`*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"data", "//", "Short"}]], "Input",
 CellChangeTimes->{{3.7097547805558186`*^9, 3.70975478368446*^9}}],

Cell[BoxData[
 TagBox[
  RowBox[{"{", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      TemplateBox[{RowBox[{"\"Mon 19 Oct 1987 12:00:00\"", 
          StyleBox["\"CDT\"", FontColor -> GrayLevel[0.5]]}],
        RowBox[{"DateObject", "[", 
          RowBox[{
            RowBox[{"{", 
              RowBox[{"1987", ",", "10", ",", "19"}], "}"}], ",", 
            RowBox[{"TimeObject", "[", 
              RowBox[{
                RowBox[{"{", 
                  RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
              "]"}], ",", 
            RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], "]"}]},
       "DateObject",
       Editable->False], ",", "0.005833672500339167`"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{
      TemplateBox[{RowBox[{"\"Tue 20 Oct 1987 12:00:00\"", 
          StyleBox["\"CDT\"", FontColor -> GrayLevel[0.5]]}],
        RowBox[{"DateObject", "[", 
          RowBox[{
            RowBox[{"{", 
              RowBox[{"1987", ",", "10", ",", "20"}], "}"}], ",", 
            RowBox[{"TimeObject", "[", 
              RowBox[{
                RowBox[{"{", 
                  RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
              "]"}], ",", 
            RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], "]"}]},
       "DateObject",
       Editable->False], ",", "0.008952794357026587`"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{
      TemplateBox[{RowBox[{"\"Wed 21 Oct 1987 12:00:00\"", 
          StyleBox["\"CDT\"", FontColor -> GrayLevel[0.5]]}],
        RowBox[{"DateObject", "[", 
          RowBox[{
            RowBox[{"{", 
              RowBox[{"1987", ",", "10", ",", "21"}], "}"}], ",", 
            RowBox[{"TimeObject", "[", 
              RowBox[{
                RowBox[{"{", 
                  RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
              "]"}], ",", 
            RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], "]"}]},
       "DateObject",
       Editable->False], ",", "0.006121199755152009`"}], "}"}], ",", 
    RowBox[{"\[LeftSkeleton]", "8111", "\[RightSkeleton]"}], ",", 
    RowBox[{"{", 
     RowBox[{
      TemplateBox[{RowBox[{"\"Thu 31 Dec 2009 12:00:00\"", 
          StyleBox["\"CST\"", FontColor -> GrayLevel[0.5]]}],
        RowBox[{"DateObject", "[", 
          RowBox[{
            RowBox[{"{", 
              RowBox[{"2009", ",", "12", ",", "31"}], "}"}], ",", 
            RowBox[{"TimeObject", "[", 
              RowBox[{
                RowBox[{"{", 
                  RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
              "]"}], ",", 
            RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], "]"}]},
       "DateObject",
       Editable->False], ",", "0.015080497248828205`"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{
      TemplateBox[{RowBox[{"\"Tue 1 Dec 2009 12:00:00\"", 
          StyleBox["\"CST\"", FontColor -> GrayLevel[0.5]]}],
        RowBox[{"DateObject", "[", 
          RowBox[{
            RowBox[{"{", 
              RowBox[{"2009", ",", "12", ",", "1"}], "}"}], ",", 
            RowBox[{"TimeObject", "[", 
              RowBox[{
                RowBox[{"{", 
                  RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
              "]"}], ",", 
            RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], "]"}]},
       "DateObject",
       Editable->False], ",", "0.005024545192030032`"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{
      TemplateBox[{RowBox[{"\"Wed 2 Dec 2009 12:00:00\"", 
          StyleBox["\"CST\"", FontColor -> GrayLevel[0.5]]}],
        RowBox[{"DateObject", "[", 
          RowBox[{
            RowBox[{"{", 
              RowBox[{"2009", ",", "12", ",", "2"}], "}"}], ",", 
            RowBox[{"TimeObject", "[", 
              RowBox[{
                RowBox[{"{", 
                  RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
              "]"}], ",", 
            RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], "]"}]},
       "DateObject",
       Editable->False], ",", "0.011659295847452759`"}], "}"}]}], "}"}],
  Short]], "Output",
 CellChangeTimes->{3.7097694046071215`*^9, 3.7097809627305417`*^9, 
  3.7097924371380124`*^9, 3.7098484567074356`*^9, 3.709849813214758*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Length", "[", "data", "]"}]], "Input",
 CellChangeTimes->{{3.709850341070839*^9, 3.7098503449626427`*^9}}],

Cell[BoxData["8117"], "Output",
 CellChangeTimes->{3.7098503456917934`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Export", "[", 
  RowBox[{
  "\"\<22 yrs flight cancellation data.mx\>\"", ",", "dataretrogrades"}], 
  "]"}]], "Input",
 CellChangeTimes->{{3.709593086009759*^9, 3.7095931028552103`*^9}, {
  3.7097550315595503`*^9, 3.7097550392101173`*^9}, {3.7097694037879534`*^9, 
  3.7097694056263304`*^9}, {3.7098140094713736`*^9, 3.709814011214732*^9}, {
  3.709848471187428*^9, 3.709848473448895*^9}}],

Cell[BoxData["\<\"22 yrs flight cancellation data.mx\"\>"], "Output",
 CellChangeTimes->{
  3.7095931047886066`*^9, 3.709780962800555*^9, 3.7097924371930246`*^9, {
   3.709848456882473*^9, 3.7098484751872563`*^9}}]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"bw", "=", 
   RowBox[{"GatherBy", "[", 
    RowBox[{
     RowBox[{"Delete", "[", 
      RowBox[{"dataretrogrades", ",", "pos5"}], "]"}], ",", "First"}], 
    "]"}]}], ";"}]], "Input",
 CellChangeTimes->{{3.7097549291034966`*^9, 3.7097549743858356`*^9}, {
  3.709848509953439*^9, 3.70984854852641*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"LocationTest", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"bw", "[", 
       RowBox[{"[", 
        RowBox[{"1", ",", "All", ",", "2"}], "]"}], "]"}], ",", 
      RowBox[{"bw", "[", 
       RowBox[{"[", 
        RowBox[{"2", ",", "All", ",", "2"}], "]"}], "]"}]}], 
     RowBox[{"(*", 
      RowBox[{
       RowBox[{",", 
        RowBox[{"{", 
         RowBox[{"\"\<TestDataTable\>\"", ",", "All"}], "}"}]}], "}"}], 
      "*)"}], "}"}], ",", "Automatic", ",", 
    RowBox[{"{", 
     RowBox[{"\"\<TestDataTable\>\"", ",", "All"}], "}"}]}], "]"}], " ", 
  RowBox[{"(*", 
   RowBox[{
    RowBox[{
    "BUT", " ", "I", " ", "DONT", " ", "THINK", " ", "A", " ", "MANN"}], "-", 
    RowBox[{
    "WHITNEY", " ", "TEST", " ", "With", " ", "MEDIANS", " ", "IS", " ", "AS",
      " ", "APPROPRIATE"}]}], "*)"}]}]], "Input",
 CellChangeTimes->{{3.709692434168335*^9, 3.709692452305051*^9}, {
  3.709692531965373*^9, 3.709692608666089*^9}, {3.709692686601057*^9, 
  3.7096927198018603`*^9}, {3.709692920715026*^9, 3.70969293215237*^9}, {
  3.7097826691838703`*^9, 3.709782739380252*^9}, {3.709910531216757*^9, 
  3.7099105391283913`*^9}}],

Cell[BoxData[
 StyleBox[
  TagBox[GridBox[{
     {"\<\"\"\>", "\<\"Statistic\"\>", "\<\"P\[Hyphen]Value\"\>"},
     {"\<\"Mann\[Hyphen]Whitney\"\>", "5.0865635`*^6", "0.7790149910283404`"}
    },
    AutoDelete->False,
    GridBoxAlignment->{"Columns" -> {{Left}}, "Rows" -> {{Automatic}}},
    GridBoxDividers->{
     "ColumnsIndexed" -> {2 -> GrayLevel[0.7]}, 
      "RowsIndexed" -> {2 -> GrayLevel[0.7]}},
    GridBoxItemSize->{"Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}},
    GridBoxSpacings->{"Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}],
   "Grid"], "DialogStyle",
  StripOnInput->False]], "Output",
 CellChangeTimes->{
  3.7096926092622104`*^9, 3.7096926898807297`*^9, 3.709692720735051*^9, {
   3.709692923386659*^9, 3.7096929326064625`*^9}, 3.709780963038603*^9, 
   3.7097924373880625`*^9, 3.709848516182726*^9, 3.7098485541545725`*^9, 
   3.7098498174396305`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Histogram", "[", 
  RowBox[{"dataretrogrades", "[", 
   RowBox[{"[", 
    RowBox[{"All", ",", "2"}], "]"}], "]"}], "]"}]], "Input",
 CellChangeTimes->{
  3.709777486799003*^9, {3.70984852345823*^9, 3.7098485256606846`*^9}}],

Cell[BoxData[
 GraphicsBox[{
   {RGBColor[0.987148, 0.8073604000000001, 0.49470040000000004`], EdgeForm[{
    Opacity[0.48299999999999993`], Thickness[Small]}], {}, 
    {RGBColor[0.987148, 0.8073604000000001, 0.49470040000000004`], EdgeForm[{
     Opacity[0.48299999999999993`], Thickness[Small]}], 
     RectangleBox[{0., 0}, {0.002, 197},
      RoundingRadius->0], RectangleBox[{0.002, 0}, {0.004, 825},
      RoundingRadius->0], RectangleBox[{0.004, 0}, {0.006, 885},
      RoundingRadius->0], RectangleBox[{0.006, 0}, {0.008, 877},
      RoundingRadius->0], RectangleBox[{0.008, 0}, {0.01, 734},
      RoundingRadius->0], RectangleBox[{0.01, 0}, {0.012, 672},
      RoundingRadius->0], RectangleBox[{0.012, 0}, {0.014, 535},
      RoundingRadius->0], RectangleBox[{0.014, 0}, {0.016, 505},
      RoundingRadius->0], RectangleBox[{0.016, 0}, {0.018, 408},
      RoundingRadius->0], RectangleBox[{0.018, 0}, {0.02, 336},
      RoundingRadius->0], RectangleBox[{0.02, 0}, {0.022, 285},
      RoundingRadius->0], RectangleBox[{0.022, 0}, {0.024, 250},
      RoundingRadius->0], RectangleBox[{0.024, 0}, {0.026, 195},
      RoundingRadius->0], RectangleBox[{0.026, 0}, {0.028, 177},
      RoundingRadius->0], RectangleBox[{0.028, 0}, {0.03, 153},
      RoundingRadius->0], RectangleBox[{0.03, 0}, {0.032, 110},
      RoundingRadius->0], RectangleBox[{0.032, 0}, {0.034, 88},
      RoundingRadius->0], RectangleBox[{0.034, 0}, {0.036, 94},
      RoundingRadius->0], RectangleBox[{0.036, 0}, {0.038, 74},
      RoundingRadius->0], RectangleBox[{0.038, 0}, {0.04, 62},
      RoundingRadius->0], RectangleBox[{0.04, 0}, {0.042, 57},
      RoundingRadius->0], RectangleBox[{0.042, 0}, {0.044, 43},
      RoundingRadius->0], RectangleBox[{0.044, 0}, {0.046, 53},
      RoundingRadius->0], RectangleBox[{0.046, 0}, {0.048, 42},
      RoundingRadius->0], RectangleBox[{0.048, 0}, {0.05, 32},
      RoundingRadius->0], RectangleBox[{0.05, 0}, {0.052, 21},
      RoundingRadius->0], RectangleBox[{0.052, 0}, {0.054, 28},
      RoundingRadius->0], RectangleBox[{0.054, 0}, {0.056, 23},
      RoundingRadius->0], RectangleBox[{0.056, 0}, {0.058, 25},
      RoundingRadius->0], RectangleBox[{0.058, 0}, {0.06, 28},
      RoundingRadius->0], RectangleBox[{0.06, 0}, {0.062, 17},
      RoundingRadius->0], RectangleBox[{0.062, 0}, {0.064, 13},
      RoundingRadius->0], RectangleBox[{0.064, 0}, {0.066, 19},
      RoundingRadius->0], RectangleBox[{0.066, 0}, {0.068, 13},
      RoundingRadius->0], RectangleBox[{0.068, 0}, {0.07, 19},
      RoundingRadius->0], RectangleBox[{0.07, 0}, {0.072, 14},
      RoundingRadius->0], RectangleBox[{0.072, 0}, {0.074, 9},
      RoundingRadius->0], RectangleBox[{0.074, 0}, {0.076, 10},
      RoundingRadius->0], RectangleBox[{0.076, 0}, {0.078, 6},
      RoundingRadius->0], RectangleBox[{0.078, 0}, {0.08, 8},
      RoundingRadius->0], RectangleBox[{0.08, 0}, {0.082, 8},
      RoundingRadius->0], RectangleBox[{0.082, 0}, {0.084, 14},
      RoundingRadius->0], RectangleBox[{0.084, 0}, {0.086, 7},
      RoundingRadius->0], RectangleBox[{0.086, 0}, {0.088, 7},
      RoundingRadius->0], RectangleBox[{0.088, 0}, {0.09, 8},
      RoundingRadius->0], RectangleBox[{0.09, 0}, {0.092, 12},
      RoundingRadius->0], RectangleBox[{0.092, 0}, {0.094, 3},
      RoundingRadius->0], RectangleBox[{0.094, 0}, {0.096, 5},
      RoundingRadius->0], RectangleBox[{0.096, 0}, {0.098, 6},
      RoundingRadius->0], RectangleBox[{0.098, 0}, {0.1, 2},
      RoundingRadius->0], RectangleBox[{0.1, 0}, {0.102, 3},
      RoundingRadius->0], RectangleBox[{0.102, 0}, {0.104, 1},
      RoundingRadius->0], RectangleBox[{0.104, 0}, {0.106, 3},
      RoundingRadius->0], RectangleBox[{0.106, 0}, {0.108, 4},
      RoundingRadius->0], RectangleBox[{0.108, 0}, {0.11, 6},
      RoundingRadius->0], RectangleBox[{0.11, 0}, {0.112, 8},
      RoundingRadius->0], RectangleBox[{0.112, 0}, {0.114, 4},
      RoundingRadius->0], RectangleBox[{0.114, 0}, {0.116, 5},
      RoundingRadius->0], RectangleBox[{0.116, 0}, {0.118, 6},
      RoundingRadius->0], RectangleBox[{0.118, 0}, {0.12, 6},
      RoundingRadius->0], RectangleBox[{0.12, 0}, {0.122, 2},
      RoundingRadius->0], RectangleBox[{0.122, 0}, {0.124, 2},
      RoundingRadius->0], RectangleBox[{0.124, 0}, {0.126, 1},
      RoundingRadius->0], RectangleBox[{0.126, 0}, {0.128, 2},
      RoundingRadius->0], RectangleBox[{0.128, 0}, {0.13, 2},
      RoundingRadius->0], RectangleBox[{0.136, 0}, {0.138, 1},
      RoundingRadius->0], RectangleBox[{0.138, 0}, {0.14, 2},
      RoundingRadius->0], RectangleBox[{0.14, 0}, {0.142, 1},
      RoundingRadius->0], RectangleBox[{0.144, 0}, {0.146, 1},
      RoundingRadius->0], RectangleBox[{0.148, 0}, {0.15, 2},
      RoundingRadius->0], RectangleBox[{0.15, 0}, {0.152, 3},
      RoundingRadius->0], RectangleBox[{0.154, 0}, {0.156, 2},
      RoundingRadius->0], RectangleBox[{0.156, 0}, {0.158, 2},
      RoundingRadius->0], RectangleBox[{0.158, 0}, {0.16, 2},
      RoundingRadius->0], RectangleBox[{0.16, 0}, {0.162, 1},
      RoundingRadius->0], RectangleBox[{0.162, 0}, {0.164, 1},
      RoundingRadius->0], RectangleBox[{0.164, 0}, {0.166, 1},
      RoundingRadius->0], RectangleBox[{0.166, 0}, {0.168, 1},
      RoundingRadius->0], RectangleBox[{0.168, 0}, {0.17, 3},
      RoundingRadius->0], RectangleBox[{0.17, 0}, {0.172, 2},
      RoundingRadius->0], RectangleBox[{0.172, 0}, {0.174, 2},
      RoundingRadius->0], RectangleBox[{0.174, 0}, {0.176, 1},
      RoundingRadius->0], RectangleBox[{0.178, 0}, {0.18, 3},
      RoundingRadius->0], RectangleBox[{0.196, 0}, {0.198, 1},
      RoundingRadius->0], RectangleBox[{0.202, 0}, {0.204, 1},
      RoundingRadius->0], RectangleBox[{0.204, 0}, {0.206, 1},
      RoundingRadius->0], RectangleBox[{0.21, 0}, {0.212, 1},
      RoundingRadius->0], RectangleBox[{0.212, 0}, {0.214, 1},
      RoundingRadius->0], RectangleBox[{0.214, 0}, {0.216, 1},
      RoundingRadius->0], RectangleBox[{0.222, 0}, {0.224, 1},
      RoundingRadius->0], RectangleBox[{0.228, 0}, {0.23, 1},
      RoundingRadius->0], RectangleBox[{0.256, 0}, {0.258, 1},
      RoundingRadius->0], RectangleBox[{0.258, 0}, {0.26, 2},
      RoundingRadius->0], RectangleBox[{0.26, 0}, {0.262, 1},
      RoundingRadius->0], RectangleBox[{0.29, 0}, {0.292, 2},
      RoundingRadius->0], RectangleBox[{0.298, 0}, {0.3, 1},
      RoundingRadius->0], RectangleBox[{0.366, 0}, {0.368, 1},
      RoundingRadius->0], RectangleBox[{0.398, 0}, {0.4, 1},
      RoundingRadius->
       0]}, {}, {}}, {{}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, \
{}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, \
{}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, \
{}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, \
{}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, \
{}, {}, {}, {}, {}, {}, {}, {}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{None, None},
  AxesOrigin->{-0.00116, 0},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  PlotRange->NCache[{{0, 
      Rational[29, 500]}, {All, All}}, {{0, 0.058}, {All, All}}],
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.02], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellChangeTimes->{
  3.7097809771925035`*^9, 3.7097924377981462`*^9, {3.709848526876936*^9, 
   3.7098485558199167`*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"FindDistribution", "[", 
  RowBox[{"data", "[", 
   RowBox[{"[", 
    RowBox[{"All", ",", "2"}], "]"}], "]"}], "]"}]], "Input",
 CellChangeTimes->{{3.709781211267758*^9, 3.70978125099774*^9}, {
  3.7097813245913224`*^9, 3.709781330046439*^9}}],

Cell[BoxData[
 RowBox[{"MixtureDistribution", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"0.5089744563209969`", ",", "0.491025543679003`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"NormalDistribution", "[", 
      RowBox[{
       RowBox[{"-", "0.03504247123944587`"}], ",", "0.030558812377112755`"}], 
      "]"}], ",", 
     RowBox[{"BetaDistribution", "[", 
      RowBox[{"2.318999698428008`", ",", "31.018362343874806`"}], "]"}]}], 
    "}"}]}], "]"}]], "Output",
 CellChangeTimes->{3.7098485597237244`*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"standardized", "=", 
    RowBox[{"Standardize", "[", 
     RowBox[{
      RowBox[{"Log", "[", "data", "]"}], "[", 
      RowBox[{"[", 
       RowBox[{"All", ",", "2"}], "]"}], "]"}], "]"}]}], ";"}], " ", 
  RowBox[{"(*", "Transformation", "*)"}]}]], "Input",
 CellChangeTimes->{{3.7096944109863777`*^9, 3.7096944670688677`*^9}, {
   3.70969540472499*^9, 3.7096954297481184`*^9}, 3.7097548910106916`*^9, {
   3.709777579548007*^9, 3.709777595054184*^9}, {3.709848627773787*^9, 
   3.709848636917676*^9}, {3.709849323743609*^9, 3.7098493314391994`*^9}, {
   3.7098500149004354`*^9, 3.7098500198725147`*^9}, {3.7098503714081078`*^9, 
   3.709850379116701*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Export", "[", 
  RowBox[{
  "\"\<22 yrs standardized flight cancellations.mx\>\"", ",", 
   "standardized"}], "]"}]], "Input",
 CellChangeTimes->{{3.709755711976215*^9, 3.7097557440537863`*^9}, {
  3.709814034803564*^9, 3.7098140350126057`*^9}}],

Cell[BoxData["\<\"22 yrs standardized flight cancellations.mx\"\>"], "Output",
 CellChangeTimes->{3.7097809631586275`*^9, 3.7097999871424627`*^9, 
  3.7098486415336304`*^9, 3.709849960409175*^9, 3.7098500224459953`*^9, 
  3.709850381767248*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Mean", "[", "standardized", "]"}]], "Input",
 CellChangeTimes->{{3.709695355724949*^9, 3.709695363404523*^9}, {
  3.709695434680127*^9, 3.7096954385489197`*^9}}],

Cell[BoxData[
 RowBox[{"-", "1.8083582239206705`*^-14"}]], "Output",
 CellChangeTimes->{3.7096953642827034`*^9, 3.7096954398311834`*^9, 
  3.7097809631826334`*^9, 3.7098486433830147`*^9, 3.709849961842471*^9, 
  3.7098500236252413`*^9, 3.7098503831365314`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"StandardDeviation", "[", "standardized", "]"}]], "Input",
 CellChangeTimes->{{3.7096954430408545`*^9, 3.7096954588260746`*^9}}],

Cell[BoxData["1.`"], "Output",
 CellChangeTimes->{{3.709695453926071*^9, 3.709695459197159*^9}, 
   3.7097809632046375`*^9, 3.7098486448033066`*^9, 3.709849963042719*^9, 
   3.7098500246414504`*^9, 3.709850384392791*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Histogram", "[", "standardized", "]"}]], "Input",
 CellChangeTimes->{{3.709695509744508*^9, 3.709695518667336*^9}, {
  3.709849977490705*^9, 3.7098499811894693`*^9}, {3.7098504412985506`*^9, 
  3.709850445044325*^9}}],

Cell[BoxData[
 GraphicsBox[{
   {RGBColor[0.987148, 0.8073604000000001, 0.49470040000000004`], EdgeForm[{
    Opacity[0.581], Thickness[Small]}], {}, 
    {RGBColor[0.987148, 0.8073604000000001, 0.49470040000000004`], EdgeForm[{
     Opacity[0.581], Thickness[Small]}], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{-3.5, 0}, {-3., 2}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{62.335868694955934`, 106.1220976781425}, {
          181.93872627715393`, 183.41370135631612`}}],
        StatusArea[#, 2]& ,
        TagBoxNote->"2"],
       StyleBox["2", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[2, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{-3., 0}, {-2.5, 18}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{105.1220976781425, 148.908326661329}, {
          178.13892564385634`, 183.41370135631612`}}],
        StatusArea[#, 18]& ,
        TagBoxNote->"18"],
       StyleBox["18", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[18, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{-2.5, 0}, {-2., 144}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{147.908326661329, 191.69455564451556`}, {
          148.21549565663787`, 183.41370135631612`}}],
        StatusArea[#, 144]& ,
        TagBoxNote->"144"],
       StyleBox["144", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[144, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{-2., 0}, {-1.5, 415}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{190.69455564451556`, 234.48078462770212`}, {
          83.85637243016, 183.41370135631612`}}],
        StatusArea[#, 415]& ,
        TagBoxNote->"415"],
       StyleBox["415", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[415, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{-1.5, 0}, {-1., 751}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{233.48078462770212`, 277.2670136108886}, {
          4.06055913091069, 183.41370135631612`}}],
        StatusArea[#, 751]& ,
        TagBoxNote->"751"],
       StyleBox["751", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[751, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{-1., 0}, {-0.5, 1174}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{276.2670136108886, 
          320.0532425940752}, {-96.39667011189422, 183.41370135631612`}}],
        StatusArea[#, 1174]& ,
        TagBoxNote->"1174"],
       StyleBox["1174", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[1174, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{-0.5, 0}, {0., 1532}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{319.0532425940752, 
          362.83947157726175`}, {-181.4172092819277, 183.41370135631612`}}],
        StatusArea[#, 1532]& ,
        TagBoxNote->"1532"],
       StyleBox["1532", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[1532, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{0., 0}, {0.5, 1618}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{361.83947157726175`, 
          405.6257005604483}, {-201.84113768590223`, 183.41370135631612`}}],
        StatusArea[#, 1618]& ,
        TagBoxNote->"1618"],
       StyleBox["1618", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[1618, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{0.5, 0}, {1., 1269}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{404.6257005604483, 
          448.41192954363487`}, {-118.95798637209865`, 183.41370135631612`}}],
        StatusArea[#, 1269]& ,
        TagBoxNote->"1269"],
       StyleBox["1269", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[1269, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{1., 0}, {1.5, 656}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{447.41192954363487`, 491.1981585268214}, {
          26.62187539111511, 183.41370135631612`}}],
        StatusArea[#, 656]& ,
        TagBoxNote->"656"],
       StyleBox["656", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[656, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{1.5, 0}, {2., 318}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{490.1981585268214, 533.984387510008}, {
          106.8926637695266, 183.41370135631612`}}],
        StatusArea[#, 318]& ,
        TagBoxNote->"318"],
       StyleBox["318", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[318, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{2., 0}, {2.5, 135}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{532.984387510008, 576.7706164931944}, {
          150.35288351286775`, 183.41370135631612`}}],
        StatusArea[#, 135]& ,
        TagBoxNote->"135"],
       StyleBox["135", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[135, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{2.5, 0}, {3., 64}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{575.7706164931944, 619.556845476381}, {
          167.21449882312578`, 183.41370135631612`}}],
        StatusArea[#, 64]& ,
        TagBoxNote->"64"],
       StyleBox["64", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[64, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{3., 0}, {3.5, 16}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{618.556845476381, 662.3430744595676}, {
          178.61390072301853`, 183.41370135631612`}}],
        StatusArea[#, 16]& ,
        TagBoxNote->"16"],
       StyleBox["16", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[16, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{3.5, 0}, {4., 5}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{661.3430744595676, 705.1293034427541}, {
          181.22626365841063`, 183.41370135631612`}}],
        StatusArea[#, 5]& ,
        TagBoxNote->"5"],
       StyleBox["5", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[5, {}], 
       "Tooltip"]& ]}, {}, {}}, {{}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, \
{}, {}, {}, {}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{None, None},
  AxesOrigin->{-3.65, 0},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  PlotRange->{{-3.5, 4.}, {All, All}},
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.02], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellChangeTimes->{
  3.7096955192054462`*^9, 3.7097809633786726`*^9, 3.7098486459945517`*^9, {
   3.7098499644030004`*^9, 3.7098499963075933`*^9}, 3.7098500266088552`*^9, 
   3.709850385495019*^9, {3.7098504343371115`*^9, 3.7098504457484703`*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"ProbabilityPlot", "[", "standardized", "]"}]], "Input",
 CellChangeTimes->{{3.7096933394668283`*^9, 3.7096933688278437`*^9}, {
  3.7096936983983727`*^9, 3.7096937063910084`*^9}, {3.709695496403775*^9, 
  3.7096954993673816`*^9}}],

Cell[BoxData[
 GraphicsBox[{{}, {{{}, {}, {}, 
     {Hue[0.9060679774997897, 0.6, 0.6], Opacity[0], 
      LineBox[{{2.040816326530612*^-8, 2.040816326530612*^-8}, {
       0.9999999795918367, 0.9999999795918367}}]}}, {{}, 
     {RGBColor[0.368417, 0.506779, 0.709798], PointSize[0.003666666666666667],
       AbsoluteThickness[1.6], PointBox[CompressedData["
1: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
Lqs/Ec+rcIrqj9X497OtvP19FTYdFhc7tqQa/vGTh5/0kzykemQ1yg9dfFk8
UIXurewu303V4NuP79AguCul+mQ1MketG/w5ROrAIntm4Z5qTJ3UGvViPB/G
VK8k7/847/Ivgrt5k5Sutx2qhkpkSckYgrObg21WP05X48qjb/v7VfmIpvpl
NVbYzT/er87HCfJtilerEb8y8Hwawdk6qmdWI8u7/+mN7XyMrdWcvu1GNcY4
hMvr6vLRRfXNanLPik1fZMhHQVZ/v21yNQxKDzUGGPNxmeqd1fCWe63jcoSP
PUHpt0KKq6GV3Od8zJMPRap/VkM/9Hr0AS8+PjqYpVZUVyMqcO6dicF81FI9
tBqdm7KTfaP4CDOTdn10txrrWvd6Lksi50r10WoE3tgkVZzCx8qN1Uajuqsx
VruBF57GhwTVS6vxq6Yh6k0FyUPlc4sXfKyG0+t8NwseH9nTGqdrfq/GQX9B
1zcSXxwzX3zPcDVs7ju8aavhYwfVV2tQm2l963g9HzM+dD46N6kG35LMjuMB
yXuqt9YgbfzzFb+f8cFrCy6PVapBZNuw9lqCq+tUf61Bag9TI+M3H4c4IwNc
DVpnSwd3E1wtpXpsDf7OWKdhLlGN4aSv1i+0avDy+BmN/nHVaKH6bA0m7Tz3
PHpqNdK880jG1GCcIj8kQKEa56heW4P549faXSU42mp7SG7Z0RpMzrfIMSe4
mUb12xqsbz3+vVWrGi/1J38ydSDvP5xxaSfBEYvquWQ9n1mMoB3V8Ft1s97N
gzxv1zbZcwbV2E/13Ro0rl11f3BfNRbNdE1LC61BSeF9xmVnsq/jR/TeGjxQ
vHxQSHDUMKx+6VZqDaJDJfb4eVYjkeq/NRi9vSy12Ksap1/2GH8orYHYKYeC
6qhqbKZ6cA303OVKVMqrMakhUm2qoAbafT+q53Cq0UP14Rr0rDRNSCUxo3SH
xPrWGizw3NaQyq2GF9WLa6BQPtFszc1q7I0eenz4WQ1aNgyNirpDcE/14xq8
iGXmGrdW46tbaYXPZ7Kef5ceTWyvxn9UT66Bc+d8f1WCk5hjVjfyR9Vijy7b
05fEJ6m+XItlOivN5fursX5E3ptci5NqpoJ/f6shTfXmWjRuK5zTKV6DR+qN
Wt+Ua2HobXXo9sQaFFL9uRb3j+tsWaVcgyvk9ldYUQvJdc4cq4U10Kd6dC2i
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
jnwr2b9XTyyktUW4Sf1NItQuGT54VEeEpRtHGhyyHzu3f2rcIUIM9TuJ8N/n
uULeHhH+LdUL2/yMrF/aXqNVn5wb9T8RfKx5+/mssQhtyllXjN4Q/Ie6T/c7
LMIG+v8zIP91j5m4xlqEzGnDtlafReBbVSnq24swYeKIP0oE/yezSkafE+HC
mANmF3+K8D1FUXjCSYRu6pcSodBynpbnFbIvv8q2BI6qw8/SIrVZXiIwqH+q
DrwtW931r4kw88N4jaSxdRANHu8W+IrgTf1UdcjXGvD7TOL3I+3WZPL3Nwkl
4wJFMB2xi8jWISds8ytrgovqETlpRh18rlku7iXxgsYRvxX5/DaPRX8iCM5v
zhzsUK6DVEtmwH9xIvyk/qs6GCuJHkvFi3Cc49zzelEdqtYvWQKCkwbqx6qD
5Grvti0EB6sK7jb+Xl4Hv3EFrh0kTqL+rDqoFT6u4hEcjE5eyJ2oWYekLRfe
iLFEOEv9WnVQnGj6KYrED0O9CELrsHLjPYNlBAfagSP+rTr4c+4b6t4SId/7
cdiqXXUw8q8r9SPx1Csjfq46NLDc1UIILi5fWHNV17gOTzTn+y+9I8JL6u+q
A2N45pBFM6lDtqF2Bw/WYU4ozAvbRWBTv1cdBK67Rl18IMIci7dmp4/Xwbxj
of41gpMA6v+qAytk9OUbvSJ80d+21cOuDi776lq+k9ic/v6xDj+S4hubX4hQ
R6pfxLk6BBvP7dXtE2HJhhF/WB3mnvUviSRx9Kofs7Iv1aGvq0SFQ+Jh6her
I/2l7ZdjQ6TOLzCW4nqR56kSdxESXLRS/1gdmc+q9jYMi6A5cySh60hen3o/
5R+pi9RPVocJEUs33yc4GT+BXF/hdRD74/dtxeg6nKf+sjq8GPttciPBzdPh
I02f4+swj/c/lq47rqf/jZpZhVQilCRlFUoqcZDZoihZFZEVobLKClGSLUl2
acgqIwr57L0yEl8kVEJZldXved/X76/7Ord73+/n/byf537WOad4A72OPExu
ZHwzHmbl3uveshsPV+vv3Gl9ngf8s3TeTrjHR8Y/4yHyfYbpERMedlR2y+ie
w8OqF9fX+FEd1XB8NB5yztW6m5rzMPNp+KGBN2i+YQt+FlEdFXH8NIrLKdpP
bsWDtVS4xe0uD33P+P13ZQAPyRxfjYc1u5duaqS6aijqu2L6Ix4eZA46YzqQ
h5BbjL9G6y1bnR85iAfJVeaIxkO1qVVN+8FUJ9mMz8aDsk/hjG9DeUg7Xzoh
Wkv1PX5OY/vhVJenGL+Nh10pmsHvCa86Zme/9zkPm/NTb54ewcMTju/Gw+/r
gtGODrTuvXt7pVXw8OfD0CXTqG6zOP4bD98sd23KcOLBMKai3ZUaHuoeP7k6
043G4fhwPGzJWK7Pm0DrXsV+IOTh777mc/3cefBayvhxdN/1yI2fJlMdhRx/
rfvFQ4vj0ypcPHkwn8v4cjykHHjtmkx4z8w6+ftWfGwOfvNsI9VpHcef42Oh
00iv83N5mDPZo7CpIx8qmwPiFVS3jzg+HR9JVYtPlAbzMNiFHgdGfKyyzXzc
jur4KMev42P9X0HaScJ/2c81vfgYMiwuZXUoD2Hs6x0LPnZ0yzLttIIHlXng
1hFWfIzbPprnRNi5B+Pj0fjJB9xaU52fM7yxYtJgPr53Cv5ykXDHToyfx0fG
+bAuxhFUJ230Zwc68HFqT4jlykjqQ46vR/c7bOs/cgMPkxqWuK8czYfrgCn5
PzfycIXj7/GhmFcUdWczD6Y1D+y3uvPROf9rccNWHrZzfD4+lmkPb10RT/tO
n04OefLx+GPPwrN7ePB7wvh9fORoTxjFUN3fU0XSO0g+skytdkYe5qG/hPH9
KH9mf3r9Jrz/keL7rXl8GFe4fD94moefHP+Pj4IxX76uOstD8E2bN5JQPvaf
3Xuw7hr1JccH5MNpcE6PRQU8DM/aoXixko/72a/PjbrNw0mOH8jH1JOz7dcL
eGidVl74JZLyaSFJKBTxEH6U8QX52DQ1KCFFzMPj/SMzW8Xy0XvHcN4gquOx
exh/kP6e5J/0Ss3Dpe0HDpvs4qNdxX15pI6HrpsZn5DW0/3CoWdlPGyKrN5q
m8RH8Elrs0nlPFRw/ELKZ17q4v1vefAMo/Qe5eOAJC1VVclDAcc35KOhWS8g
vZaes3PSZ/uc4sNdkXj47Hd6TnN6ZT7+1q58M+MPD188G9wXXuRj0REHE3Oq
y8BJjI/IR3GVxCammYeSsb7Doi7z0d6psjqmNR+DnBk/kQ+biT1bj2/Dx5Hh
ub33FPCRplX4u1Kd/uH4ipT/CuFyvU58LOnftsPJIj7qRx9tVhvwqW8Zf5Hy
mSOebtqZj1GmwT8u82m9aWuNagz5OMvxGfnYM9Q6tg/VbYeOhW8eyKm+HNL9
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
c8lBh0L9E8HW7jpkHnfYwyO8ivMD02F+03JzlaMOlnqCx3ZTdEhye9AxmeJ6
zPmDUb3kuRqfI5zQXO/p7KlDfcXpd5YUxxjOL0wHO/2W/l5j6Xyj+aPx03V4
7/d5XTnFkcH5h+mQtvKfHWieOV/p9pk6ZLUYu2A3jWMQwfzEdOhvWVHtS/eV
fNzIHILwKWfD1NkzdIjm/MV0sK4flT2Jxhn4jv3DGh3WW9qVf/SjuuT8xnRY
maxL+jRLh0P/aU8uDab5963bu5Lum8T5j1F9Ttiz7QvhpqfNXdeG6nDcZNeS
5TROHudHRvuVu/1daZAOCzVD9mxeSv3S+NV9Pt1n4sP8yXRwW9wwbBthiXTO
350rKd92cXN5hLdwfmVU7+6hzZsX6TCczxniwsPm+spPhN9x/mU61GSO8b9C
16UW51cfj9QhWbVvcMwaHbw5PzO6Tn9BSqt1OrS8/Tr47AYdxrcy0psTRXXG
+ZvpMHmoY/3b9Tosv2bwJDtGB6Gld1jORh36DGV+ZzrEz11QMZeu02S7etFH
VrTRu7QyZ7MOuzn/Mx22D9tvriXscmHpo6KdVI8/2r3Wo3E+cX5oOpwODxjw
mPC5U0edhXt02Bj+97kgVgd/zh9NB8f8ygMlNE+H4yVXVPt06OqgsOm5S4di
zi+N1ptTNMKV8NoD3D9cQOC+cZKNe2nfOP80HcrOfl22i8YpY3ZgR6j+brjk
d6Hr9nN+ajrceK4tnH6U1h031bA2RYd150e3PJ6qww/OX43qyKzXj2t0zGZ0
4zQdbO3/lY05pcMCzm+N1ldYkH2UjobR5//+O6NDnWlE6VU6Cjj/Ncpfy/by
iWep/1czQyuK2y62qYDwUM6PTQe9M+tt089RXXB+bDqEFbW/7kH3eSwcGNLr
sg4F1l37/qbr/nH+bDr8GTxrq302xT03gP2HEsydIW8ReJXu4/zadBix+EJb
VzpvNmunl10B5bupYNoXOio5/zaqz8c2EdNu6hDnfe3RqDuUzx1j9xcX0nOQ
83Oj/TD+NNKMjjWTXzqPL6J8ige/+MnOc/5uOnpfqZn/7IEOfuM6XvV4qIPz
i8GhdkJaRzHze6N9igke7ybS4a7LKOtZfKqrimDhdKkOqzn/Nx0+3/jez49w
PwfuAzayej5a+5TwE84Pjvqr+aabgUyHxCGHDJfK6Xm106aPJR3Hcv5wVK8P
Tn+pJPyV+zmKntc7klL70flM7u0qPU9iN9stUVFeLD7+3VRKfbPj66FNGh06
c/5xdL/vxfhVdN2jHpxAHUlr+myaQNet5/zkdOgboEzcTNcN6japJumFDrNM
xsadKdPhP85fjp5nOUVDQ+j84U7rmAMcfixel5FPeDLnN0d56BGSbfxSh19t
zjw5U6nDqc5bYnmvdLjC+c/RPFUrCy6+pef+P5lXdhW9fjxyGlX+jl73OD86
HVqlbb/lQddJGxof3ajVIfT4OLM8wls5fzp6Xvvw5pt/oH2ut3YpqqP+sPYd
VUb4PedXR/Md2bq0a7UOJ2v8rgq+6/DCmufV7ZMOPpx/HT0H6rfXeH2heSq3
WasadRh94faHsm/0nOf87Oh8pEje1EBxvbyc9uwP1duqY26nmnT/97fT4afV
tkd1dF77pMywokUpNg8RXjVrVYp4zu+uFJvO6ym92pTCVa239yMdTxX/ywrT
K8Vnzv+uFPNO8IZk0vG8xOHf9/al+Gl08pQhHQM4P7xSVKZPSZhDx468kKh/
+qVYE7VvZQPh+5w/XineP1Xu7tipFOvY1/2GpVixcit/Kl03gPPLo+tm9LPK
Ivyc2WmZlGJw3OMuwQalSOb880qx+HuwVtm1FBOYHLdnKY4umilZ3p3i4Pz0
SnHj7irzOjqfw+i6fUox9H3c18K+pQji/PVKsaN1zfyr/UrR7TxnSIrTugan
ZqtSCDm/vVIMmbP+9ab+lJe01dQBNM5P535VhO04/71SPL0Y3c/IthQVR9Ou
jhtI1482HxU3pBTHOT++UjjqhpTFDS2FR7LY2oOOc7/w/5jaleIf9/9zS/Gl
9PoV0XCKk55GM+mYcmfbwsoRpQjj/PpKsWDdlIMxdDTb0a/bgv9xdOVxMX1x
NLRpVaJFQmlBIVtZ8m0lRCmkrP2UkopCIqlsKcqSJUpRiiJrKiGKNlKpmTf7
jJS0ICKUpd/3O3/N59Sb9+6733Pue/PevefMZMGT/pafnbNYUCf172OB217d
35r4eWCv69HNs1mgf9PA4Dl+zpL6+bEgQM3ncfY8FnTu2Pdvmw0LNmrnhunY
4nlK/f1YkL2MuzIesXtwLk0YA3G46rx+xPJSvz+sq7yc+378e8lmpvOAE/Z7
YU1B+CIWhEj9/1hwWeX7QdPFLDDcOMTnOP59zimN7aIlLGCkfoAsGDzM9Mth
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
aeD0n9QfUKAfhCf3N9/HPrHxUcrpBCbx/U99YmEe8v+41nQodKsZC6sTy8d1
PqIGWKO/M3fHnwLzTFgWn72E/ehTUtNHsIPyB5Hoy0xytDg4gK8QPvLC5UJX
m+NbUw3AYnmTz2KTqHw5e6jpAfL/EzURGHl16gSXWAnyX35BTGIy+sSJv80V
LOOazLoEnRNlJDTelaIvclbpJl1nkq+HzRJ9HiP/GfkZydC9XfCNzeIy5P+q
zX+uQ/cngwU+h8Cx9g02N29if7E1enepHPmfZvo0DXXg+tS22qQCdeqnBpai
7h7fl0rU4LqWHj6ehTrQYy/pGYG/WU28yEEdslW3THuBd10LVr6LOsQpGtXd
B9/p5YnLvcUk6//kTf4Fzy26/CkvC/souX1IqRbrtly+szCbSa5c5lx2C1xy
8V7OQ9Rtb1+LY00j8v+5GmfxbSZZdczD9jvYXbDGvhR1O+CjtsW7CflvYozA
ZJJlqxUv+zQj/2N7l5bfg15vHxmJtmDfa3UIrEQdC93OuD4Hv+AZ661GHU/l
135RaEX+6weo1aGOBiqRhoXgyLOclxpQJ/NTgkfN25H/dfHjTQVMMiQ4zaX8
DPk/J7mrFXV6/fdyP/9z5L92Tm476tRz1b48ETx2ev38zoe4jmVRUzVgg4py
l+ePmOREv0vW7Avk/y+83StCPz18nPj1JfJ/08uVPcXY9zfyqv8E7z15KOQ1
6npW/Of8m9247pKhd32oK9dT51/Nvcj/736b36OusZWXuM+9Rv5v+Ht14An8
bXd0o9Yb7GvHzn//+BR5GzDrq9CH/C8Us2Cgzg+k5PnPgH3GMgpZqHPLm4gv
5h/gCwVFgSHU+XLwzaOWH5HLHo89PlUyScCuzJYkcOjd7S2jVdjPF+26HUxD
/rM7ZMer4d/lnkOTYFVZq4gJ1PUAsfp9hI66OzE/fkMdvWsEWlRZyP9M720/
6pjkC1O1SomN/P/4K2Wqnkk+xw40scEpy6OmfzVAj/F2Yf9B7KMHRfbPos7l
2avn/QKbptws/os6r+44FrX8E3K0bw3eEDOJYm9vkAmYU6LImwt1e7Am6l0T
+NC+bR3cbUzCFF2c9GsU+X+l9T9e1DFtSWN37Wfkf/eeGH7UMXKLhs7WceS/
yEeWQAeTeOjZN2+YQP6beuoKd2JfO+Z9PAu8Iv5HhmgXci+2xS4XHPgs/M8i
1HVHa3yg03fkMJ/AQXHU1ax3cnjpD+S/4bWnkqhjfMLtCJsp5H+0jPgy1FFQ
PeLKeTCtEbfPr1DfmVg1id/YJ7m2wABM8jv6z3/2f+CD7Y3KMqizeKOKfeA/
5H+YWZws6uy9Tu1nENiwmhpHjX6/Wu17GZw1S42rZJKDwSOquRwsMqtJjbNC
DodmD4tyssj+U9R4Cyb5saRkqJeLRR4+oR53jf26V2b26TwW4f9JPQ4Tx5sR
elELdtlIPS4LOX0wVGM5N4tU+1GP08D9ucqVzudgyUfUx21x3R90HXN4WMTv
C/VxHOjtJjkcPp9FOtaZXNKGD+TF3qZz8LLIGq/X44SB9y8r1DL6weH3HXft
YOJ+snP8k4wAi7wbHsvVh0/qXNsffARvlA+cbwhfnNg24H1RiEUSDnMdNoYP
HhUPjnAIs8hwdkL9riHss/Evf9mDdRlLpM2GcR/AG+14DZwqTQ0Yxr6TOFJ8
C/zTTuX9nhH03Z0NnOYiLGKeVrF5P3xRs8BnAbcoi9x/Tz0gEHlQqijuv5BF
5i3t/m4Dn/T+NvHsAttZ2VrYwiefVra3mixikafJw4X2X7Cffzx5QVCMRRb2
Hhdwgi8WO9loOIK9Fv3zcPmK/vL8WLpHnEWaLWJbXL/Bv17zOafA0hdxOwLf
5D2ru86SZJGgrsyII5Pom1cVhWeWsEiPgBLtKHy06P3bxLdgZRNqgCSTOJcs
2CSxlEXOnde96Qcf2ai49qtJsQijhfqDXtwHJI7m6K9gES0e6/0Bv+BzN50P
X6VZJFmPVXxqhkmCs5652qxikYmIY6Kn4TuNZ7dGFWRYxLhuxjt0FvebU20e
YeCcf1Ed4fBh3ihXBIcci1idTo2Jgs/aCsXvHQcXlcuzY+aY5Hyi/qVfYIFf
Rbqx8N1xNVE/hTUs4rpJOzMOvlvHChK0BdeeoAaEscjVKg9LY3kWWVqy9+Al
+Kz77RzDSoFF/L9Rv7BmkVvLdkwlgrtUjognw1fyIX9NjyqyyNpjP49fh6+i
80zuiCixSETBmZcp8NF4r1K/I7h/VGB9Gh+LlPzo8lBfxyIaCtfjMvhZRNHi
qo8p+KL76pFbC1ikzohL1QI8cqdwZw58pvtGNSgLrMfecvuOIIts355yeO96
Fklf3cSZC98tXLh3VkCFRaYdzR3y4KNrBe9UToMtM6kBMCzik+/4cwac/8F1
2UP4yKDQ4HPDBhbhWf4tsAi+WTLVmiWtyiIOB7GdwzcBF54prtrIIuU3eDc+
gU9Mtx0ukAeL9V25VLaYRa5UKnAt1mARb/GVXyrgk52m2452b2KR1r33d1VL
QIeUoC0Fm1lE5or6/Vr4Rrzxe389+PTL2vkN8EnSfp2BeVtY5LXwrsNN8Amn
6pX7x8Eqpm/qW5ZhvXLu74U1WSQ2zkm6Hb6Rmjl1ZimY1U494B99qGF58+dW
FtHmO/W+Cz76+rLB23Ibi1zfOQ8bFNbTcvNHMvhbVGLyK/gqlu5etY6wyK7G
pZO98NUoR3RS+nYWucN5x6IPPsqz3eTorssic2TDg3er0UcLim8q7mARm7BK
gQFZ6rgqf63BJVU7PT/CR1uNWbPDYKHZ7hY6fJNbZ/XNWJ9F3DXt5FjwTfsu
i/wsAxapD/wUMbgWx9W59zpgJ9bxxJ82/B+L0GtvZKw2YpGTP6gHOrOI7MTp
ke0mLPJC7cLNz/DREaE91xzBCn7iv77ANzcsNwZIm7FI5MNb+7/BB68kLrxt
A38YVyqZVEYfdB+PGgZvXvdUdAq+uCHOIcdhziKXj+w49gt1/3J5f14qeCy3
q+M36n5zR/viUQv4YNha4S/qvv6WQ8kXcOYatIsai+yQr7zw1JJFZlyoAeAs
Yms3/ahrD4vszf6ty4268yqe5fqxl0UK6dGZ81H336Wxc5n78Lr0wr98qPNh
i5mlRWAnu7SDAqgrbS5uVHg/i1Smri0TQh2Hm4U9msHi74vFRVFHmxXy2YFW
8OkSHf9FWiziaMbOGgK3H2h/uRh11FhVE6VjDZ2S962X1EbdNsRnNIFDe2h4
A8IiYV/u/pwA9y30GpFCnY+M+q45YsMiqhZTO1eizhrZf0+1g+MSqQGvLGL4
PfRp60EWGewU5JJFHevmueyVt2URInDDYY0eizTVvBo2A6cYy1avRV0PP/Hu
GAdPnnuwTBF1FfY4uM3EDn3RonlqHer684GCyyt7FrnH3fx6vSH8p6G3bokD
fK1nsVEVdf6c6BL7Bnwoov/SRmPsU7IcN10dWeRxrdsXDdTZ+NyC+mKwyL9v
u7bswr7btONXH9hzW+j9rbvh40DJ/gEnFmkM5uPVNsXxzq3XKnBmkRXl1EA/
+OotR1+0C4sETq9s0EWd2w5eX5sE7tbIk9ZHXS91WEkou7KI0gmN0J2oa0CX
oViNO/ap4rr3Rqjr2475OwU8UKevOD3q+mx91s/VniyiqdKXbIo6fvLwGz4I
TvJ2njRH3e7yFXUdB4/nj1vsOcAi1q/SW5lgw9FTD/ahbo9PL3E+coRFsv7j
FrRCXQoU2C76Xsh7t4ueNqjD5w/Wto5Hkfd3lrUeQh38J6u7dHyR9yxqYBP6
KMu+h98Peb9a9awjdP/4L9o8COziWEVzhu6RN6JLiD/yPsNQ2xW6JxlMOIWA
JT+8uukOnfdcUw9KPom8l7L/5Qkdw45w1isFIO9tRvYfhY7qB5XkYwOR9zdO
lByDjtPfrzDaweFv5kT9oFtqwfVb+05hn1kcd8z/MIvol7lMPQVv3CvReRI6
nkztTGwFJ1zOUjjlhtw6Z5gWGARfv1h3Lhi6bozuEtU+jX1MuIwdAl21HvF9
PheK4+7W2xEOnW7xpulnhcE3F54jUFnk76MVaXNg83abv5HQKe9I+NkD4ch7
3sGDMdBphuxnZ0Yh73f6lp33xs9drP2VHo19KmpWPO4Yi3A0rvj64BzyviHG
P8GHRURrQhxCYpELnIu6L0LXhryOptELyHuSvv4KdPxgYKtxNg55H4q3a8eR
g+ynGwTi4buqkpFr0HHrfwMNHuCg3zqGKSdYZD6PydWn4J4tz26nQleWmnGr
3UXkfeB+rgzoan6MoZ0CPveY7nALOtLCfsYfuYS8n/SqzoZOj79nBDVdgQ5q
08vuQKcxrj2fqpKgm+/ZU/eC8XV7g3k7eOKB0Jv70G1cl+HBcRV9MU79ApFF
Viuv8gu9hn1OSe7yA+j4hBasnA7+6/nwyyPolqXEbSd4HX2Vu3V3CXQT2uO1
0vAG8n+o+f7jMyyynK/t3KEU5P8aS96yCPSN2MkfLWBXl4HDFWdZZOX61d94
byL/s9wbqiJZZNGS8JCmVOQ//bt0LXTft2Gr5+Y0+HRlWGg9dNc9VBZWCO6y
5e9vjMF+3Em+/gOvTb26pQV1GP5Vz25JR/6/k77Wdh7+Ofz5lHUG8l8yH2+Y
sb80BwfTbiHvr9Y/eIE69OnO6fFkIe9fUQOYkd/j2xibwXoL33r2JuD+Yq4z
bywHeW/u0vomEX37x3bl27vwbcIXuXfQndfStCfvHvK+M+hsP3T/t1tSQjMX
eb+Ah/7hMnT8fTN7D5jHGLe7qMOuiq2TufeR9+ekUpnQ3X92o35JPvK++e4v
NnRfIqAQ2woW41Y7MJyMvg1wcpMrQN7vqIZBsI/F79DyfIC8P2O08PN16j5l
rdHAQ+R9bc+xL9B9WefUV41HyPu/1MBN+FTs1eHgIuS91qjCJHSeWsnNFQVW
CT557id0FtUuMmwEx5ZxDE5Dx7Zany2KxfDZVNyO39Bxn2nLhx1gbQ3JW3+g
o8nrxKv64Ov+2X//ZWJ9bC/HR6XYJ4uUD3FCt+X+vVsHwbu+lpXNy0b/2/p4
S5UhN9brS8yHjotDv9PaypHLR1/4893G+qwt7+VUIofyD3YvuMMitxf+Orm7
Bnk/MrheCDrXpi67HQAW+s8vXgQ6aztLvvSoxT7l9mdkIXTN67/56RS4/vY5
w8XQ1bXRrS+5Dvsya9EdiTzko0+hcG899g2ZDK6l0FWwYlHSNPiFg4KjFHQN
C94XrN+AvM8orV5RiP77l2ZxBBw5QH3gEetoEFL80Ii+XdZxajV0/jCrz/W7
CXlvc+CNHHTeJ5GnIdWMvL/O2LgWOmaY+TEZ4LHXRy8rQKeDLt8qH7Yg7xfj
dqKERS600cxDW5H3eyJ3r4dO59VSrp8Bz1wSztvwmEU8PtrdngDvfZGCG0AW
kTA8+3waXCi0xlXjKYu8b5M339IG3+1+1LAZutplfzza/wx5f0Fr1Vbo+srw
+LhhB/K+rSV0WwX22eKc09/B4rx7+nWg8/foD8eDO5H3Bh+26FahHyUX3Ux7
jryP9LimV428OZyq2fMSed8wOWkA3dfJngqQ70Hec4RbGlE6n9jr+w7cp7Pg
oQl01pmhLzLsRd6HJguaQtfQs3fOeLxG3leuOmIOHX83LM7260Pez+S3WkLH
j7ueNYSAyZbNa/ZBx2TvUr4T/cj7gIazB6BbQFB8Z9oA8r7UlG4N3fROvS3S
YSDvJ99qH4IOqm5u8/3A91QPp9pBB8H4kLIsFvLed+KXQzv0k++qN2WjTx4E
H3CGLj++Di3rAz/+zFN6GDo49HyycRxE3itdXugOHU5LPdoQCvb0XO7j2cUi
JyrknHWHkPf37nV6QRfxq2cOeYNXDKkpHnvBInzpDI1WcKBczTlf6LShKH2h
7TDy3tl48Hg36rBIa9f4J+R9Vu+Ok69YZNOZ+y5tI9g3aNieoVvkxu0OrqPY
p1eM/Q2CbjqFCo8ujiHvbQMOhUC311vut3h+Rq7e5CwPe8Miq7xSO4a+YF9+
Gy8RAd2ydRWdF0wg7yWpcb7oU5cncongrP3UeD/4pCHh6lXwbBI1/gd+c8y+
b/wVef+KGg/AIr5vg65Vgh+KUo8LxvX23z1bA+Y3px4viNzTb3x9+xvyPoF6
/BD6lc5Y+w9c3UE9jgDXLxNgKTmJvF9w3PEaHftF042CIbCf0d/qG6jLmZfJ
OYt+IO9jzmODQ25Mi4wE/oQPm8WC0lGnfxUh+a/B4fMy32SiLrbK5RH/wO90
FdWzUYcXW771bZ1Cjp95fPk2dH4xl1VgMY28r9k+cRc65/3IcfkHHv7Tsfs+
dDZ4N7P++y/kgpZVXj50DuvXGXGcQd4HMXkfQOd7dVzap8E/n3q7PoLOD2Ue
1qWAzad+NRRD52VJngvaf2Pd6lGrHo/j/ld5U9HAH+S9v0jYU+guocDbI/kX
fVZ0s78cul631l72+B/yfmKNZhV0M1eIGGoBL1xfdK0GOkm0Gtf2cbCJ19Ft
P+q+s8iBkAnvm5xs0pwH+0OnS18MxFO52ER6ZM/DZugk/0Njm+Y8Ngla+1Gw
DTpM7fvtFMbNJj2unkeeQYcEVrZSLFj59o/WTqx78cfgqi3z2eQcM3zNC6xb
Rfq42ms+NmGsEojsxrrGxembb/CziZbDNXoP1lXH6ZNZJcAmyekyOm9m4Z+h
D6Lygmwy0V+Q+hbrVNwo8GoH2HjZlpn3WOf2xSNbW8E51o0HPmBdxrGXNMbA
f6+ZldLmsN8FrJ7lFmITq9fvFjKxTrcbtU3+4CIxV7xhYZOCpWL3S8ECe752
DmGdX/OeS3gKs4nrpdOKI1innIyG9H4RNql9Pv/8GNY18Cl7i64omywVujI4
zsMmy56v3tkM9t+1Qu8r1vnJQSXGbSGbdMXm3vrOyyYZD4aMoxexydq2jf9+
YN01634N+omxScT82kPTWPd6X54EocVs0q9vUj6zgE3eLnW77gjWiHwt8Qc6
LFguEBEDvlhPDTTB8UxHCm6CR+bGujlwndtvPYttFmcTPZ1AlXm4zrP7XrNH
wOkhXAk8uC6eaCf9YQk2ma5IGOXFdZ3v3ebCWMImljNLjBbguqQ4Fuk3LGWT
/M237wjiukrnJd8SlsK/C8DhcB7HD3fPeYAdSiscF+K4YV9vbyhfwSbl3w1q
xHBctRevvSfBYqrdUhKSbLIhf7uX1Eo28faxDVqC84w/cQxVALcWDr9ZhvMI
/fgS/luaTWQ+Uw+why/Y9klbVrHJacV/l6VxHrXKtVYhMmzy2iN2QmY5mzQJ
69NiZdlE5d5iUzmch99ioK0aHDuYmSeP436WNp2/QY5NWLJKfAo4buiRAIla
sLbzE1clHFc9LZP23xo2uX5Lt1EZx43bPvGAfy2bfPvYuWrDajZpW6il3g7e
tcI6TA3HVVivG172H5vcOcTqV8dxvBK2zTuowCZzKcc0N+M4BkVZZ00U2cTm
LfWBMzYxmfQ+oKTEJiUS0T+0cJwjf//jIGCh/aJ7dHCcnqDdP0LB7kmpD7fj
OFemRNaqr2OT+m55IT0cp8a8ruMoWEq0+IgBfq5w8zaFD8psctJMu80Qrx8Y
i+u9sZ5NXsS3rTHB61X3FTMkVHCdHXsRyGyysrdD6AE4kp9GN8PXPfwfiKAq
m3wwPKJjuYFNLMTFrFaBN8dQA63ZZGhZvdqqjWxyuenMzH41NrnXfVIzEDzG
hbdf+Brk2OBdo4516l4vPYivCzbz5GpsZpPM8NWL7DTYRFHieXHGFjaZqS70
cdiE71s71KdossneP1u6nPBzXDzf9twBF25tUjyMn6tysjJT3somvEHm593w
eufepd2nwU5P3w964Ostp7cd7fha+dNVz0uLTf5MpZt1gsXVv93y3sYmizdL
L1yGrz7HQ/75aGMfqv25UgHc/ogaWMommgyVwvdg2Ykr5ScIm9jdP7pcDa+H
Kq+UDNzOJtWTy+MEdNmkz+v+iSB81fmQKsC5g01U89RfncbXJVXP2ML4Gvep
ViVMD/3km5IRj6+D8rsSzuizif5wTHI1mLi+GT1rgP4q8hl3wOspOU5G0TvZ
pDGPphOC1ycZn++cM0R9e9ZXy+F101Wn5l0wwushCf2/wPfs5znFG6MuR80H
1uPnONMTaxJN2GRrVNLbJrx+qJ8aUMcmnrULFz8HP156JyhpN5ts2sK3owWv
i1hvwBtsXI/DXGorXve8Vql+w4xNnrtExWXj9cbenVdumrPJfq6fhQJ4fYXY
q4k0CzbZ1mR65RA40NLONNOSTQQDxzefAndf/JSXtQd92D4dNwxWeo7b273Y
v3Z8iBfCcaIF51zv7sM+Lbdm7gyYZnKhMXc/m9Qd21PVDNaMFZfJP8Amwc7+
gUU4blLrrbBCK/gx6cXZ1+BxnnUDD63x/baVrStwHkP9p5rFNmwi4a/KUMR5
ss7ugMHgS9rxNc7g2bquH08OYX/NHRP+C94/Z72n3BbnOStrwYvzPtRmP6y0
wz6ir9HCwHn4Q3yEauzhi7tVX71xHpeK30fqHKBrpvGhWhy3+ld0W4Mj/t3T
lXt+gCU3L5RvdsK6NeTfNOHf+Z1Mi2x1Ro6snFXaiJ/rKFnLaHfBdRaODO4A
r/lerNN5GP4zruAcBYdv0El77op9Nmxv/wiO8+5Y+8xLNzb5fnQffQGOs7Fw
n1WPO+rR1zu+BcdJGKOVvvZAPxin2dvjOMMKXoveekKfL1vmboF1PaZ83h9B
Pf8Nt5rhuKl3I7oGvJATgsFOdPBPtqAS7SibvOzSjxfHecxlb5xneKNPVbcd
vgK+7yQ7xDrGJtd4vE/QwPNuPdAb8mGTC0f/+fPhOuw+amZ98sX+sWXbTXHw
0+XN/0b94DfJykZJ8MJDFrbjx9nk9uV9ljK4Tq8U3C74Ix8eavMRcHOfm+T3
E1S/L339Gywt8f3Ej5PYLw/s/qWBdQTtC301FYB9l7P29zC45wrfhplA7Nt6
Su/9sS7l7qSE2VPwn7uvqiXWdU5EGjeQbNIiEGuthHUwTPOMOE6ziXNn61E1
sFa8xl2uEPjYwGWuAutKfkYNoGeTmLGcu6PgCb7dTrxhyL+8RU6bsE5jw74a
/nA22VKwK2AGnBPtvFzwDJtEXdmpuhLr/ts4HiQcwSbyepkin7BuK66gPtGz
2PfvieQ4YJ1F27k1xCLht31v03PAAuEXr4hHQa8TZ+VFsG7X6mVfJaOx3iql
f53g2tk7psticJ3XrO64QYelW1Xzl5/Dfppq6iQKHfxPVfFJn8d6dKbCZMBd
TwzdZGJxPzHxxXwIuqz9SQ0YZhPrI73OW6FDxEZ7Gfk47M+um1cdBPf7jYT9
F88mtqym6XqwxqMTA4oJ8M2iG0yTYOT/lzlN5UTcv4QGtHFCt5F1cddVLsJP
9OTcL2A9L4mfqpdwvD+eHKuhY/r9rD3qlylfeDYngKeH1z3adIVNPjr9PLwN
ulrKlwlpJmEf5RCQfwDOP4zt9yp0j2soHYCuPDnP27ST0U+ad3PZYAeGjfz2
a+ij+1+VH0DXcunByB3X0Y/RYvOHwGL2vgz9G2yyKu3X28PQ2TttVscwBXn+
Ze2hcejc+j4mzfgmck+AvfsvWGbpot+7UrGfNJtwboTup63SrczSkKtkzf2X
4NfJ/z22SGcTo8Q9cgXQUaW3ZNHeDDYJSOA+yA1dYhcR3/2ZqGM73y976MKy
eNZldQs5sCXEehisfXG/0sEs6O85F74Bulzvop+3zcY+M+7cow7+JnB0yD4H
+5OMgYELeJfJtJ7TbTZZrhBx2xi63Tl/NsvlDvKpsaSiCDzXIoQNkU2Ety+O
4YeONjwpth73cH8kVut9A7qV6MlVHMlFPYrNZoWgk9DZh5Le95Ejn2OnA8Du
dVtP+uTha9dTI3noUv+P+oM3+EZx4dVYsJS25YYTBai/8zy9Juh08vRAQkAh
jn9QKv0MdHlR7j526gH2G4M/fHFghV/fjU4/ZJO0loJ9ddApclPY3dBHbJJN
QmYWQ6cPJ/i5zxTBh5YC7vLgzSVXnc4WY//L98g7Dd0uf5OujSphE9/q4vm7
oduYCuxcinyO0G0PABsc2xQc+5hN/uuzmhyEjpkF9X1xT+D3FRUSM+CZ0d0a
iU/x/UbCww3d9iq8vXKpDP1ZER6mDt0K3V2+XilHPVpEO++Dee9+MU2uwP2y
UQldCro4sYPyr1eiX615NUqgQ+VqHv6bVdh3ePs3VILFnS65pVWziYfet8Tf
0MUnU6opo4ZN/r3mF9wJXdo/3JXJqkU/usUd3A5dZJerhefUYR/gH1sWAl1C
D1YP3KnHPvte9AIT3HfDaGtuA/r5E11AF7qo9vVcz2tEPlczr7iA48QdfhY0
sckzs0V/5kOnwb2jeMODPLeI2WMOJldOPipqwf2aZfHOenDKSw7h0lbs3/ra
bkLQZVI43utJG67LXGRGC2xqKtle1o795+a9z0ZY5724bPnKZzg+y5IuiHVy
PlOOqu7AvnTz+H/zsc5DfOWM2k7UaXrtj3Lw4536pKEL9TjfuecP1i0S/SKt
6TmOt2ltXirW5dl48HfLC/ht/qNUap2NnENW7S/Z5NWvDFErrHPFdr/HHd1s
8ubFCRMXcGDYn0XPXyEfKgVY17Hu7qpzvi97cD8g/HVUGutWmsW3e+GzZf+5
W2Ld0ZoZSq9fo57Wl3tPgmmBCrF9b9jkfxSdaTxWWxyFk5CEpEkIlYTITKGd
KQnJlCRkSjIlhGQKFUJKCck8JUmSEJJEJFGKZIp3SpIp5Mpdfbq/p/Kes/9n
PWvv8+F6fUx7znwE73n6hNrzGb3RoDCehjncnCbaX7tHiMF+Y5WVWPeY3L+v
P0ffs9nnmIJ1vf59PSreHya0k22wzsySf1+fhp5VCcjPe/fPy3+/sGOEePyg
JDwAm+/69+vXsf892Nw5CC458+/Xs+L+y3uaeLBu9sJ/v64NuVUJtpIEO9CS
ZcYH0Xtj42+jwTWionETQ+hDJjmxGvBGx0ejU98w5/nvX9QwJ68sVb3fw/A9
IlijCXNpHXydNzeC8/u1l4q9mIOokMmKBQo8pUlLLGEOIdZ9dotU7OePu70i
MIee1NN1S7QRknj09ekuzEH+y5TAcgZ6JEoleggcuynkworvyHcDY+Aw5kI7
uqqbdRSevzh5ORZz0bh1S5H9B+5/vPFlPniG58Evzp8jJHQwVHg75mR0RPnw
mnH4FuVz6S+4MO5l0dpf6L/NBT5WmBNzmyH7+gn8+7ktxn5ga44ebNh4Hj/u
9VtiLhV6jq/4puC53p/Bs5gDz1W8Tk2PkMfOYVaHMQfX1xdCtsxgPVrqFyPA
jStY+4R/o09bdIzUMRchrYS922bRR+LOuwPAAWECd0TnkKunej+KwR/q8mfE
5nHe0c0NKMGcpP7KmUr8wfvHjm55STr2e7XaR7sWRsjab3H1b8BDF/S4dv+H
HNaOPqzFnFQrP7rKLqLf11nMumEOt2Zt38j/xTxfL7lXYx3jiqM7lJZGSIH/
zkwNrEPP53yEyjIKOdQU1CKLdWQ/Zvq2l4lCLqe9690DXvx1jagvpxBlocHB
SbDF7k1phJlCxKU4+PywzlL37D8aKyjk3bL7NdFgjgfSx7RZKOSRgNu0Ctbt
9L2y/AArhQgZWlOssO66nTq8emwUUsrOaVIJ5nN+f1Z/JYX85NNcYMIcvHOt
3hmyU4gHb8dKPay7bZgqeWQVhRzRaMxzBIttPRdlwkEh8mObRZZj3WEnF6lm
qylk+mKu2W9w772r2hacFPL26CFJPaxTsY83y5ILnxft1bcEjudPX7LippBl
Ofs51bFuhqWEtc0aClmZKq7xDax1pxwv5BRiobvv6mnMIe3T/k0OaymkbWGA
WwLrnl331teJl0I+tY7E9oGNTXE8XUchL5dlqU2AixK+yZxZTyEnRgdlN2Iu
LO/d49w2UEjevlzuVrAt1/yox0YKmdi5Zpsw5lRpEKHntQmf/z73tRKYN4Y7
35uPQtzsLTcpYE7ub1JWnN9MIZqKApwOWHcT2w57f34KeR/rJFuPdYkcKK27
IEAhr58sBPhiHYERaoJBghRyTY2k1GAdXS+bEEgKkfsxQxvHOnYzmXaHCVGI
gu4uo37cdxTpV4wQphBXuRNGfLjv4SCXm5dFsI7KmeOaYPXn07+ubqWQwvKu
UGNw0p+QwzHbKOQJcQmRw31PqHA8iN1OIQOjIrsiwPp+t9mvi1LIKa/rT7Jw
n7nlIs43dmAeBnxKg+ClqQevEsWQn5oHx3fiPi3lVLYm7aQQLvOTBZ64z7Kz
DSHJ4hSi2uS35Tjui7PkcF+qBIW8kOI2qQc7j/XsvSdJISvGty6Ngeslne5k
7KIQgcz9H71x3/xnfs1kSVHI+Y12myrAvgWBprnSuP7p195/we1U1tL83RQi
w8/x2gnrEhe9wXVfhkLuVWzhUsA6wh0E3R7IIo/8US8CwX2ZBW8eymF+m+yt
qsHKg/JipfIUcjVIyZgd60zYgu1egULi4u+cSQWPnjj0rVyRQkLqDs+OYt06
qV3kmRKFqO1+P8vAutN7TqZVKVPI15+c76Sw7vmNP/48V8G8Sh+LCGEdpkf9
jtXtoZDlq8SU9XHfxYnLn9bvpZCezSHHduO+2T78+0JO5CnAcvge2I6Hz+u1
GubM23TfDuuoNsrBAZNCTmZmF3WA18ft3tW6j0KYv1tF9mIdnm+rotoIBecp
MeEYrOPNqgO09v0UcuPkekoDeJteh3anBoWEvi6wVcW6gq6cyPqoCR84v74s
BX9upC190qIQDfU5v4NYl+wKb+sebeQp3ODEANYVo/m3qleHQjrj5B7TwJTQ
qE39ByjkypzQBCvWRer+/cI4CmHlTU6JAycv/vvCNQr54/9N5A7WOaUqKUvR
o5ACIcapNKzT8MLTONohsDzjYBc4/5nGD4Y+hTC1pTX2Y51Ms2/1fhhQSHDG
b0kRrNNK8Vj+T0PMy7kiXQDrLPceXjFxmEJ+T7mLG2Cd3I897KeMKKTfZ+7g
fbDLr/m6mSMUcrx9s24D1t0gHSk4Z4z+us51IgfrFnRfE/jHBOuPXu5tg3X7
FaV2/2eK/Iuuu1oO7mD8+wUJeE5p9rKPMQfJnY9vMh2lkK2rTXPNMIfIU+oT
zBbwkM3myjh4IKf5MOsxCvnSQrdVxhz2DJs+WGkJPkDbJYN13hQZYOc4jj5N
u/uiBTxme8aZ0wrzHN3i8hjr1r0384r7BHqo5NmiKtaZ+TV061pr5Ct3Tfss
eGHz6tB1NhRyoUfxszDWbW6Z1LfBlkJavZ667gaXJG1V5TtJIWsCKl6YYA7s
n4rv8NtRiKh1Q/FyzMFh3Z7fgvb4HNJYewFcY/LKVNiBQlYFUOt/gTcmGJVu
dUSOBg0nejEnr/YvXKJOFPLXze7dIcyplfOUm9gp9JGdYGA15iJqMPFG3JlC
sg3vOfWZw4voi2K7TlOIUvlccQvm0NPMFintQiH+llx7qGB5tpsoUOSMp0Ir
CXOJ1dmyX96VQjJe9hQUgGnhhWmKbhRyOPfZ0QawxkuFBWV3+CkbyRaOOaUu
e3Fsrwfmo3tMpRQ8s0//qZoneuyslBYH5mYU9ImXnMX18mLCpDC3wmo7Lw0v
PK8IVnol5sb858c7rXMU8qz6uNxGzM1axX/XAW8K+fVdurEbc6s4zxx90Afz
3WKayIa58ZQjnr4U4vN08L082HWKT8fwPIVcr7960B7cKJubZeSH597GwXEd
cxU6K7PMxB89cm5V5RXMNeBhtbVZAIU8OKXKVwv+8OPfF6pTyGpH0SOymLOU
ZOcmy0AKUSmxXaWHOV9xsT5vdZFCpP3L5dgw56F8+gfrIOTRvCJoAnNVpXrL
ngxGftlD7Lkw11vbl+LsQzBvm/sjPOBx++gfjqEUon13Xd8IWC9z/SHnMAr5
b8vqbkXMPXsgI9/lEvygV9S1gBcFd7G4hSP3b4zbnmLOFicq7D0isP9xE/7H
mGNpiuaLs5HIKU/Ds3DMkaOnTdD7MtZXktn6GOy00TLQ9wrycCG6fQxzrTMf
6fa7SiHr9rDtNsac+BI98UJEIftfnjaTx5y8O//cvBiNPsh79n4L5tS25vJE
cAz6vnyDVxNYzIjHKOwanvPTnso2cFjs3QfhscjFq7wbqphjb6vYqstx2JdZ
HvoYgBVXlTlfjaeQvTXWl1gxt/iD+xqjr+N+/Gb3ETDj8putsQnY/39YmDNh
jlqNZqHxN3B9rcl8b8wxjXmwL+Emekk9jsGOuc1q4HU+ETkVWPbsLuZmHPr7
zu1b2F8smgufYG5FtWH4A/j1Wf3JKJhlcbVZahKFNCfr7lXEHCsDtnFnJOP8
YT1aWA7mffbQLSuFQp4vftK+hLm6/97TkpOKuS+jvy/BHJsUGsXy7+LcIHPB
iA1zFPE+ElmYhrz/9DzjAg4s7f1WdA85cJgSZcJcu8ZP7X+Yjs8/sm/qLOa2
W3oy7VEGhXzM5WXuxZyi3IIWHmdi7nd5VbQxp+H7Ky3Ls/B5+kyJiWB1xs2n
FdkUsjZk78o4zC1JTGhdVQ7Og5q6/YngCaf7Xs9zKSTxnNwtFcxRP0exvTYP
veqTpZoKzv32Yld9Pn4+tfEQN+a6JGwQ3VCAvEz0716POVrafqY1FlKIjfgr
w/Q72O/T7HWa71NIzt4vUUcxB86vY1ktRdh3XlxvkMU6nTcHLGt7gH3vW/OA
E7j+2Aqb9mIKuSR3RzYY6+RPiq/ueIj91+5CogTW5du1me9jCdZ1zZJrANzO
m3f+0yMKuXsxQl0G6xI3kf3YXUoh92eOjZiDw68/l+19jPPCJ31nC6yz751u
fF8Z7ueF4OcUsDInXoee4HqK6188ACfo22CDp5DJF6ebq8GjUYz8kafIR9hs
kQXmotPsw0KroJBzp/LeDoPTWZc5MJ4hD6K80jWY07x2zIvRSni5Y/bRFszJ
NHzDlp9VOL/mXOhsARfXZwb+qsbzXjEpnYG5sS2T6pl8jvlftRHwxdzs9j1T
mqnBOhIXPC9iTtUXtRJna3H+cXRJngevr343MV+HP7/P9/Ez5uY5b2n03wv0
U5FKnjbm9kaZ8uBvPYVEm+3Q6AFvO392FVMDel7+U/BfcNCTBWfmV8gx0w91
Lsz18+TlRpZG5Gw3r3sCWFZ27baVr7EfR4joK2LOMZ5poaua8P5wL6PcDkwp
3tm/uhn7UVCSqh3mTn6UqXK/gVdTN58/x5yTJUgyTwvOy/vmfDkw56nTLb95
W5ET/xS2S2DDfHOzDW8pZNNeSV5JzD2fMli6qY1CdjqGP7IBM2134+Z/RyHf
jTZku4Ct7GfdBNvhb2xC9V9wecalFqH3uL+K4suieE7cA5w7t3ZQyHYNdgkC
dhFMjtzeifNCyqfm/XhuDVbbh3d8wHm6reQSG56TYErJfvGP2I/vhYSfBft1
47jZhTk+zS3ywnPr2PB6QeoT2OH+z3GwpLmxpcxnePBXZiEXzyny5tenct3Y
Fwsu56XhOQ10OK9T7MF5TULQXBDPac+aKS/lLxQioTOebw6+eTi4fU8v9kHu
5cpP8JzGrv37+mgKeciy1m0Kz0m39d/XS8Kn2UfZai+x37P/+/opChnhmff3
x3Nb0P339RQUMhfqaBUGNr+slK0ziNx+cBLlx3MseVW/7OAQevvOppZdYHZm
QwQYnkayTKqAHTS6qw2Gse+JX5WyxXOuCXHgMxrB+XP956N/wRtrf543plDI
gVd5JiZ47l7/BXw0pVII/V6jcRW4dS+L3FEa9ovu5vQa5EA04Hr8MTqF7CuL
yXuF5xpSwT92nIH5iEx8YYB7ZvIOWX+nkNNa9DNWeM7yCnIFtqM4f+8wVDuA
5xx7robF/gfys+qXQj2Y9uigg+MYnp9HkkIOnrvG+IcXp36izw6NnfkOTpWy
3eIyTiH2rYkJx5CDGdfvga6/8L5YdMNSBjkwuu/b4z6B9z9Ru8OnkINC+jLl
s5PoHdm6SG8ws9i1xHNTeL86GuEaB7Z22jjpM41crzJt5EdOKrKxfc9gXpKf
nOzAPN+kigN+47xwRyfoI9hVuHLVxVnk/qinpidy1GijfTp4Dv421z+NAAul
tTeGzqN3/Vwfj4MDeo9vC/+Dfa6K3dYLOfvARw2NXMC+1tUS9hosdcyr/8p/
FGImpPOGD7m7cvs/1ehF7N/Z+pXfwUMf//2CbeyfhUs9p5E7VV7e2bglnFfS
dFebIme3jO+ZJSyjksaHtrnHwePx4jiQUsmN5TxKdWC9d0+4by+nkr+yf4rt
kcPs1fvd7zBTyauGdPYf4MVDrS0pK6jk+zdP0x3IpUXU0Z1pLFQiWbuZRQxc
2jQUmc5KJcIHW8NjkVMOVvfhTDYqGb8/dCkUuXTSntufs5JKfmvzNg8il3WX
wu/lsVPJ3e7HW/cgh3z1XP8VrKKSgbs3srTB3kv/fqEcldjuyT54CdymLlpR
vJpKOB1C3ZYhp2IXH617xEkl24UWcvyQ07Aq1XOPuagkprt4RT64d+51+xNu
Kvnan3t2FXKrqGwiVbGGSt4HaStbguN9+6IreaikqF9e6y6YUXaaXr2WSlYT
80+dYK3JKZ1aXirxsfTgWoEcp8mEZL9YRyX3rz0saAHPeqAe11NJi2KE7A7k
2Lj4lk3jBipZZprduR9cNCr8vGkjlSh9KzIwBLNIPOBr2UQl8wrX7wyAbU8r
+73lw89fFTy9H7muzHv58d1mKnkdYJvrCualGMp18FMJq4/T9Bnk3H1bT/wH
ASqJrW439AM32TmOdQlSSeKqy6tUkHORjPFD3VuoOIcrX3BGzgP7LxR8EaIS
LTGb5lxwlwAra58wlWjsoAvQwLutEhwGRKhEv7C7Vhi5j0oWqB/aSiV7Jays
X4KHP+dvGdlGJWfVht7ZIffqG+QvUrdTSajIG5YecJJZbQ9dlEqsVbV1L8GD
iRt6yqM7qKTA8apwP1i/42PimBiVuNDGxdrgQS73ycnxnVRiIvCstQm5XzIc
NZoUp5K8na3Zx5Fjy2vni6clqIQpdcylDVzWwsQxK0klZt10k27kmJM99vT8
LiqhXFF+IIGcOutuQuFSyYf6y37nwPWR2dv+SlOJm6rcUBhyy/9KOmyZDNbH
FX/PFjnzXV7Vv1yWSkpsal61gtv366ixyFHx/klpnkfOxEPeJ7PJU0nn9XWy
/MhZeI3VLLsClQTf26D9CNy3QDVbrQg/Zi9m70DulPcibkpUEtH5fc4GnOC/
yM2jjOtPb7c2QQ5Hn15151WhkhOpexSzwTozvK3r91CJoL/1+1DkMl0+feem
vfic+CMfViKX814SlzerUknk9+jTDLDpo/JhATUqOS44M6yHXBb/3K8hpE4l
k5fV8liRSzapt/dE9lHJo4c5UwpgO1eL/7YR5Clq8JMnclpd+M1yx34qeV6t
edMPOV1Pd6/YqUElmhytfnfAnjvm10lqYo4enmGT4DeOEeektKhEekZUKhi5
3ZbN/X63Nvyqcq/MBAcNpUjJ6VCJ4sZpW17k+LPQjhiFA1TikXb1wT+WtSml
K+lSyRRzwmwzchhzV+3AnoPIX+jHdYrIIeVLU7aqHpXU5vcLt4MJnynTvkNU
Mt19geqPHCZb9Nvs18d9D6z97xF46pbLc00DKmEs/X6yFjk0/DiNFyj4JMZ7
/w9yl7821E/3MNaxh8ncD7ljMubo0jOikq2bJFa3gK3ib8sZHKGS/rjjzwyR
w/I2keuHjankSO4TkVAw9+risSMmVHLTvFnaEjl0OaSib2qK+Vnziosgdw1X
GwrMzahk08cr5W/Agk14PTenksvKLT/ZkDs/li8Ox49i/eZDh4rBHVpO9Scs
qORJ65POEORQ8tKvLbbHMPf6r8VrkMPIF4EX7Syp5GXifgN/8MBfVnwAlVwS
rvxZhRzuUb+hfMoKz3MTfZsIcngzUPDW6RNU8vayYlcoeKyyYPKMNdY5+jww
GbnUnZM/4m5DJV/2sTn2IYeZSnXFnrZU8t+zp1uWIYcLPoc4zp2kksI99Ynx
YPOyrtM+dlTSZqvtvR25LJk4+fq8PZVcjBqatkEO2WV+bAtwoBKLn0+qqpBD
Bw+/sEBHKmHZ7/kiBDmsebB8IMgJPsmsGXRC7jaOxqqFnsL6j/b9UUPuvMT5
Ui45Y72+rmxO4FbnnNmI01Sy9Jebxx05FM3bbX7FhUpWjlWWmiKHISNVj6PO
UEnOt3u78sA9Ww+sueZKJYdVp0LlkEN5uw73ODcqOeXRf8APHJt+ovW6O3Lp
5/lkDEzro+286UEl1GOvLs4hpxoC3pdveWK/6is52Iscph7/O5x0Fn/vRUl6
jhzO3InSSPGiEpWjdUrlyKHR53Xpd89RydEKF41BcOH6jP/ueWO/MNUNeY1c
MptJHs/0wXWsl1WoIJfWN/D644v11sUmDiOXFe///YJjKpEp9bsrhVzycLed
K/CjkrmuXoMJsKvhsff3/XH9O7uT7JHTxphhHBCoJMV/evUm5FSoxSOm5ALy
MK7Z1oucBqz8Qy8NBEd4SN1BTj8ciDzw5CKVHDgw/f4ccioVuSbnaRB6rqbW
Iht8pSGVqTIYuVnjn1OG3A4xidlWh1BJmFJK6Tew6v7Hz2tCMe9ZR4025PhW
sPrmF2G4j+9qpRLI7fjzZr+Xl7DOe0EtTMit3sK/X/BFJUnZEVt8kdPsPQNy
TRHIs6Gp9jfkdNHvzPU3kfBB+4j1ONji6cxY62XkT1/8zkHktnQ6VP/dFeR1
i6neIzCH/OrC91dx/0Psq5OQYyevJNYPUVRS+WrEQhI5rivZ6tgVDd+6UrVq
wXw/i+s/x1DJtw3Sy6yQa+9de4S+XKOSp8uTN4kjx21nXl38Gksl2l4u0dpg
sUKjL/1x2B/nV5twINdhtC/KQ/FUcqHTM0YBOe4VPXVr+Dr2e2bZc55gRceJ
SUoClfwq7j+SCI7PuniEfoNKdkT2Ms4g14xBtoffb8IHscPHB8BaQjc5xhLR
n8P9upHIeZo1jpO3qKT7OPGZQc5nUwtfT9ymkgkfUQ4p5Nz4i8L26STkNNxy
8ga4aNMLvPDjz0VesAcg5ywW+gNzycj1om5uFtj21ie1hRTkP+fpfjq48oNd
ymIq9p2Qqft+yD3v2rHZpbtU8qyvJ/Mn2P2Iv/nye+iLvSeZXOBBUxxz2Yp0
Ktm3tNvqHFikLW4NWwaVfKoN+3QFXgRybPZgz4RP1xIUE8FdermtHFnYn6gF
rLPg3VdlxLmysX/xp595BW+iXldfXpOD/hzUWXYGXgyv0B1Zm4t+Xqg7fBRe
qGt1IvD4dxnlr1LASWHW6RvzkQ+zc/9RwRN19P/4CqjkTuvHmpPwRP+v93GB
QsyVJaTOH5yrtlSx5T6VcLmo+ZvDm6UL0etFinB9sceBHWDLyvXe2x4gD8Ga
TA/gUdlsxnvRYirJ6MgbugOPOJV2Se98iP2D5e0ANzxx9qmIkSjB+UzwutLm
f1481mTseoT1yXtzR4D5J9oO7C7FvsEhuX4e7LvbMkf2MZWc9rlcYQJP2t1H
mBTKqOT29U1+dmDxB562Sk+oZPMJ89ZecPj3f19QhOckpN8WBI/6dmJ7fkol
WbqUXA14o+zM469eAQ740DkCbxJy73aRZ+jhh3W7d8Ob0WExec1KXFc4g+sX
vNHZWnZduwrrXHfty2t4k35y388D1ZhTYknXGngzf++Nvt5zXM+PN/4i2LTP
rFC/ButnVvfIAhfzD7IerqUSevU8fzo8Yjvu6nikDud3k54PBfDI7s7vepMX
6OVNRy6ww6PqT2FC5vWYz9PieQp4/XrOIIuXyNMXIR4WeORpeueLZQN8kAx5
dwT8JmGbyolX2OfvPNtnC972/iEOtDhvxAwHHIFnQVx7p06+ht/vTm2eA382
aDzi0AQ/zp86EAnPZGOOPHRqhq+Dmt87wTFvejlOv6ESiTNvh47DOwqbs8uZ
FtyHu9hbDnhFDky+dmvF+tXfBurBq+SIoO2eb9Fzbf4aCvBm6uXKS15t6ON8
XY1YeGLIlDjg/Q7n79Q8YSd4kk+E1M+3U8n5vfMNl8BMwfdT/N/j/eL+L67b
8MbqueLchQ6st6PMnwIu//PCPKgT+bX/6JQMj7j3GJSFfMB1lFdmroVHLn6f
11z6CD9rQz4kw6OGcnuPiC48v/umLXvhkeA06u4TclmpwckBb/zkAsSjPmPf
/xN+bz+86Ti74kpMN5Wsjfq6WAiWLIkfie2hkkMLG/Wd4EXk2GbN619w374q
gRfBA5J56Td64Tm3juhneLLnjOxi4lf4/MDxOw18s+D58aQ+Kmlex9KvC2/G
qP++rhfn0btpunlgXdF/X9+HeTz9Ka4GbzIdbLzvDVLJTnWlY5fgyUIm433G
EJ5jJ73zNth80Ec6+xt69XXz1jh4U7Jl2bXcYSp53PpMPQPMbh3DyB/Bedx7
kkcIHjmkbtC9T6ESNTMDVhlwTU9mzgMq9gnNbGfz0n85k1peQsN9MdIOesMj
r6PPbEvp6M8Jyb4ycGuiVk0ZA+dNSaZttfBG9MO7zU+/w6+VUoxD8CaE57j/
s1EqGdnDJ1MBb3qMKF1VP7CfLtc65wxv5OPOyteMUUnVc5kKb3gS+3bhet1P
XK/ZviIGTFt15Wf9OPb7VWdz68AaemsNXv3C/Tt7bj8Dj1KvpKGgcd67YvC3
HDzTuJPtzSRyphDcTgUbrXji2DqF9SmZb7eAZ4Wa5GXbNHpTbkDyITxjDmsR
ej+DefPsunwGnlnXIT6/cb83bDVi4FHF4uCXj7PobbKlWgHe8Ki5qXyew+df
G72mCG9cL8ze6pnHPsQ/rBsMbxqfXZrq/UMlH7Nr9pXAE6FZTuP+BeT3VMQf
FngSoJj8cPA/KrGX2i8vAv7gvX318CLeR2rv1mqCpR6XuFD+4jxuHu0+Cr7y
a28TbQm9f4g+kQCvhqRfb/++jEY0bK5PXoNHqu7Gl34w0YjA9J8Tr8G3ir4O
/FxOI3VRBpd74dU4w1l9gplGupd9engEHuntnEqZWkEjTs0/npfDo+xTwXMz
LDRy28H4jCo8WsxhPzrHSiMFKWu594EthhPL/rDRyOtTPu5H4FGpiDDP4koa
CR26cfk3mONkkccSO43YKB2T4IJHTveU3jJx0AiRPln3Blz3tV58xWoa2ezR
dMoVHvHxG15h5aSRDANxFhl45G3ZPbKSi0Ze/jExPAJuS3LQ5OCmkXv7Bd2s
4Y3Yp5/pnGto5GPuTrW98CJs3QW8gNHI9pYs1jXIda8Ji9XatTTi+45cuYLc
KiZcf7aOl0YO1wnYR4Hj2/k3bFxHI0H73jtmIpcMznxvvvU0ouoxU8CPXGoZ
4PV7A40kmvefsQSnRddIb9lII9ON7366g2ebD14T3kQjp451rbsNNmb7yNjK
RyPjSzsKG8BFOra6optpZE07u6QqcswS8T1HjJ9G2iRYNsWDbV/6LpcQoBHd
3twT7sh15TKmk7sEsX77+rZ/ueYl13BBGvEZP2D+Gbl1D9rILytEIyu/1jQr
I7dN1Vn+8sI08sOzPa8MORX5I/VJUYRGeC0CQ9cgl4EqlfIqW2mkWXUo/ja4
67x2wt5tNDJm2b6GGzndXd7+U207jch/Omwzj1xGTR03IKI0QjGd5XJGLodl
qYUaO2jE3fUlHytyqX7Wi01bjEak1qW+2YIcJj38z/HAThpxfH5B/g544seV
lwfF8TwK1a1kkEt9SV5hfQkaefDUWJgCznW5F2QoSSPJgt6hp5DLpXzxXqNd
mLfLwaYksCX13xfE0Miv6hnei8hp2fb9t82kaUQncKGAglxyOrROHd2N//J0
5akil86ZR40tZZCvvx+SysH1A0MPrWRp5JZLWLA/csq/xX21jRyNnJb98vcF
2PfEnMtJeRqZHLnROQJuTwlvslegEf9Ed/ER5Fi8h0vUSZFGLlEbQjKR2/CN
eJ1RopHze94wfQT3mYsOuijTyIUT8p4Kq2hEOfGRupsK8i/FPX8NnNCpmuqx
h0YUikITr4NH1zTNnd1LI99HZ39YIvc6RiZHvVVpxGI0raoLnB7bV+arhvxo
7X1/Drmfbz2NAwWNXGHbaKCB3Juumva4sI9GQpYzfzyMnBcfDHl7kdDIK+pY
zykw25VVEiH74fMkiQkD2zXeuhKmQSP0EK7jNeBqZhFKuCaNpNGXz7eD12s+
0LysRSNFn7TWL4E9Q5UzrmpjHsGpG9ThzZval4vROjTizakokgnetmhoFXuA
RjgMqwSawEGqPc/idWlkaHr29gK8+hzguOHGQRp5Ort9azA8kX027p2oh/nJ
C/D8BMf8vtBx+xCNZG2bVPwDpiiw7k7Wp5EVb6c6zsAL4p1wLdWARvIrO/9c
gxfJpQLf0wxpZP+rug8j4KnxfN2MwzRyfFXIo/vwxFBaPjfLiEa85MRePgHn
u9Uuzz1CI/E19x394QlTkd7JfGMaOZRzoJoOtmJ8rCk0oZFdKZa6HPCmXOwk
/wNTGjmRJtaYBOY+Ner/0IxGZKJUuh+AXXLOf3pkjr78VuXIgEcN33A8PIr5
TYQbxMAjQZHYhHILPNcc1n1M8MjPdtN4xTEauX5CrP8fd6RlG1RZ4u+rIvi5
wJJfpe8/Pw7/5H73HANHbq5iq7P6l1NRc1t4N3BMx6n+BO7TT7DLFbwn6f3L
Bmvc7zkZm8/gm11Wwq9taKT0Ar3xK3iMlxbUbEsjZtu+Sh6GZ7om53pbTmK+
Zp/SN8GTzOuLKm12yPtvpuQU8MK7q7fb7dGXfoNv2eGNOee66Q4H5LWAO28S
XKKfbvzREflOP37gJTxij5Yo+eQEv66a8InDI4fm8tU9p2jkufX6rHJwDavG
mV5nGrGVOq+4Bh5t1Hnb1Hca+QxVeK8J9gq3gCDwN9vurCa8aa3/dunbGeRR
rXLmDlh0mcfgiCv6sVfsXAY4ZN+8Os2NRoYfmVYYw6OeixGpDHcaUflBGR+A
J/LV3POjHjRCbUrzKYInsfMpR396wq/v0Steg2nKO578Oksjl+MGZefBGudL
eaa88Pw0RJc/h0epT9Q8Z85hf3kTkDoAnplsejvrTSNKjcW/LOCRkaypxB8f
PMdvBclW4ELP/iv/+dLIt9De0HJ4xfwQ2+15GgnTTHK+C6+sf0xrMvnTyKpY
n3XT4AqJ0AzmAPSN3HbKMLziceH4y3KBRqRtwnl+g13zb1utDKQRLtPx9mh4
1kgRqVx1kUaE5neIN8Ejoe3FGziDMP9cvjABeBRgr+LDHUwje2U8gzvAHzIa
OnhCMO98twZBeCU1cHj3ulD0j8b0ZCb4iuCXaxvCaORI7CqBS/BqyMrp+6ZL
NLK6ZdNCB1g15ZcufziN2J+WTTkAz251B+YKRtDIBo2i387g8Q1szMKR6BUL
718a8EzP/MbJrZdpRKtG5eYEOPumYO32KzRyX+7SbCG8W+wo4Be7ivkkmK4r
AlusUcABGPPN7r4eCw9LD9d9koymkXMHmJgd4CFH7CEF6Rgacbu6ejAKnjm1
diXIXEMPlD4OqoJndex243KxNFK1MkVwO7ziO/jDQDGORi6+CwsWgkfel/3u
K8djvYsFIV7wpO3V8pV7r9MIa6X23Aw8EWOOc1JLoBGDuX3q++BJmAZfw74b
NDJxUe6NPbg3JEdY4yb6YMNOqzPwRLF2d7BWIvpqcZvkFngQ/19Vr84tcFpP
/1kwY++BPQdv00hw3Zun58FaAaivJPTYmUyhX+C0ihPTBnfguxKveii8mZ2h
GRsl00hKagdXI9hYwbvEOAX3cTzaZhEeFZ37u9osFf8duzSuDI9YSqPOHL0L
T2/fmDQA246vaz6WhvNEhdkDRXhVKZUhanUP+7e7Qy0FzOsmGW6djn4IP+H6
F5653386aJtBIxF7uwMF4VkTXWOffSZyYGv8gx9eiYi1pTpmweMZIc/L8CrQ
6dj8qWzsa+p9316Du7KHj7rkYB+qv5/LDq92f/v3BR00IlxxfVoOHCX8h8cj
Dz3Dw5+TBq+GbSI9z+bjPBV2nC0dXqmnrWk7V0AjcTLr1OrASb2pEr6FNPK3
8PvfJng1wSd21e8+fAxe+bIDrH/sMSWgCOt6O6MyCM69ra518QH6R6DVTgVe
LX1szgguppGr2dq7PcCWvGZ/Qx8iZw5HliWBy4wHrMJL8PkuIq09YM7rZyoj
H8Hb4rGzfPDQ+d3MhqulNLLcsTN3C7h+dZhP9GMaiT6i72EF5tdf3XmtDPtI
Be3ARnjpG5W0O/4J8kIP/rQP3N60FYVOI8++ysVogMVZH36/+RR+F4WbngOH
ayMOFTjP3j1TkgeP+y69yr3zDDlIWmnjCW+V642YUytp5Mb3A0FUeJuw9OVk
WhWNyO1bL8YGT0fVT9WmV6PnOP1UFsA6Fyf4s56jn9q+3xWEt+lVFwNyamik
hW83szm8nZ9j+5xXi77tHx/yAZsq31QorMP56bI/bwa42HfLjaIXyINR5Uwx
PGZ7UjheXE8jb8fmQ+hgu0kFw0cv8fk/bJLnwNUyL+4/bqCRnM9B+5jh+XpP
/ZXlr7Af/TgRfQBeexZ/cqpoRC7TpTWd4PWbUbuGyteYf9b0XR14vU1iTPh5
E/qLQ16wAhx02j+4thn3KbXkbQzPP+cxf33xBnNU9XCIAstS4vY0tOD67/fr
sMD7mG2bkxpbMU+z/SrHwRS73Ommt/h8YZUPOegBkiFj0tKG58k8xdcJTu6v
Lnn7jka+8P5m/wmeEtDlbG+nka1rNzMfQk8YWnWe6XiPnAzYTa9FD+QnWzd/
6ED/XQydf44eYOqmi37qxP6hHtu0Ed5bbfAJ7/6A/b7u9DltcLnZEl7Y4Cnr
if8iwdw3o/f1ddFI5/brZ2vBLh14nf6E/TequuUoeqGBO3N+6DM+R0hk1wJY
8PAui5Fu+C5kX/QCveB3reIJtYdG8gTKLpmiFzpaNNcyvtDIXeLWKQnvJdnf
eY72opdHxcbb4XmkrmXb2Fec95oWs1bD84HIEYlffXjOAus3RcHzPa88r072
Iz/S2ZufgG8u//f15jhPWU8ODsH7sf2XtWYHaaTfdWx8F7zWDeHBDdLIe7P4
4svwOrPm7t+Fb/DwxAH/FPDCwr8v2KQRtYeTSlLw3HxvWeUyCo38ttVgEYLX
Jf77NjJTcV7ILXl7DV6zV7zxYaHRyLHJlbfE4LXDjFknGx09nqmblgeukR/c
vYqBng6p6qmD1xvPucau/k4jR9VdeXvBXo9+f+capZGvh1c4acHz1p9hB3l+
YH/LTHZ3AItKcebxjuE5fj55LAwc4nqHecNPePy33KgF3FO4zW7TON5/Km2H
ZNAD8vSHtZt/Ya7n7q+2Bcfu2CsgOIF9VCo1JgRMc2wMEJrEXFuyBPnRCxrZ
Rz6LTP2by3dJJfRA6lCvwvZp7GPPgi7agmeEnG/smKGRHUva5QVgI5vJ8Z2/
aeRk9ZsDMeiJwrt4PZlFb92fVJGF98y9K4uk5rBPVni06YCt+RJXysxjX3p+
Rt8aXldYCJ2S+0Mj634eYWKGpzy37zcoLCBviRkyD+Gp60dFEeX//vm4It8R
njaurQ/es0gjBwRHL96Gp0LGBl9V/9LI2o4D7/bAy4D4z3v2LSGXW5p4DcEf
2uyT9i+jk8HnIRnnwFKrf+IAQic20z17+sFXDgWY6Cynk/c9ohe94PHQ1RWP
dJnpRC2FHjoAb1Wb4jkPraCTHzdv8XjA21ss/K4GLHTCfvLqLBU8rpXXfJiV
Tg48/8lmC4/1LsnuMGajk59BsnlT4OwXz8NNV9LJ172vrLXg9eJf3SFzdjr5
s6XLoAdsof5h37FVdHJdsrn9KjwvDbS5e5yDTvh+DUk+AXNUMeZPrKaTJ7s2
W+2E905zPha2nHTy1yk9XBue1yktK7fjohPO5+3tvWA+35i1jtx0Eun6decX
eO1dtuHsqTV0YpAuGyoKr9smMttO89DJjVZ+Si9YTEZK0nUtnbh+7X0iA6/D
PJ5ddeelk6crursnwL0PtKie6+gk87Rd5A94rjj6Tuvcejpxz97SyQHP48WP
Z/psoJOL71/nJYIZzjjubaSTw9v3lerBe628sycCNtHJu8VHDTbgtJGFykA+
OnkbJ/iyGTy79crG4M100r3F7aQkesDYbq1vKD+dbNl4n/4KXJSe1nlJgE5S
bE70/ASz9O+UiRSkkzl7Y/0FsK3Ak9grW+gkce252T70ROVxMholRCcSL0RX
WqIneJNbDl4TphO//dyqZ8Dun83z4kTohDc0btgN3LR+iDlhK518kipZmQsW
MXOzu7mNTg7FiLqYoBcCb8zW3tpOJ3pr5j4Q9EDX+0sCd0TpJOkda53KCPZ/
bq4LKTvoZNkI22Y39EKUYfLnu2J08lEusWQ5emE4Zrti+k46eUbV+BOKHlBv
KbmRKU4nSq38QonogaSVqr+yJejEOESjrgLeTxx4bZgnSSeGziOxavBeP9K4
qGAXnXwf+dteCo9zG75CKMw3u+haK3iJ6fSpYmk6aZdWPeMNTy33TzWU7KYT
/vNcNU3gsuBgkccydBLyNZdbG95y1rCHPJGlE/GM9Gci8NR5IfHrUzk68R5U
y/0Brt8jvLdSnk56dFe+1IW3/P5FSdUKdNLXwJl/COz7VGmmRpFORoZne8LA
7dP1Ji+U6MTMmlV6HCwuj+1TmU7627qjY+B5uFc3Z6MKnYw/ib30CF73lTi4
Nu3B81omd9AAXiv//Nn8Zi+dHAud/esCjxN2XdjxVpVOrEqSZfrh4egZloh3
avj8Zfq1i2CdwutD79Xp5Pen0IXl8DKdxk8+7KOTlTUf6jaD50Xz73YROlm+
Jm6XIjw1dZT783k/nWwQZJozAxdn1Vh80cDnqSo9TAazDR0s/6qJz6mII7vg
sZ3Qx7UDWph/UEJFErja2vbskDb8T1p7nB3err/7vW1Yh06cNI1ZJcGeX3wl
qQfoxCc2+9NFePtmE1MUXRfrFbbK4YOH2yyuUb8fpJM7X8punwEH3dqoPaaH
5119TjsJ/PlDVub4ITq5xsyqsBqeyq6VXprQpxMjnqAQOjyNOVKJAzOdOLsN
2LrCS0qcdtVvQ+SnIOVUJpi0/fvCd/hnzm48B07msPJdMELeHpdbSsPbKT1q
5+IROgn1vS4tBW8Nr3rJLDOhk9OBYrq64PzX/8UuN8V8EtSZT8JjJparoyvM
6GTo9dUAHXhspcWrx2aO/rmrycoFj8vD7uWxH6WTiE2rr6jAY+4X4itWW9DJ
CkMlRwOwy98ndlzH6ETqz9s70+AGtf11ayzpZL96mc4ueC0Y2CrAexz38cnr
rALYr/LohfVWdPJ4yb3dCp53zP77gkM6yR1eby8MzyWV3BU3W+Pvl7u9Ogev
I33mbgjY4Pnu2NV1BzzwOPzXFlv4mtIo0gmP90xwHRY5SSdyulo9uvD25u6U
om12YC2/8jJ4O+Yuyr7Dnk7iBl+NfQfrPnh0aqcDnViOaSYnwNvM76qvJBzp
ZLGw6+UveLuws0lEyolOZrL7Z5XgrbmzScjuU9hPWNt4UsAluX1fZZ3pREYi
+GErPGYfOb1X4TTuu4xvOyu8ddg6naTkQicHk4qFRsA1J0NmVM7QyS1niW0u
8HZj+ipTVVf47Lj9fDbYq+/WI3U3OjnVc1u4AtzKL8K1351Oht9bulyC16LH
H7hqetCJQv9fPqt/Xt9RfqPtSSdrZLj1n4F7Pr3coXuWTiYjLLlM4bX8+sMR
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
ij7RM98cjd6rf7EYrVOB/TGhpnQdeo9/6Spd9xmDkHts2uXoPV91bG+VDPL4
6DImZ/Rce2B6tkEVej7oj8gtsHiVBJNRNYOc7zvWXA0Onyu3MX7OICv3blyp
gB7sU9J4blqD58QppHEVrOz7lu9oLYMosT35zINeTCiz8DtWhz61eOQUAR6d
+Pbx+Av08JUOeiJYR8ZDzroe5+HrVz5rohfTPebjbV8iT+6F5k3oxfkHEWN2
DegvUbEvPuhF01FufcdX6M/VDzIs0YvF4qkFpxpxvq99Md+O3mM7vYPV5TV6
c9VFC030lF1eqYNrE/LNcyevCb1UPaJW796MPPRVH2oDr9/WvOXsG5xvb1zk
lERPedqZXjzXwiBW23TMn4LfpPf3+LT+O4+PcJ1Hb23rd1H2e4v9d2d5gCJ6
K0hgJjGgDfObVZo9hZ76fDx0MvAdrruh23sbeko2meNIcDuDrLYJE0wFx3y+
XRz6HvvgqlW3tdFblPVbOcI7kGtfz9edYGJWfDqyk0Ey7uzw5UCPJd9QeX3l
A4PI8MwId6C3pt434ECOfms63+aG3jLkNgq71sUgCnp2KzPB+YZf+uM+od8P
DgyuRC8xXXNSS/iMPNFrJeLRS1Ytv5JvdiMHL98+fQUuX4m66EG/x9TfvYOe
4tZlM7/zBfsdp/9XH/SUS+SNxym9+LwdPwcvgRsaBNekfWUQk5/yi1/QU4LL
C93T+3C+cNpj9Avst1+hNbMfPbm/vJcXvdURXLczZwBzKQvZXgqWrDl0OW8Q
Pox3WM2BIxe6hguG4L1gz8xB9NjAHjuNom/oqfZ9T/L/57i847H8/jgckpWk
jJCshCgrqcQhSSUhISEkSaGQJEl2SEZJkiQkIUqSpDIiGRnZZYY8Sygj6/f+
/v7yuuq5zzn3Z1yfc4N3XqY9zB1EPXtryWrDa7dfe8/n/cR7PPW56gym/2E+
/nJolHB66sSMgvVVbxW9Gh4lD94Zv5yB11LdhfiLRhAvlo2zKomou7x0j+Jf
uK87WExcgcfMGIqNJaPok8HT4RHgPIWSLe8pWOfTsTVzYI5z+yI/UnF/26y0
6yA855DV9KucBr+Z+fzLh+dKR6z3faKjH5rbnTjgOcFNv9KqGcibDLufCzzn
fsqT6cvYKFmfW9+iAc/VPl48Ufd7lByqTdVXh9ek+8PfNYzj/raLZjEI9hfj
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
/ruIH0r+D2IupCQ=
       "]]}, {}, {}}}, {}, {}, {{}, {}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{False, False},
  AxesLabel->{None, None},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Epilog->{{}, 
    StyleBox[
     LineBox[{{2.040816326530612*^-8, 2.040816326530612*^-8}, {
      0.9999999795918367, 0.9999999795918367}}], 
     Directive[
      RGBColor[0.368417, 0.506779, 0.709798], 
      AbsoluteThickness[1.6], 
      Dashing[{0, Small}]], StripOnInput -> False]},
  Frame->{{True, True}, {True, True}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  ImageSize->{823., Automatic},
  Method->{"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Part[{{Identity, Identity}, {Identity, Identity}}, 1, 2][#]& )[
         Part[#, 1]], 
        (Part[{{Identity, Identity}, {Identity, Identity}}, 2, 2][#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Part[{{Identity, Identity}, {Identity, Identity}}, 1, 2][#]& )[
         Part[#, 1]], 
        (Part[{{Identity, Identity}, {Identity, Identity}}, 2, 2][#]& )[
         Part[#, 2]]}& )}},
  PlotRange->{{0, 1}, {0, 1}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.02], 
     Scaled[0.02]}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellChangeTimes->{
  3.7096933694239645`*^9, {3.709693701323969*^9, 3.7096937072091756`*^9}, 
   3.7096954998204737`*^9, 3.7097809637037396`*^9, 3.7098486539341927`*^9, {
   3.7098499671245623`*^9, 3.709849991686639*^9}, 3.709850028137171*^9, 
   3.7098503875904527`*^9, 3.7098504479019146`*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{"Needs", "[", "\"\<ANOVA`\>\"", "]"}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Length", "[", "standardized", "]"}]], "Input",
 CellChangeTimes->{{3.7098501967530155`*^9, 3.7098502040275183`*^9}}],

Cell[BoxData["8117"], "Output",
 CellChangeTimes->{3.7098502045086203`*^9, 3.7098503938607492`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Length", "[", 
  RowBox[{"dataretrogrades", "[", 
   RowBox[{"[", 
    RowBox[{"All", ",", "1"}], "]"}], "]"}], "]"}]], "Input",
 CellChangeTimes->{{3.7098502404140387`*^9, 3.709850244719928*^9}}],

Cell[BoxData["8117"], "Output",
 CellChangeTimes->{3.7098502454320745`*^9, 3.7098503955290947`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"ANOVA", "[", 
  RowBox[{
   RowBox[{"Transpose", "[", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"Delete", "[", 
       RowBox[{"flightMerRx", ",", "pos5"}], "]"}], ",", "standardized"}], 
     "}"}], "]"}], ",", 
   RowBox[{"PostTests", "\[Rule]", "Bonferroni"}], ",", 
   RowBox[{"CellMeans", "\[Rule]", "True"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.7096933858543315`*^9, 3.70969342010635*^9}, {
   3.7096944965189037`*^9, 3.709694499229458*^9}, {3.709695465813506*^9, 
   3.7096954690941787`*^9}, {3.709755139028927*^9, 3.7097551401961656`*^9}, {
   3.7097758340258656`*^9, 3.709775836796435*^9}, {3.7098486740753546`*^9, 
   3.7098486820680065`*^9}, {3.709848751078267*^9, 3.7098487679487534`*^9}, {
   3.70984986737495*^9, 3.7098498946855936`*^9}, {3.7098500837406616`*^9, 
   3.709850140442379*^9}, 3.709850183529282*^9, {3.70985030454329*^9, 
   3.7098503212517433`*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"ANOVA", "\[Rule]", 
    InterpretationBox[GridBox[{
       {"\<\"\"\>", "\<\"DF\"\>", "\<\"SumOfSq\"\>", "\<\"MeanSq\"\>", \
"\<\"FRatio\"\>", "\<\"PValue\"\>"},
       {"\<\"Model\"\>", "1", "0.05391489074736455`", "0.05391489074736455`", 
        "0.053908605826941444`", "0.8164023039129442`"},
       {"\<\"Error\"\>", "8115", "8115.9460851092535`", 
        "1.0001165847331182`", "\<\"\"\>", "\<\"\"\>"},
       {"\<\"Total\"\>", "8116", "8116.`", "\<\"\"\>", "\<\"\"\>", "\<\"\"\>"}
      },
      GridBoxAlignment->{
       "Columns" -> {{Left}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
        "RowsIndexed" -> {}},
      GridBoxSpacings->{"Columns" -> {
          Offset[0.27999999999999997`], {
           Offset[2.0999999999999996`]}, 
          Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
          Offset[0.2], {
           Offset[0.4]}, 
          Offset[0.2]}, "RowsIndexed" -> {}}],
     TableForm[{{
       1, 0.05391489074736455, 0.05391489074736455, 0.053908605826941444`, 
        0.8164023039129442}, {
       8115, 8115.9460851092535`, 1.0001165847331182`}, {8116, 8116.}}, 
      TableHeadings -> {{"Model", "Error", "Total"}, {
        "DF", "SumOfSq", "MeanSq", "FRatio", "PValue"}}]]}], ",", 
   RowBox[{"CellMeans", "\[Rule]", 
    TagBox[GridBox[{
       {"\<\"All\"\>", 
        RowBox[{"-", "1.8083582239206705`*^-14"}]},
       {
        RowBox[{"\<\"Model\"\>", "[", "\<\"prograde\"\>", "]"}], 
        "0.001248603951177327`"},
       {
        RowBox[{"\<\"Model\"\>", "[", "\<\"retrograde\"\>", "]"}], 
        RowBox[{"-", "0.005319716380553579`"}]}
      },
      GridBoxAlignment->{
       "Columns" -> {{Left}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
        "RowsIndexed" -> {}},
      GridBoxSpacings->{"Columns" -> {
          Offset[0.27999999999999997`], {
           Offset[2.0999999999999996`]}, 
          Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
          Offset[0.2], {
           Offset[0.4]}, 
          Offset[0.2]}, "RowsIndexed" -> {}}],
     Function[BoxForm`e$, 
      TableForm[BoxForm`e$]]]}], ",", 
   RowBox[{"PostTests", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"\<\"Model\"\>", "\[Rule]", 
      TagBox[GridBox[{
         {"Bonferroni", 
          RowBox[{"{", "\<\"\"\>", "}"}]}
        },
        GridBoxAlignment->{
         "Columns" -> {{Left}}, "ColumnsIndexed" -> {}, 
          "Rows" -> {{Baseline}}, "RowsIndexed" -> {}},
        GridBoxSpacings->{"Columns" -> {
            Offset[0.27999999999999997`], {
             Offset[0.7]}, 
            Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
            Offset[0.2], {
             Offset[1.2]}, 
            Offset[0.2]}, "RowsIndexed" -> {}}],
       Function[BoxForm`e$, 
        TableForm[BoxForm`e$, TableSpacing -> {3, 1}, TableDepth -> 2]]]}], 
     "}"}]}]}], "}"}]], "Output",
 CellChangeTimes->{
  3.7095953141562967`*^9, 3.7096934208004923`*^9, 3.709694499920599*^9, 
   3.709695469764316*^9, 3.7097809642828584`*^9, 3.709848667263949*^9, {
   3.7098487463432894`*^9, 3.709848769277028*^9}, {3.7098498954967613`*^9, 
   3.7098499107219067`*^9}, {3.7098501223326364`*^9, 3.709850141596617*^9}, 
   3.7098501842254305`*^9, 3.709850322011902*^9, 3.709850404232891*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{"Beep", "[", "]"}]], "Input",
 CellChangeTimes->{{3.7098199000606623`*^9, 3.709819901629984*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell["\<\
Similarly, acquire retrogression data of other planets day by day for 30 \
years, delete more missing entries, and run ANOVA and other tests \
\>", "Chapter",
 CellChangeTimes->{{3.7097452490540857`*^9, 3.7097453425092354`*^9}, 
   3.7097545197216516`*^9, {3.7097553395562496`*^9, 3.709755366620795*^9}, {
   3.7097553980042257`*^9, 3.7097554204478254`*^9}, {3.7098490922197647`*^9, 
   3.709849099739318*^9}, {3.709851200210597*^9, 3.7098512011027822`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"flightVenRx", "=", 
   RowBox[{
    RowBox[{
     RowBox[{"PlanetData", "[", 
      RowBox[{
       RowBox[{"Entity", "[", 
        RowBox[{"\"\<Planet\>\"", ",", " ", "\"\<Venus\>\""}], "]"}], ",", 
       RowBox[{"EntityProperty", "[", 
        RowBox[{
        "\"\<Planet\>\"", ",", "\"\<RetrogradeApparentMotionQuery\>\"", ",", 
         RowBox[{"{", 
          RowBox[{"\"\<Date\>\"", "\[Rule]", "#"}], "}"}]}], "]"}]}], "]"}], 
     "&"}], "/@", "dates"}]}], ";"}]], "Input",
 CellChangeTimes->{{3.7095945490185237`*^9, 3.709594569452712*^9}, {
  3.70975522672911*^9, 3.7097552459670515`*^9}}],

Cell[BoxData[
 TemplateBox[{
  "EntityValue","nodat",
   "\"Unable to download data. Some or all results may be missing.\"",2,64,38,
   15167133528138137613,"Kernel 2"},
  "MessageTemplate"]], "Message", "MSG",
 CellChangeTimes->{3.7098507345603714`*^9}],

Cell[BoxData[
 TemplateBox[{
  "EntityValue","nodat",
   "\"Unable to download data. Some or all results may be missing.\"",2,64,39,
   15167133528138137613,"Kernel 2"},
  "MessageTemplate"]], "Message", "MSG",
 CellChangeTimes->{3.7098525050202365`*^9}],

Cell[BoxData[
 TemplateBox[{
  "EntityValue","nodat",
   "\"Unable to download data. Some or all results may be missing.\"",2,64,40,
   15167133528138137613,"Kernel 2"},
  "MessageTemplate"]], "Message", "MSG",
 CellChangeTimes->{3.7098528651716614`*^9}],

Cell[BoxData[
 TemplateBox[{
  "General","stop",
   "\"Further output of \\!\\(\\*StyleBox[RowBox[{\\\"EntityValue\\\", \\\"::\
\\\", \\\"nodat\\\"}], \\\"MessageName\\\"]\\) will be suppressed during this \
calculation.\"",2,64,41,15167133528138137613,"Kernel 2"},
  "MessageTemplate"]], "Message", "MSG",
 CellChangeTimes->{3.709852865368702*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"Export", "[", 
   RowBox[{"\"\<22 yr VenRx.mx\>\"", ",", "flightVenRx"}], "]"}], 
  ";"}]], "Input",
 CellChangeTimes->{{3.7097554536026173`*^9, 3.709755458805684*^9}, {
  3.709755508496484*^9, 3.709755513531516*^9}, {3.7098140692696266`*^9, 
  3.709814069441662*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"flightMarRx", "=", 
   RowBox[{
    RowBox[{
     RowBox[{"PlanetData", "[", 
      RowBox[{
       TemplateBox[{"\"Mars\"",RowBox[{"Entity", "[", 
           RowBox[{"\"Planet\"", ",", "\"Mars\""}], "]"}],
         "\"Entity[\\\"Planet\\\", \\\"Mars\\\"]\"","\"planet\""},
        "Entity"], ",", 
       RowBox[{"EntityProperty", "[", 
        RowBox[{
        "\"\<Planet\>\"", ",", "\"\<RetrogradeApparentMotionQuery\>\"", ",", 
         RowBox[{"{", 
          RowBox[{"\"\<Date\>\"", "\[Rule]", "#"}], "}"}]}], "]"}]}], "]"}], 
     "&"}], "/@", "dates"}]}], ";"}]], "Input",
 CellChangeTimes->{{3.709594635420227*^9, 3.709594654341104*^9}}],

Cell[BoxData[
 TemplateBox[{
  "EntityValue","nodat",
   "\"Unable to download data. Some or all results may be missing.\"",2,66,42,
   15167133528138137613,"Kernel 2"},
  "MessageTemplate"]], "Message", "MSG",
 CellChangeTimes->{3.709862947431444*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"Export", "[", 
   RowBox[{"\"\<22 yr MarRx.mx\>\"", ",", "flightMarRx"}], "]"}], 
  ";"}]], "Input",
 CellChangeTimes->{{3.7097554731752467`*^9, 3.7097554787203827`*^9}, {
  3.7097555183355002`*^9, 3.709755520417927*^9}, {3.709814075218845*^9, 
  3.709814075396881*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"flightJupRx", "=", 
   RowBox[{
    RowBox[{
     RowBox[{"PlanetData", "[", 
      RowBox[{
       TemplateBox[{"\"Jupiter\"",RowBox[{"Entity", "[", 
           RowBox[{"\"Planet\"", ",", "\"Jupiter\""}], "]"}],
         "\"Entity[\\\"Planet\\\", \\\"Jupiter\\\"]\"","\"planet\""},
        "Entity"], ",", 
       RowBox[{"EntityProperty", "[", 
        RowBox[{
        "\"\<Planet\>\"", ",", "\"\<RetrogradeApparentMotionQuery\>\"", ",", 
         RowBox[{"{", 
          RowBox[{"\"\<Date\>\"", "\[Rule]", "#"}], "}"}]}], "]"}]}], "]"}], 
     "&"}], "/@", "dates"}]}], ";"}]], "Input",
 CellChangeTimes->{{3.7095946707884736`*^9, 3.709594701100684*^9}}],

Cell[BoxData[
 TemplateBox[{
  "EntityValue","nodat",
   "\"Unable to download data. Some or all results may be missing.\"",2,68,43,
   15167133528138137613,"Kernel 2"},
  "MessageTemplate"]], "Message", "MSG",
 CellChangeTimes->{3.7098693322113066`*^9}],

Cell[BoxData[
 TemplateBox[{
  "EntityValue","nodat",
   "\"Unable to download data. Some or all results may be missing.\"",2,68,44,
   15167133528138137613,"Kernel 2"},
  "MessageTemplate"]], "Message", "MSG",
 CellChangeTimes->{3.7098693893261085`*^9}],

Cell[BoxData[
 TemplateBox[{
  "EntityValue","nodat",
   "\"Unable to download data. Some or all results may be missing.\"",2,68,45,
   15167133528138137613,"Kernel 2"},
  "MessageTemplate"]], "Message", "MSG",
 CellChangeTimes->{3.7098694804519396`*^9}],

Cell[BoxData[
 TemplateBox[{
  "General","stop",
   "\"Further output of \\!\\(\\*StyleBox[RowBox[{\\\"EntityValue\\\", \\\"::\
\\\", \\\"nodat\\\"}], \\\"MessageName\\\"]\\) will be suppressed during this \
calculation.\"",2,68,46,15167133528138137613,"Kernel 2"},
  "MessageTemplate"]], "Message", "MSG",
 CellChangeTimes->{3.709869480650982*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"Export", "[", 
   RowBox[{"\"\<22 yr JupRx.mx\>\"", ",", "flightJupRx"}], "]"}], 
  ";"}]], "Input",
 CellChangeTimes->{{3.7097554947366643`*^9, 3.7097555262971325`*^9}, {
  3.7098140810590415`*^9, 3.709814081221074*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"flightSatRx", "=", 
   RowBox[{
    RowBox[{
     RowBox[{"PlanetData", "[", 
      RowBox[{
       TemplateBox[{"\"Saturn\"",RowBox[{"Entity", "[", 
           RowBox[{"\"Planet\"", ",", "\"Saturn\""}], "]"}],
         "\"Entity[\\\"Planet\\\", \\\"Saturn\\\"]\"","\"planet\""},
        "Entity"], ",", 
       RowBox[{"EntityProperty", "[", 
        RowBox[{
        "\"\<Planet\>\"", ",", "\"\<RetrogradeApparentMotionQuery\>\"", ",", 
         RowBox[{"{", 
          RowBox[{"\"\<Date\>\"", "\[Rule]", "#"}], "}"}]}], "]"}]}], "]"}], 
     "&"}], "/@", "dates"}]}], ";"}]], "Input",
 CellChangeTimes->{{3.709594743319336*^9, 3.7095947684044733`*^9}, {
  3.709850483358243*^9, 3.7098504844054585`*^9}}],

Cell[BoxData[
 TemplateBox[{
  "EntityValue","nodat",
   "\"Unable to download data. Some or all results may be missing.\"",2,70,47,
   15167133528138137613,"Kernel 2"},
  "MessageTemplate"]], "Message", "MSG",
 CellChangeTimes->{3.7098772065975447`*^9}],

Cell[BoxData[
 TemplateBox[{
  "EntityValue","nodat",
   "\"Unable to download data. Some or all results may be missing.\"",2,70,48,
   15167133528138137613,"Kernel 2"},
  "MessageTemplate"]], "Message", "MSG",
 CellChangeTimes->{3.7098798206207323`*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"Export", "[", 
   RowBox[{"\"\<22 yr SatRx.mx\>\"", ",", "flightSatRx"}], "]"}], 
  ";"}]], "Input",
 CellChangeTimes->{{3.7097555353289833`*^9, 3.7097555466333017`*^9}, {
  3.709814086788215*^9, 3.7098140869712534`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"flightUraRx", "=", 
   RowBox[{
    RowBox[{
     RowBox[{"PlanetData", "[", 
      RowBox[{
       TemplateBox[{"\"Uranus\"",RowBox[{"Entity", "[", 
           RowBox[{"\"Planet\"", ",", "\"Uranus\""}], "]"}],
         "\"Entity[\\\"Planet\\\", \\\"Uranus\\\"]\"","\"planet\""},
        "Entity"], ",", 
       RowBox[{"EntityProperty", "[", 
        RowBox[{
        "\"\<Planet\>\"", ",", "\"\<RetrogradeApparentMotionQuery\>\"", ",", 
         RowBox[{"{", 
          RowBox[{"\"\<Date\>\"", "\[Rule]", "#"}], "}"}]}], "]"}]}], "]"}], 
     "&"}], "/@", "dates"}]}], ";"}]], "Input",
 CellChangeTimes->{{3.7097552723269324`*^9, 3.7097552808726826`*^9}}],

Cell[BoxData[
 TemplateBox[{
  "EntityValue","nodat",
   "\"Unable to download data. Some or all results may be missing.\"",2,72,49,
   15167133528138137613,"Kernel 2"},
  "MessageTemplate"]], "Message", "MSG",
 CellChangeTimes->{3.7098847189162703`*^9}],

Cell[BoxData[
 TemplateBox[{
  "EntityValue","nodat",
   "\"Unable to download data. Some or all results may be missing.\"",2,72,50,
   15167133528138137613,"Kernel 2"},
  "MessageTemplate"]], "Message", "MSG",
 CellChangeTimes->{3.709885332252799*^9}],

Cell[BoxData[
 TemplateBox[{
  "EntityValue","nodat",
   "\"Unable to download data. Some or all results may be missing.\"",2,72,51,
   15167133528138137613,"Kernel 2"},
  "MessageTemplate"]], "Message", "MSG",
 CellChangeTimes->{3.709885336188612*^9}],

Cell[BoxData[
 TemplateBox[{
  "General","stop",
   "\"Further output of \\!\\(\\*StyleBox[RowBox[{\\\"EntityValue\\\", \\\"::\
\\\", \\\"nodat\\\"}], \\\"MessageName\\\"]\\) will be suppressed during this \
calculation.\"",2,72,52,15167133528138137613,"Kernel 2"},
  "MessageTemplate"]], "Message", "MSG",
 CellChangeTimes->{3.709885336390654*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"Export", "[", 
   RowBox[{"\"\<22 yr UraRx.mx\>\"", ",", "flightUraRx"}], "]"}], 
  ";"}]], "Input",
 CellChangeTimes->{{3.709755554368883*^9, 3.709755563568768*^9}, {
  3.7098140967722616`*^9, 3.7098140969603014`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"flightNepRx", "=", 
   RowBox[{
    RowBox[{
     RowBox[{"PlanetData", "[", 
      RowBox[{
       TemplateBox[{"\"Neptune\"",RowBox[{"Entity", "[", 
           RowBox[{"\"Planet\"", ",", "\"Neptune\""}], "]"}],
         "\"Entity[\\\"Planet\\\", \\\"Neptune\\\"]\"","\"planet\""},
        "Entity"], ",", 
       RowBox[{"EntityProperty", "[", 
        RowBox[{
        "\"\<Planet\>\"", ",", "\"\<RetrogradeApparentMotionQuery\>\"", ",", 
         RowBox[{"{", 
          RowBox[{"\"\<Date\>\"", "\[Rule]", "#"}], "}"}]}], "]"}]}], "]"}], 
     "&"}], "/@", "dates"}]}], ";"}]], "Input",
 CellChangeTimes->{{3.7099064333034267`*^9, 3.7099064582325773`*^9}}],

Cell[BoxData[
 TemplateBox[{
  "EntityValue","nodat",
   "\"Unable to download data. Some or all results may be missing.\"",2,7,1,
   15167506970941007129,"Kernel 2"},
  "MessageTemplate"]], "Message", "MSG",
 CellChangeTimes->{3.709909576389783*^9}],

Cell[BoxData[
 TemplateBox[{
  "EntityValue","nodat",
   "\"Unable to download data. Some or all results may be missing.\"",2,7,2,
   15167506970941007129,"Kernel 2"},
  "MessageTemplate"]], "Message", "MSG",
 CellChangeTimes->{3.7099096819215918`*^9}],

Cell[BoxData[
 TemplateBox[{
  "EntityValue","nodat",
   "\"Unable to download data. Some or all results may be missing.\"",2,7,3,
   15167506970941007129,"Kernel 2"},
  "MessageTemplate"]], "Message", "MSG",
 CellChangeTimes->{3.7099097439584117`*^9}],

Cell[BoxData[
 TemplateBox[{
  "General","stop",
   "\"Further output of \\!\\(\\*StyleBox[RowBox[{\\\"EntityValue\\\", \\\"::\
\\\", \\\"nodat\\\"}], \\\"MessageName\\\"]\\) will be suppressed during this \
calculation.\"",2,7,4,15167506970941007129,"Kernel 2"},
  "MessageTemplate"]], "Message", "MSG",
 CellChangeTimes->{3.709909744158454*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"Export", "[", 
   RowBox[{"\"\<22 yr NepRx.mx\>\"", ",", "flightNepRx"}], "]"}], 
  ";"}]], "Input",
 CellChangeTimes->{{3.709906490065156*^9, 3.709906496632513*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"flightPluRx", "=", 
   RowBox[{
    RowBox[{
     RowBox[{"MinorPlanetData", "[", 
      RowBox[{
       TemplateBox[{"\"Pluto\"",RowBox[{"Entity", "[", 
           RowBox[{"\"MinorPlanet\"", ",", "\"Pluto\""}], "]"}],
         "\"Entity[\\\"MinorPlanet\\\", \\\"Pluto\\\"]\"","\"minor planet\""},
        "Entity"], ",", 
       RowBox[{"EntityProperty", "[", 
        RowBox[{
        "\"\<MinorPlanet\>\"", ",", "\"\<RetrogradeApparentMotionQuery\>\"", 
         ",", 
         RowBox[{"{", 
          RowBox[{"\"\<Date\>\"", "\[Rule]", "#"}], "}"}]}], "]"}]}], "]"}], 
     "&"}], "/@", "dates"}]}], ";"}]], "Input",
 CellChangeTimes->{{3.709755301958617*^9, 3.7097553320627146`*^9}}],

Cell[BoxData[
 TemplateBox[{
  "EntityValue","nodat",
   "\"Unable to download data. Some or all results may be missing.\"",2,74,53,
   15167133528138137613,"Kernel 2"},
  "MessageTemplate"]], "Message", "MSG",
 CellChangeTimes->{3.709895412423176*^9}],

Cell[BoxData[
 TemplateBox[{
  "EntityValue","nodat",
   "\"Unable to download data. Some or all results may be missing.\"",2,74,54,
   15167133528138137613,"Kernel 2"},
  "MessageTemplate"]], "Message", "MSG",
 CellChangeTimes->{3.709895413446387*^9}],

Cell[BoxData[
 TemplateBox[{
  "EntityValue","nodat",
   "\"Unable to download data. Some or all results may be missing.\"",2,74,55,
   15167133528138137613,"Kernel 2"},
  "MessageTemplate"]], "Message", "MSG",
 CellChangeTimes->{3.70990042201077*^9}],

Cell[BoxData[
 TemplateBox[{
  "General","stop",
   "\"Further output of \\!\\(\\*StyleBox[RowBox[{\\\"EntityValue\\\", \\\"::\
\\\", \\\"nodat\\\"}], \\\"MessageName\\\"]\\) will be suppressed during this \
calculation.\"",2,74,56,15167133528138137613,"Kernel 2"},
  "MessageTemplate"]], "Message", "MSG",
 CellChangeTimes->{3.709900422025771*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"Export", "[", 
   RowBox[{"\"\<22 yr PluRx.mx\>\"", ",", "flightPluRx"}], "]"}], 
  ";"}]], "Input",
 CellChangeTimes->{{3.7097555736168265`*^9, 3.709755584037962*^9}, {
  3.709814109036774*^9, 3.7098141092028084`*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"flightMerRx", "=", 
   RowBox[{"Import", "[", "\"\<22 yrs MerRx.mx\>\"", "]"}]}], ";"}]], "Input",
 CellChangeTimes->{{3.709906514395184*^9, 3.7099065220277605`*^9}, 
   3.7099065673531275`*^9}],

Cell[BoxData[
 RowBox[{
  RowBox[{"flightVenRx", "=", 
   RowBox[{"Import", "[", "\"\<22 yr VenRx.mx\>\"", "]"}]}], ";"}]], "Input",
 CellChangeTimes->{{3.7099065811079693`*^9, 3.70990658870654*^9}, 
   3.7099149309604053`*^9}],

Cell[BoxData[
 RowBox[{
  RowBox[{"flightMarRx", "=", 
   RowBox[{"Import", "[", "\"\<22 yr MarRx.mx\>\"", "]"}]}], ";"}]], "Input",
 CellChangeTimes->{{3.7099066103040032`*^9, 3.709906615736126*^9}, 
   3.7099149352383604`*^9}],

Cell[BoxData[
 RowBox[{
  RowBox[{"flightJupRx", "=", 
   RowBox[{"Import", "[", "\"\<22 yr JupRx.mx\>\"", "]"}]}], ";"}]], "Input",
 CellChangeTimes->{{3.709906622943615*^9, 3.709906629520975*^9}, 
   3.709914938728982*^9}],

Cell[BoxData[
 RowBox[{
  RowBox[{"flightSatRx", "=", 
   RowBox[{"Import", "[", "\"\<22 yr SatRx.mx\>\"", "]"}]}], ";"}]], "Input",
 CellChangeTimes->{{3.7099066382887864`*^9, 3.7099066432928205`*^9}, 
   3.7099149428908253`*^9}],

Cell[BoxData[
 RowBox[{
  RowBox[{"flightUraRx", "=", 
   RowBox[{"Import", "[", "\"\<22 yr UraRx.mx\>\"", "]"}]}], ";"}]], "Input",
 CellChangeTimes->{{3.7099066513274803`*^9, 3.70990665693664*^9}, 
   3.7099149492742205`*^9}],

Cell[BoxData[
 RowBox[{
  RowBox[{"flightNepRx", "=", 
   RowBox[{"Import", "[", "\"\<22 yr NepRx.mx\>\"", "]"}]}], ";"}]], "Input",
 CellChangeTimes->{{3.709906664154132*^9, 3.7099066697002788`*^9}, 
   3.7099149528778543`*^9}],

Cell[BoxData[
 RowBox[{
  RowBox[{"flightPluRx", "=", 
   RowBox[{"Import", "[", "\"\<22 yr PluRx.mx\>\"", "]"}]}], ";"}]], "Input",
 CellChangeTimes->{{3.7099066780239973`*^9, 3.7099066842932935`*^9}, 
   3.709914956582607*^9}],

Cell[BoxData[
 RowBox[{
  RowBox[{"fulldata", "=", 
   RowBox[{"Table", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"flightMerRx", "[", 
        RowBox[{"[", "i", "]"}], "]"}], ",", 
       RowBox[{"flightVenRx", "[", 
        RowBox[{"[", "i", "]"}], "]"}], ",", 
       RowBox[{"flightMarRx", "[", 
        RowBox[{"[", "i", "]"}], "]"}], ",", 
       RowBox[{"flightJupRx", "[", 
        RowBox[{"[", "i", "]"}], "]"}], ",", 
       RowBox[{"flightSatRx", "[", 
        RowBox[{"[", "i", "]"}], "]"}], ",", 
       RowBox[{"flightUraRx", "[", 
        RowBox[{"[", "i", "]"}], "]"}], ",", 
       RowBox[{"flightNepRx", "[", 
        RowBox[{"[", "i", "]"}], "]"}], ",", 
       RowBox[{"flightPluRx", "[", 
        RowBox[{"[", "i", "]"}], "]"}], ",", 
       RowBox[{"Log", "[", 
        RowBox[{"years0", "[", 
         RowBox[{"[", 
          RowBox[{"i", ",", "2"}], "]"}], "]"}], "]"}]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"i", ",", "1", ",", 
       RowBox[{"Length", "[", "dates", "]"}]}], "}"}]}], "]"}]}], 
  ";"}]], "Input",
 CellChangeTimes->{{3.709594850158225*^9, 3.709594992002289*^9}, {
   3.709595090805534*^9, 3.7095950915016747`*^9}, {3.70975561004129*^9, 
   3.7097556175098205`*^9}, 3.709779770761505*^9, {3.709782498806676*^9, 
   3.7097825225425396`*^9}, {3.7098714578595705`*^9, 3.709871471048296*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"fulldata", "//", "Short"}]], "Input",
 CellChangeTimes->{{3.7097556245162573`*^9, 3.7097556284560647`*^9}}],

Cell[BoxData[
 TagBox[
  RowBox[{"{", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"\<\"retrograde\"\>", ",", "\<\"prograde\"\>", 
      ",", "\<\"prograde\"\>", ",", "\<\"retrograde\"\>", 
      ",", "\<\"prograde\"\>", ",", "\<\"prograde\"\>", 
      ",", "\<\"prograde\"\>", ",", "\<\"prograde\"\>", ",", 
      RowBox[{"-", "5.144108545495726`"}]}], "}"}], ",", 
    RowBox[{"\[LeftSkeleton]", "8126", "\[RightSkeleton]"}], ",", 
    RowBox[{"{", 
     RowBox[{"\<\"prograde\"\>", ",", "\<\"prograde\"\>", 
      ",", "\<\"prograde\"\>", ",", "\<\"prograde\"\>", 
      ",", "\<\"prograde\"\>", ",", "\<\"prograde\"\>", 
      ",", "\<\"prograde\"\>", ",", "\<\"prograde\"\>", ",", 
      RowBox[{"-", "4.451651490324811`"}]}], "}"}]}], "}"}],
  Short]], "Output",
 CellChangeTimes->{3.7099029523674445`*^9, 3.7099138341667786`*^9, 
  3.709914962474804*^9, 3.7099150002264743`*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"pos5", "=", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", "1828", "}"}], ",", 
     RowBox[{"{", "5603", "}"}], ",", 
     RowBox[{"{", "5605", "}"}], ",", 
     RowBox[{"{", "5606", "}"}], ",", 
     RowBox[{"{", "7694", "}"}], ",", 
     RowBox[{"{", "7696", "}"}], ",", 
     RowBox[{"{", "7972", "}"}], ",", 
     RowBox[{"{", "5095", "}"}], ",", 
     RowBox[{"{", "5096", "}"}], ",", 
     RowBox[{"{", "5094", "}"}], ",", 
     RowBox[{"{", "5097", "}"}]}], "}"}]}], ";"}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Export", "[", 
  RowBox[{
  "\"\<22 yrs flight cancellation full data.mx\>\"", ",", "fulldata"}], 
  "]"}]], "Input",
 CellChangeTimes->{{3.709593086009759*^9, 3.7095931028552103`*^9}, {
  3.7095950872468033`*^9, 3.7095951082941217`*^9}, {3.7097556350834217`*^9, 
  3.7097556366497464`*^9}, {3.7098141185257187`*^9, 3.709814119085832*^9}}],

Cell[BoxData["\<\"22 yrs flight cancellation full data.mx\"\>"], "Output",
 CellChangeTimes->{3.7095931047886066`*^9, 3.7095955517899876`*^9, 
  3.7099029524764676`*^9, 3.7099138343528156`*^9, 3.709915007418934*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"alldeletes", "=", 
  RowBox[{"Union", "[", 
   RowBox[{"pos5", ",", 
    RowBox[{"Position", "[", 
     RowBox[{"flightVenRx", ",", "_Missing"}], "]"}], ",", 
    RowBox[{"Position", "[", 
     RowBox[{"flightMarRx", ",", "_Missing"}], "]"}], ",", 
    RowBox[{"Position", "[", 
     RowBox[{"flightJupRx", ",", "_Missing"}], "]"}], ",", 
    RowBox[{"Position", "[", 
     RowBox[{"flightSatRx", ",", "_Missing"}], "]"}], ",", 
    RowBox[{"Position", "[", 
     RowBox[{"flightUraRx", ",", "_Missing"}], "]"}], ",", 
    RowBox[{"Position", "[", 
     RowBox[{"flightNepRx", ",", "_Missing"}], "]"}], ",", 
    RowBox[{"Position", "[", 
     RowBox[{"flightPluRx", ",", "_Missing"}], "]"}]}], "]"}]}]], "Input",
 CellChangeTimes->{{3.709871191401507*^9, 3.7098713335848894`*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", "59", "}"}], ",", 
   RowBox[{"{", "227", "}"}], ",", 
   RowBox[{"{", "626", "}"}], ",", 
   RowBox[{"{", "630", "}"}], ",", 
   RowBox[{"{", "1036", "}"}], ",", 
   RowBox[{"{", "1205", "}"}], ",", 
   RowBox[{"{", "1250", "}"}], ",", 
   RowBox[{"{", "1746", "}"}], ",", 
   RowBox[{"{", "1747", "}"}], ",", 
   RowBox[{"{", "1828", "}"}], ",", 
   RowBox[{"{", "2081", "}"}], ",", 
   RowBox[{"{", "2108", "}"}], ",", 
   RowBox[{"{", "2193", "}"}], ",", 
   RowBox[{"{", "2194", "}"}], ",", 
   RowBox[{"{", "2197", "}"}], ",", 
   RowBox[{"{", "2209", "}"}], ",", 
   RowBox[{"{", "2552", "}"}], ",", 
   RowBox[{"{", "2896", "}"}], ",", 
   RowBox[{"{", "3013", "}"}], ",", 
   RowBox[{"{", "3016", "}"}], ",", 
   RowBox[{"{", "3638", "}"}], ",", 
   RowBox[{"{", "3726", "}"}], ",", 
   RowBox[{"{", "3854", "}"}], ",", 
   RowBox[{"{", "3921", "}"}], ",", 
   RowBox[{"{", "3948", "}"}], ",", 
   RowBox[{"{", "4262", "}"}], ",", 
   RowBox[{"{", "4300", "}"}], ",", 
   RowBox[{"{", "4992", "}"}], ",", 
   RowBox[{"{", "5094", "}"}], ",", 
   RowBox[{"{", "5095", "}"}], ",", 
   RowBox[{"{", "5096", "}"}], ",", 
   RowBox[{"{", "5097", "}"}], ",", 
   RowBox[{"{", "5225", "}"}], ",", 
   RowBox[{"{", "5376", "}"}], ",", 
   RowBox[{"{", "5603", "}"}], ",", 
   RowBox[{"{", "5605", "}"}], ",", 
   RowBox[{"{", "5606", "}"}], ",", 
   RowBox[{"{", "5627", "}"}], ",", 
   RowBox[{"{", "5849", "}"}], ",", 
   RowBox[{"{", "6226", "}"}], ",", 
   RowBox[{"{", "6994", "}"}], ",", 
   RowBox[{"{", "7379", "}"}], ",", 
   RowBox[{"{", "7418", "}"}], ",", 
   RowBox[{"{", "7458", "}"}], ",", 
   RowBox[{"{", "7694", "}"}], ",", 
   RowBox[{"{", "7696", "}"}], ",", 
   RowBox[{"{", "7805", "}"}], ",", 
   RowBox[{"{", "7806", "}"}], ",", 
   RowBox[{"{", "7808", "}"}], ",", 
   RowBox[{"{", "7809", "}"}], ",", 
   RowBox[{"{", "7877", "}"}], ",", 
   RowBox[{"{", "7972", "}"}], ",", 
   RowBox[{"{", "8037", "}"}], ",", 
   RowBox[{"{", "8085", "}"}], ",", 
   RowBox[{"{", "8086", "}"}]}], "}"}]], "Output",
 CellChangeTimes->{3.7099029528905535`*^9, 3.7099138343788223`*^9, 
  3.709915010917647*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Length", "[", "alldeletes", "]"}]], "Input",
 CellChangeTimes->{{3.7098713379887996`*^9, 3.7098713445391536`*^9}}],

Cell[BoxData["55"], "Output",
 CellChangeTimes->{3.709902952944565*^9, 3.7099138344048266`*^9, 
  3.7099150137312174`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"ListPlot", "[", 
  RowBox[{"Flatten", "[", "alldeletes", "]"}], "]"}]], "Input",
 CellChangeTimes->{{3.709920075373449*^9, 3.7099200944053144`*^9}}],

Cell[BoxData[
 GraphicsBox[{{}, {{}, 
    {RGBColor[0.368417, 0.506779, 0.709798], PointSize[0.011000000000000001`],
      AbsoluteThickness[1.6], PointBox[CompressedData["
1:eJw1zjlLA1EYheGLlZWksLBIoWEQCSJxjXvGuMWtyS8QIYUQsLVRRmzEKkS0
0SIqxEYl4ILgksrOTgutxahdam1czvsNXF6eOTB3mhaW0pka51z89/xVTzXx
n2DO54U6n8W1am4dh9SSuV6N5XCD+pTHYXVjCzeqqV0cUWfNHvft4WY1WcAt
6rI5qkb2cavqmdvUqDnG98ztavUQd6iFIu5UN49wF/9n7lazx7hHDZ/gOD7F
veqBuU99NverxRIeUB/Mg2pwhofUinlYfTcn1A+zr37iAC+es4/QC3b8il1S
fbMdV2wfVb9txy+X7GNq+ordfM0+rj7esOMv7CbUyC07rrtjn1RDOMArtqfU
VdtxYPuUumY7vrd9WvXK7DiD3Yy6bTveKfs/pzhxOQ==
      "]]}, {}}, {}, {}, {{}, {}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{None, None},
  AxesOrigin->{0., 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  Method->{"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Part[{{Identity, Identity}, {Identity, Identity}}, 1, 2][#]& )[
         Part[#, 1]], 
        (Part[{{Identity, Identity}, {Identity, Identity}}, 2, 2][#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Part[{{Identity, Identity}, {Identity, Identity}}, 1, 2][#]& )[
         Part[#, 1]], 
        (Part[{{Identity, Identity}, {Identity, Identity}}, 2, 2][#]& )[
         Part[#, 2]]}& )}},
  PlotRange->{{0., 55.}, {0, 8086.}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.02], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellChangeTimes->{{3.709920082900978*^9, 3.7099200949164205`*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"gb", "=", 
   RowBox[{"GatherBy", "[", 
    RowBox[{
     RowBox[{"Delete", "[", 
      RowBox[{"fulldata", ",", "alldeletes"}], "]"}], "[", 
     RowBox[{"[", 
      RowBox[{"All", ",", "1"}], "]"}], "]"}], "]"}]}], ";", 
  RowBox[{"ratioMer", "=", 
   RowBox[{"N", "[", 
    RowBox[{
     RowBox[{"Length", "[", 
      RowBox[{"gb", "[", 
       RowBox[{"[", "1", "]"}], "]"}], "]"}], "/", 
     RowBox[{"Length", "[", 
      RowBox[{"gb", "[", 
       RowBox[{"[", "2", "]"}], "]"}], "]"}]}], "]"}], " ", 
   RowBox[{"(*", 
    RowBox[{"MERCURY", " ", "RATIO"}], "*)"}]}]}]], "Input",
 CellChangeTimes->{{3.709906765934164*^9, 3.70990677776861*^9}, {
   3.7099154573473344`*^9, 3.7099155718826003`*^9}, {3.709915629585322*^9, 
   3.70991567614178*^9}, {3.709915844800041*^9, 3.7099158745660877`*^9}, 
   3.7099165463415546`*^9, 3.7099169187702093`*^9}],

Cell[BoxData["0.23497016980266178`"], "Output",
 CellChangeTimes->{{3.7099155540289736`*^9, 3.709915572865801*^9}, 
   3.7099156552015276`*^9, {3.7099158463803654`*^9, 3.709915875040184*^9}, 
   3.7099165470857053`*^9, 3.709916919472354*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"ratioMer", "/", 
  RowBox[{"(", 
   RowBox[{"1", "+", "ratioMer"}], ")"}]}]], "Input",
 CellChangeTimes->{{3.7099171704843435`*^9, 3.7099171857594476`*^9}}],

Cell[BoxData["0.1902638424377555`"], "Output",
 CellChangeTimes->{3.709917186585614*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"gb", "=", 
   RowBox[{"GatherBy", "[", 
    RowBox[{
     RowBox[{"Delete", "[", 
      RowBox[{"fulldata", ",", "alldeletes"}], "]"}], "[", 
     RowBox[{"[", 
      RowBox[{"All", ",", "2"}], "]"}], "]"}], "]"}]}], ";", 
  RowBox[{"ratioVen", "=", 
   RowBox[{"1", "/", 
    RowBox[{"N", "[", 
     RowBox[{
      RowBox[{"Length", "[", 
       RowBox[{"gb", "[", 
        RowBox[{"[", "1", "]"}], "]"}], "]"}], "/", 
      RowBox[{"Length", "[", 
       RowBox[{"gb", "[", 
        RowBox[{"[", "2", "]"}], "]"}], "]"}]}], "]"}], " ", 
    RowBox[{"(*", 
     RowBox[{"VENUS", " ", "RATIO"}], "*)"}]}]}]}]], "Input",
 CellChangeTimes->{{3.7099156797875204`*^9, 3.7099157409739504`*^9}, {
  3.7099159579230223`*^9, 3.7099159650264645`*^9}, {3.7099166138332653`*^9, 
  3.7099166473670774`*^9}}],

Cell[BoxData["0.0791338056409571`"], "Output",
 CellChangeTimes->{3.7099166480422144`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"ratioVen", "/", 
  RowBox[{"(", 
   RowBox[{"1", "+", "ratioVen"}], ")"}]}]], "Input",
 CellChangeTimes->{{3.7099172006954803`*^9, 3.7099172054804525`*^9}}],

Cell[BoxData["0.07333085593955159`"], "Output",
 CellChangeTimes->{3.7099172060625715`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"gb", "=", 
   RowBox[{"GatherBy", "[", 
    RowBox[{
     RowBox[{"Delete", "[", 
      RowBox[{"fulldata", ",", "alldeletes"}], "]"}], "[", 
     RowBox[{"[", 
      RowBox[{"All", ",", "3"}], "]"}], "]"}], "]"}]}], ";", 
  RowBox[{"ratioMar", "=", 
   RowBox[{"1", "/", 
    RowBox[{"N", "[", 
     RowBox[{
      RowBox[{"Length", "[", 
       RowBox[{"gb", "[", 
        RowBox[{"[", "1", "]"}], "]"}], "]"}], "/", 
      RowBox[{"Length", "[", 
       RowBox[{"gb", "[", 
        RowBox[{"[", "2", "]"}], "]"}], "]"}]}], "]"}], 
    RowBox[{"(*", 
     RowBox[{"MARS", " ", "RATIO"}], "*)"}]}]}]}]], "Input",
 CellChangeTimes->{{3.709915754485695*^9, 3.7099157740776744`*^9}, {
   3.709915970596596*^9, 3.709915972677019*^9}, 3.7099166598766174`*^9}],

Cell[BoxData["0.1018152040398526`"], "Output",
 CellChangeTimes->{{3.7099157548467703`*^9, 3.709915774629789*^9}, 
   3.7099159734111676`*^9, 3.7099166613939257`*^9, 3.709916931398776*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"ratioMar", "/", 
  RowBox[{"(", 
   RowBox[{"1", "+", "ratioMar"}], ")"}]}]], "Input",
 CellChangeTimes->{{3.7099172309466276`*^9, 3.7099172352965097`*^9}}],

Cell[BoxData["0.09240678805896198`"], "Output",
 CellChangeTimes->{3.7099172356965914`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"gb", "=", 
   RowBox[{"GatherBy", "[", 
    RowBox[{
     RowBox[{"Delete", "[", 
      RowBox[{"fulldata", ",", "alldeletes"}], "]"}], "[", 
     RowBox[{"[", 
      RowBox[{"All", ",", "4"}], "]"}], "]"}], "]"}]}], ";", 
  RowBox[{"ratioJup", "=", 
   RowBox[{"N", "[", 
    RowBox[{
     RowBox[{"Length", "[", 
      RowBox[{"gb", "[", 
       RowBox[{"[", "1", "]"}], "]"}], "]"}], "/", 
     RowBox[{"Length", "[", 
      RowBox[{"gb", "[", 
       RowBox[{"[", "2", "]"}], "]"}], "]"}]}], "]"}], 
   RowBox[{"(*", 
    RowBox[{"JUPITER", " ", "RATIO"}], "*)"}]}]}]], "Input",
 CellChangeTimes->{{3.7099157819282694`*^9, 3.709915795638054*^9}, {
   3.7099159801795425`*^9, 3.70991598090469*^9}, 3.709916928355158*^9}],

Cell[BoxData["0.4441860465116279`"], "Output",
 CellChangeTimes->{3.709915796117153*^9, 3.70991598148481*^9, 
  3.709916928896268*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"ratioJup", "/", 
  RowBox[{"(", 
   RowBox[{"1", "+", "ratioJup"}], ")"}]}]], "Input",
 CellChangeTimes->{{3.709917243431163*^9, 3.7099172489142766`*^9}}],

Cell[BoxData["0.30756843800322065`"], "Output",
 CellChangeTimes->{3.7099172495103984`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"gb", "=", 
   RowBox[{"GatherBy", "[", 
    RowBox[{
     RowBox[{"Delete", "[", 
      RowBox[{"fulldata", ",", "alldeletes"}], "]"}], "[", 
     RowBox[{"[", 
      RowBox[{"All", ",", "5"}], "]"}], "]"}], "]"}]}], ";", 
  RowBox[{"ratioSat", "=", 
   RowBox[{"1", "/", 
    RowBox[{"N", "[", 
     RowBox[{
      RowBox[{"Length", "[", 
       RowBox[{"gb", "[", 
        RowBox[{"[", "1", "]"}], "]"}], "]"}], "/", 
      RowBox[{"Length", "[", 
       RowBox[{"gb", "[", 
        RowBox[{"[", "2", "]"}], "]"}], "]"}]}], "]"}], 
    RowBox[{"(*", 
     RowBox[{"SATURN", " ", "RATIO"}], "*)"}]}]}]}]], "Input",
 CellChangeTimes->{{3.70991580309657*^9, 3.709915828030635*^9}, {
   3.7099159924720397`*^9, 3.70991599301015*^9}, 3.709916939332387*^9}],

Cell[BoxData["0.5453675344563553`"], "Output",
 CellChangeTimes->{{3.7099158214122925`*^9, 3.709915828835799*^9}, 
   3.7099159944274387`*^9, 3.7099169398404903`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"ratioSat", "/", 
  RowBox[{"(", 
   RowBox[{"1", "+", "ratioSat"}], ")"}]}]], "Input",
 CellChangeTimes->{{3.7099172612037725`*^9, 3.7099172654786406`*^9}}],

Cell[BoxData["0.35290474420909207`"], "Output",
 CellChangeTimes->{3.7099172661857843`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"gb", "=", 
   RowBox[{"GatherBy", "[", 
    RowBox[{
     RowBox[{"Delete", "[", 
      RowBox[{"fulldata", ",", "alldeletes"}], "]"}], "[", 
     RowBox[{"[", 
      RowBox[{"All", ",", "6"}], "]"}], "]"}], "]"}]}], ";", 
  RowBox[{"ratioUra", "=", 
   RowBox[{"1", "/", 
    RowBox[{"N", "[", 
     RowBox[{
      RowBox[{"Length", "[", 
       RowBox[{"gb", "[", 
        RowBox[{"[", "1", "]"}], "]"}], "]"}], "/", 
      RowBox[{"Length", "[", 
       RowBox[{"gb", "[", 
        RowBox[{"[", "2", "]"}], "]"}], "]"}]}], "]"}], 
    RowBox[{"(*", 
     RowBox[{"URANUS", " ", "RATIO"}], "*)"}]}]}]}]], "Input",
 CellChangeTimes->{
  3.7099159054363585`*^9, {3.709916039154523*^9, 3.7099160655268803`*^9}, {
   3.709916944063348*^9, 3.7099169447714915`*^9}}],

Cell[BoxData["0.7125583368689011`"], "Output",
 CellChangeTimes->{
  3.7099159068306465`*^9, {3.709916044674644*^9, 3.709916066321041*^9}, 
   3.7099169454736385`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"ratioUra", "/", 
  RowBox[{"(", 
   RowBox[{"1", "+", "ratioUra"}], ")"}]}]], "Input",
 CellChangeTimes->{{3.709917273315233*^9, 3.7099172791184115`*^9}}],

Cell[BoxData["0.416078285643503`"], "Output",
 CellChangeTimes->{3.7099172815489054`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"gb", "=", 
   RowBox[{"GatherBy", "[", 
    RowBox[{
     RowBox[{"Delete", "[", 
      RowBox[{"fulldata", ",", "alldeletes"}], "]"}], "[", 
     RowBox[{"[", 
      RowBox[{"All", ",", "7"}], "]"}], "]"}], "]"}]}], ";", 
  RowBox[{"ratioNep", "=", 
   RowBox[{"1", "/", 
    RowBox[{"N", "[", 
     RowBox[{
      RowBox[{"Length", "[", 
       RowBox[{"gb", "[", 
        RowBox[{"[", "1", "]"}], "]"}], "]"}], "/", 
      RowBox[{"Length", "[", 
       RowBox[{"gb", "[", 
        RowBox[{"[", "2", "]"}], "]"}], "]"}]}], "]"}], 
    RowBox[{"(*", 
     RowBox[{"NEPTUNE", " ", "RATIO"}], "*)"}]}]}]}]], "Input",
 CellChangeTimes->{{3.7099159146872387`*^9, 3.7099159245632443`*^9}, {
  3.7099160525452433`*^9, 3.709916074909786*^9}, {3.7099169496154757`*^9, 
  3.7099169502966137`*^9}}],

Cell[BoxData["0.762278978388998`"], "Output",
 CellChangeTimes->{3.7099159251143565`*^9, 3.709916075528964*^9, 
  3.7099169509967566`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"ratioNep", "/", 
  RowBox[{"(", 
   RowBox[{"1", "+", "ratioNep"}], ")"}]}]], "Input",
 CellChangeTimes->{{3.7099172901396503`*^9, 3.709917294962631*^9}}],

Cell[BoxData["0.43255295429208473`"], "Output",
 CellChangeTimes->{3.7099172954847374`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"gb", "=", 
   RowBox[{"GatherBy", "[", 
    RowBox[{
     RowBox[{"Delete", "[", 
      RowBox[{"fulldata", ",", "alldeletes"}], "]"}], "[", 
     RowBox[{"[", 
      RowBox[{"All", ",", "8"}], "]"}], "]"}], "]"}]}], ";", 
  RowBox[{"ratioPlu", "=", 
   RowBox[{"1", "/", 
    RowBox[{"N", "[", 
     RowBox[{
      RowBox[{"Length", "[", 
       RowBox[{"gb", "[", 
        RowBox[{"[", "1", "]"}], "]"}], "]"}], "/", 
      RowBox[{"Length", "[", 
       RowBox[{"gb", "[", 
        RowBox[{"[", "2", "]"}], "]"}], "]"}]}], "]"}], 
    RowBox[{"(*", 
     RowBox[{"SATURN", " ", "RATIO"}], "*)"}]}]}]}]], "Input",
 CellChangeTimes->{
  3.709915940130407*^9, {3.709916081126049*^9, 3.7099160818722005`*^9}, {
   3.709916955232617*^9, 3.7099169559297595`*^9}}],

Cell[BoxData["0.760741548527808`"], "Output",
 CellChangeTimes->{3.7099160826783657`*^9, 3.709916956513878*^9, 
  3.709917082770525*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"ratioPlu", "/", 
  RowBox[{"(", 
   RowBox[{"1", "+", "ratioPlu"}], ")"}]}]], "Input",
 CellChangeTimes->{{3.7099173032333107`*^9, 3.7099173083113437`*^9}}],

Cell[BoxData["0.43205747553573637`"], "Output",
 CellChangeTimes->{3.709917308921466*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{"Needs", "[", "\"\<ANOVA`\>\"", "]"}]], "Input",
 CellChangeTimes->{{3.7096509396258535`*^9, 3.709650961124258*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"ANOVA", "[", 
  RowBox[{
   RowBox[{"Delete", "[", 
    RowBox[{"fulldata", ",", "alldeletes"}], "]"}], ",", 
   RowBox[{"{", 
    RowBox[{
    "Mer", ",", "Ven", ",", "Mars", ",", "Jup", ",", "Sat", ",", "Ura", ",", 
     "Nep", ",", "Plu", ",", "All"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
    "Mer", ",", "Ven", ",", "Mars", ",", "Jup", ",", "Sat", ",", "Ura", ",", 
     "Nep", ",", "Plu"}], "}"}], ",", 
   RowBox[{"PostTests", "\[Rule]", "Bonferroni"}], ",", 
   RowBox[{"CellMeans", "\[Rule]", "False"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.709595026001254*^9, 3.7095950449971476`*^9}, {
  3.7095957166817713`*^9, 3.7095957177089834`*^9}, {3.7097557818835373`*^9, 
  3.7097558048336215`*^9}, {3.709871360892533*^9, 3.709871375077463*^9}}],

Cell[BoxData[
 TemplateBox[{
  "LinearModelFit","terms",
   "\"Only \\!\\(\\*RowBox[{\\\"86\\\"}]\\) terms are needed to represent all \
nominal values and continuous basis functions, which is fewer than the total \
number of nominal terms and continuous basis functions \
\\!\\(\\*RowBox[{\\\"256\\\"}]\\). A model for \
\\!\\(\\*RowBox[{\\\"86\\\"}]\\) terms of basis functions will be \
returned.\"",2,23,2,15167562623507322558,"Kernel 2"},
  "MessageTemplate"]], "Message", "MSG",
 CellChangeTimes->{3.7099153013986535`*^9}],

Cell[BoxData[
 TemplateBox[{
  "ANOVA","zerodf",
   "\"The model contains \\!\\(\\*RowBox[{\\\"170\\\"}]\\) \
\\!\\(\\*RowBox[{\\\"\\\\\\\"effects or interactions that \
have\\\\\\\"\\\"}]\\) zero degrees of freedom. \
\\!\\(\\*RowBox[{\\\"\\\\\\\"These terms\\\\\\\"\\\"}]\\) will be omitted \
from the ANOVA table.\"",2,23,3,15167562623507322558,"Kernel 2"},
  "MessageTemplate"]], "Message", "MSG",
 CellChangeTimes->{3.7099153030419874`*^9}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"ANOVA", "\[Rule]", 
    InterpretationBox[GridBox[{
       {"\<\"\"\>", "\<\"DF\"\>", "\<\"SumOfSq\"\>", "\<\"MeanSq\"\>", \
"\<\"FRatio\"\>", "\<\"PValue\"\>"},
       {"Mer", "1", "0.10725949670359114`", "0.10725949670359114`", 
        "0.16492406325958772`", "0.6846738059052846`"},
       {"Ven", "1", "1.8240870591607745`", "1.8240870591607745`", 
        "2.8047479130671205`", "0.09402476546079686`"},
       {"Mars", "1", "13.147169803554789`", "13.147169803554789`", 
        "20.215316414899938`", "7.017305372011215`*^-6"},
       {"Jup", "1", "0.253395224290216`", "0.253395224290216`", 
        "0.389624893691281`", "0.5325144673983991`"},
       {"Sat", "1", "28.911061086692825`", "28.911061086692825`", 
        "44.4541491812155`", "2.7769836912116158`*^-11"},
       {"Ura", "1", "132.99136761344016`", "132.99136761344016`", 
        "204.48983446072558`", "8.025985074852367`*^-46"},
       {"Nep", "1", "2.1150723674782057`", "2.1150723674782057`", 
        "3.2521719722082434`", "0.07136655097177505`"},
       {"Plu", "1", "64.90614823199758`", "64.90614823199758`", 
        "99.80081974962081`", "2.3100223134114305`*^-23"},
       {
        RowBox[{"Mer", " ", "Ven"}], "1", "32.81119236877839`", 
        "32.81119236877839`", "50.45105871422323`", 
        "1.3267507759877928`*^-12"},
       {
        RowBox[{"Mars", " ", "Mer"}], "1", "0.07091125302395085`", 
        "0.07091125302395085`", "0.10903437307614314`", "0.74125483804696`"},
       {
        RowBox[{"Jup", " ", "Mer"}], "1", "1.328546675990765`", 
        "1.328546675990765`", "2.042796421466706`", "0.15296739399516324`"},
       {
        RowBox[{"Mer", " ", "Sat"}], "1", "2.931711832446126`", 
        "2.931711832446126`", "4.5078509835767155`", "0.033770271036131776`"},
       {
        RowBox[{"Mer", " ", "Ura"}], "1", "0.4025707829896419`", 
        "0.4025707829896419`", "0.6189998211880715`", "0.4314425449506605`"},
       {
        RowBox[{"Mer", " ", "Nep"}], "1", "6.76633658819992`", 
        "6.76633658819992`", "10.404036545051067`", "0.0012624650768395043`"},
       {
        RowBox[{"Mer", " ", "Plu"}], "1", "1.998624448321607`", 
        "1.998624448321607`", "3.073119631150715`", "0.07963495235968901`"},
       {
        RowBox[{"Mars", " ", "Ven"}], "1", "1.2279475989726052`", 
        "1.2279475989726052`", "1.8881135350846405`", "0.16945340753621196`"},
       {
        RowBox[{"Jup", " ", "Ven"}], "1", "21.0510473678587`", 
        "21.0510473678587`", "32.368455703009715`", "1.3204386692442287`*^-8"},
       {
        RowBox[{"Sat", " ", "Ven"}], "1", "68.70358071466762`", 
        "68.70358071466762`", "105.63981782665466`", 
        "1.2584411442742702`*^-24"},
       {
        RowBox[{"Ura", " ", "Ven"}], "1", "0.05754314936075389`", 
        "0.05754314936075389`", "0.08847934492509266`", "0.7661270642887444`"},
       {
        RowBox[{"Nep", " ", "Ven"}], "1", "4.168498974472641`", 
        "4.168498974472641`", "6.409556353441614`", "0.011369789253135792`"},
       {
        RowBox[{"Plu", " ", "Ven"}], "1", "1.9510044992975963`", 
        "1.9510044992975963`", "2.999898371247196`", "0.08330834803856449`"},
       {
        RowBox[{"Jup", " ", "Mars"}], "1", "49.66205116493438`", 
        "49.66205116493438`", "76.3612315892239`", "2.845632771581331`*^-18"},
       {
        RowBox[{"Mars", " ", "Sat"}], "1", "6.853910851932596`", 
        "6.853910851932596`", "10.538692252523505`", "0.0011738319231161976`"},
       {
        RowBox[{"Mars", " ", "Ura"}], "1", "2.9027193887241083`", 
        "2.9027193887241083`", "4.463271699043302`", "0.03466205512555323`"},
       {
        RowBox[{"Mars", " ", "Nep"}], "1", "0.21237878178544634`", 
        "0.21237878178544634`", "0.32655729999341326`", "0.5677094210742826`"},
       {
        RowBox[{"Mars", " ", "Plu"}], "1", "56.42543527665566`", 
        "56.42543527665566`", "86.7607283552111`", "1.5558994190868216`*^-20"},
       {
        RowBox[{"Jup", " ", "Sat"}], "1", "280.11728664152815`", 
        "280.11728664152815`", "430.71320043425777`", 
        "3.1749842234123685`*^-93"},
       {
        RowBox[{"Jup", " ", "Ura"}], "1", "117.37698800337057`", 
        "117.37698800337057`", "180.48089343719275`", 
        "1.050745793812349`*^-40"},
       {
        RowBox[{"Jup", " ", "Nep"}], "1", "18.621023002951915`", 
        "18.621023002951915`", "28.63200807462169`", "8.99514700030872`*^-8"},
       {
        RowBox[{"Jup", " ", "Plu"}], "1", "0.2919874305043777`", 
        "0.2919874305043777`", "0.4489649396042352`", "0.5028462695915414`"},
       {
        RowBox[{"Sat", " ", "Ura"}], "1", "109.86490323038379`", 
        "109.86490323038379`", "168.93018154325955`", 
        "3.089644859360398`*^-38"},
       {
        RowBox[{"Nep", " ", "Sat"}], "1", "55.84521133097951`", 
        "55.84521133097951`", "85.86856594850258`", 
        "2.4311522526189972`*^-20"},
       {
        RowBox[{"Plu", " ", "Sat"}], "1", "13.697539675407825`", 
        "13.697539675407825`", "21.061574679680906`", 
        "4.515495044304171`*^-6"},
       {
        RowBox[{"Nep", " ", "Ura"}], "1", "43.269600109548264`", 
        "43.269600109548264`", "66.5320879269544`", "3.967315036121659`*^-16"},
       {
        RowBox[{"Plu", " ", "Ura"}], "1", "5.587355224284693`", 
        "5.587355224284693`", "8.591214342635121`", "0.003387462155326577`"},
       {
        RowBox[{"Nep", " ", "Plu"}], "1", "17.60556816371718`", 
        "17.60556816371718`", "27.070627094007815`", "2.010319155989178`*^-7"},
       {
        RowBox[{"Jup", " ", "Mer", " ", "Ven"}], "1", "10.550260579013411`", 
        "10.550260579013411`", "16.2222637306118`", "0.0000568499670785093`"},
       {
        RowBox[{"Mer", " ", "Sat", " ", "Ven"}], "1", "6.967022325219659`", 
        "6.967022325219659`", "10.712614416519228`", "0.0010685986879559466`"},
       {
        RowBox[{"Mer", " ", "Ura", " ", "Ven"}], "1", "0.18649156579067494`", 
        "0.18649156579067494`", "0.2867526674942068`", "0.5923239616753618`"},
       {
        RowBox[{"Mer", " ", "Plu", " ", "Ven"}], "1", "0.17600569099977292`", 
        "0.17600569099977292`", "0.27062940446859407`", "0.602924293451014`"},
       {
        RowBox[{"Jup", " ", "Mars", " ", "Mer"}], "1", "2.4145893918775982`", 
        "2.4145893918775982`", "3.712714546036254`", "0.05403493728920943`"},
       {
        RowBox[{"Mars", " ", "Mer", " ", "Sat"}], "1", "6.073304397797983`", 
        "6.073304397797983`", "9.33841822384415`", "0.0022513987098045627`"},
       {
        RowBox[{"Mars", " ", "Mer", " ", "Ura"}], "1", "2.1357403635411174`", 
        "2.1357403635411174`", "3.2839514415781985`", "0.06999783805712499`"},
       {
        RowBox[{"Mars", " ", "Mer", " ", "Nep"}], "1", 
        "0.015298940058528387`", "0.015298940058528387`", 
        "0.02352391569568962`", "0.8781063689362255`"},
       {
        RowBox[{"Mars", " ", "Mer", " ", "Plu"}], "1", "0.8778792888952012`", 
        "0.8778792888952012`", "1.3498424272504215`", "0.24534038319885276`"},
       {
        RowBox[{"Jup", " ", "Mer", " ", "Sat"}], "1", "11.189801398285454`", 
        "11.189801398285454`", "17.20563279140639`", 
        "0.000033891575501551116`"},
       {
        RowBox[{"Jup", " ", "Mer", " ", "Ura"}], "1", "3.4055229536252227`", 
        "3.4055229536252227`", "5.236391184901576`", "0.022145110659793625`"},
       {
        RowBox[{"Jup", " ", "Mer", " ", "Nep"}], "1", "6.0263839127892425`", 
        "6.0263839127892425`", "9.266272471947357`", "0.0023417188085657226`"},
       {
        RowBox[{"Jup", " ", "Mer", " ", "Plu"}], "1", "13.138194492830735`", 
        "13.138194492830735`", "20.201515821394274`", 
        "7.0679835049817444`*^-6"},
       {
        RowBox[{"Mer", " ", "Sat", " ", "Ura"}], "1", "0.0640078522328622`", 
        "0.0640078522328622`", "0.0984195842344417`", "0.7537426939195703`"},
       {
        RowBox[{"Mer", " ", "Nep", " ", "Sat"}], "1", "2.3595833881845465`", 
        "2.3595833881845465`", "3.6281363603134578`", "0.05684628373579369`"},
       {
        RowBox[{"Mer", " ", "Plu", " ", "Sat"}], "1", "14.402097816655441`", 
        "14.402097816655441`", "22.14491550290229`", "2.570779488598826`*^-6"},
       {
        RowBox[{"Mer", " ", "Nep", " ", "Ura"}], "1", "2.145694724029454`", 
        "2.145694724029454`", "3.299257438989542`", "0.06934867883175531`"},
       {
        RowBox[{"Mer", " ", "Plu", " ", "Ura"}], "1", "31.43873722121498`", 
        "31.43873722121498`", "48.34074786498244`", "3.864558313652481`*^-12"},
       {
        RowBox[{"Mer", " ", "Nep", " ", "Plu"}], "1", "0.3218232708477444`", 
        "0.3218232708477444`", "0.494841045416949`", "0.4817962406676273`"},
       {
        RowBox[{"Jup", " ", "Sat", " ", "Ven"}], "1", "2.1349523259023044`", 
        "2.1349523259023044`", "3.282739741231014`", "0.07004950600823022`"},
       {
        RowBox[{"Jup", " ", "Ura", " ", "Ven"}], "1", "0.3474486053828514`", 
        "0.3474486053828514`", "0.5342430044397026`", "0.46484989518372766`"},
       {
        RowBox[{"Jup", " ", "Plu", " ", "Ven"}], "1", "1.843736196962709`", 
        "1.843736196962709`", "2.8349607682961353`", "0.09227213101058307`"},
       {
        RowBox[{"Sat", " ", "Ura", " ", "Ven"}], "1", "0.5851617059324781`", 
        "0.5851617059324781`", "0.899754792556892`", "0.34287616757195316`"},
       {
        RowBox[{"Nep", " ", "Sat", " ", "Ven"}], "1", "0.03319877862213616`", 
        "0.03319877862213616`", "0.051047018062643175`", 
        "0.8212570787312451`"},
       {
        RowBox[{"Plu", " ", "Sat", " ", "Ven"}], "1", "0.35297741865906573`", 
        "0.35297741865906573`", "0.542744203667186`", "0.4613192976223587`"},
       {
        RowBox[{"Plu", " ", "Ura", " ", "Ven"}], "1", "3.560371323720574`", 
        "3.560371323720574`", "5.474488725633321`", "0.019320505748339805`"},
       {
        RowBox[{"Mars", " ", "Sat", " ", "Ura"}], "1", "4.1544432451837565`", 
        "4.1544432451837565`", "6.387944020197074`", "0.011508933391904707`"},
       {
        RowBox[{"Mars", " ", "Nep", " ", "Ura"}], "1", "0.2797815945368711`", 
        "0.2797815945368711`", "0.43019703442932866`", "0.5119111752563799`"},
       {
        RowBox[{"Mars", " ", "Plu", " ", "Ura"}], "1", "1.1317198343795098`", 
        "1.1317198343795098`", "1.7401520545367923`", "0.18715737807806698`"},
       {
        RowBox[{"Mars", " ", "Nep", " ", "Plu"}], "1", "9.282989606714182`", 
        "9.282989606714182`", "14.273685894375134`", "0.0001592080411398301`"},
       {
        RowBox[{"Jup", " ", "Sat", " ", "Ura"}], "1", "72.46706188824646`", 
        "72.46706188824646`", "111.426611781719`", "7.061091205128759`*^-26"},
       {
        RowBox[{"Jup", " ", "Nep", " ", "Sat"}], "1", "0.1551621389689899`", 
        "0.1551621389689899`", "0.23857999719625625`", "0.6252470117003681`"},
       {
        RowBox[{"Jup", " ", "Plu", " ", "Sat"}], "1", "0.09718284994141868`", 
        "0.09718284994141868`", "0.1494300363517269`", "0.6990909297466221`"},
       {
        RowBox[{"Jup", " ", "Plu", " ", "Ura"}], "1", "0.833526699988397`", 
        "0.833526699988397`", "1.281645116957175`", "0.25762736423628596`"},
       {
        RowBox[{"Nep", " ", "Sat", " ", "Ura"}], "1", "3.017887513430651`", 
        "3.017887513430651`", "4.640356205947891`", "0.03125833858908646`"},
       {
        RowBox[{"Plu", " ", "Sat", " ", "Ura"}], "1", "16.77191024034255`", 
        "16.77191024034255`", "25.788780205695023`", 
        "3.8950912466250486`*^-7"},
       {
        RowBox[{"Nep", " ", "Plu", " ", "Ura"}], "1", "0.4502017438508119`", 
        "0.4502017438508119`", "0.6922380130834801`", "0.4054290657346722`"},
       {
        RowBox[{"Jup", " ", "Mer", " ", "Ura", " ", "Ven"}], "1", 
        "8.091912986124953`", "8.091912986124953`", "12.442265815424708`", 
        "0.000422083471286041`"},
       {
        RowBox[{"Jup", " ", "Mer", " ", "Plu", " ", "Ven"}], "1", 
        "0.24731995818547148`", "0.24731995818547148`", 
        "0.38028345911279704`", "0.5374691493367145`"},
       {
        RowBox[{"Mer", " ", "Sat", " ", "Ura", " ", "Ven"}], "1", 
        "0.020441014453354`", "0.020441014453354`", "0.031430458508595924`", 
        "0.8592879485264983`"},
       {
        RowBox[{"Mars", " ", "Mer", " ", "Plu", " ", "Ura"}], "1", 
        "0.45582446843764046`", "0.45582446843764046`", "0.7008836119716791`",
         "0.40251199583898123`"},
       {
        RowBox[{"Jup", " ", "Mer", " ", "Sat", " ", "Ura"}], "1", 
        "2.9074316336773336`", "2.9074316336773336`", "4.470517328648558`", 
        "0.03451545105101971`"},
       {
        RowBox[{"Jup", " ", "Mer", " ", "Nep", " ", "Sat"}], "1", 
        "10.710014861264426`", "10.710014861264426`", "16.467904686999713`", 
        "0.000049952256794516456`"},
       {
        RowBox[{"Jup", " ", "Mer", " ", "Plu", " ", "Sat"}], "1", 
        "0.03405217412455386`", "0.03405217412455386`", 
        "0.052359213794971944`", "0.8190136244291311`"},
       {
        RowBox[{"Jup", " ", "Mer", " ", "Plu", " ", "Ura"}], "1", 
        "0.2189140307946218`", "0.2189140307946218`", "0.3366060122672079`", 
        "0.5618112447521245`"},
       {
        RowBox[{"Mer", " ", "Plu", " ", "Sat", " ", "Ura"}], "1", 
        "5.08792279064437`", "5.08792279064437`", "7.823278366698096`", 
        "0.005170093955304055`"},
       {
        RowBox[{"Jup", " ", "Plu", " ", "Ura", " ", "Ven"}], "1", 
        "0.31292369491893623`", "0.31292369491893623`", 
        "0.48115690304657815`", "0.48791892589726094`"},
       {
        RowBox[{"Plu", " ", "Sat", " ", "Ura", " ", "Ven"}], "1", 
        "0.7928051676890391`", "0.7928051676890391`", "1.2190309823083239`", 
        "0.2695841676086752`"},
       {
        RowBox[{"Jup", " ", "Plu", " ", "Sat", " ", "Ura"}], "1", 
        "1.6235445619195161`", "1.6235445619195161`", "2.496390289567796`", 
        "0.11414716884088572`"},
       {"\<\"Error\"\>", "7987", "5194.4002787705995`", 
        "0.6503568647515462`", "\<\"\"\>", "\<\"\"\>"},
       {"\<\"Total\"\>", "8072", 
        "6622.350574811896`", "\<\"\"\>", "\<\"\"\>", "\<\"\"\>"}
      },
      GridBoxAlignment->{
       "Columns" -> {{Left}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
        "RowsIndexed" -> {}},
      GridBoxSpacings->{"Columns" -> {
          Offset[0.27999999999999997`], {
           Offset[2.0999999999999996`]}, 
          Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
          Offset[0.2], {
           Offset[0.4]}, 
          Offset[0.2]}, "RowsIndexed" -> {}}],
     TableForm[{{
       1, 0.10725949670359114`, 0.10725949670359114`, 0.16492406325958772`, 
        0.6846738059052846}, {
       1, 1.8240870591607745`, 1.8240870591607745`, 2.8047479130671205`, 
        0.09402476546079686}, {
       1, 13.147169803554789`, 13.147169803554789`, 20.215316414899938`, 
        7.017305372011215*^-6}, {
       1, 0.253395224290216, 0.253395224290216, 0.389624893691281, 
        0.5325144673983991}, {
       1, 28.911061086692825`, 28.911061086692825`, 44.4541491812155, 
        2.7769836912116158`*^-11}, {
       1, 132.99136761344016`, 132.99136761344016`, 204.48983446072558`, 
        8.025985074852367*^-46}, {
       1, 2.1150723674782057`, 2.1150723674782057`, 3.2521719722082434`, 
        0.07136655097177505}, {
       1, 64.90614823199758, 64.90614823199758, 99.80081974962081, 
        2.3100223134114305`*^-23}, {
       1, 32.81119236877839, 32.81119236877839, 50.45105871422323, 
        1.3267507759877928`*^-12}, {
       1, 0.07091125302395085, 0.07091125302395085, 0.10903437307614314`, 
        0.74125483804696}, {
       1, 1.328546675990765, 1.328546675990765, 2.042796421466706, 
        0.15296739399516324`}, {
       1, 2.931711832446126, 2.931711832446126, 4.5078509835767155`, 
        0.033770271036131776`}, {
       1, 0.4025707829896419, 0.4025707829896419, 0.6189998211880715, 
        0.4314425449506605}, {
       1, 6.76633658819992, 6.76633658819992, 10.404036545051067`, 
        0.0012624650768395043`}, {
       1, 1.998624448321607, 1.998624448321607, 3.073119631150715, 
        0.07963495235968901}, {
       1, 1.2279475989726052`, 1.2279475989726052`, 1.8881135350846405`, 
        0.16945340753621196`}, {
       1, 21.0510473678587, 21.0510473678587, 32.368455703009715`, 
        1.3204386692442287`*^-8}, {
       1, 68.70358071466762, 68.70358071466762, 105.63981782665466`, 
        1.2584411442742702`*^-24}, {
       1, 0.05754314936075389, 0.05754314936075389, 0.08847934492509266, 
        0.7661270642887444}, {
       1, 4.168498974472641, 4.168498974472641, 6.409556353441614, 
        0.011369789253135792`}, {
       1, 1.9510044992975963`, 1.9510044992975963`, 2.999898371247196, 
        0.08330834803856449}, {
       1, 49.66205116493438, 49.66205116493438, 76.3612315892239, 
        2.845632771581331*^-18}, {
       1, 6.853910851932596, 6.853910851932596, 10.538692252523505`, 
        0.0011738319231161976`}, {
       1, 2.9027193887241083`, 2.9027193887241083`, 4.463271699043302, 
        0.03466205512555323}, {
       1, 0.21237878178544634`, 0.21237878178544634`, 0.32655729999341326`, 
        0.5677094210742826}, {
       1, 56.42543527665566, 56.42543527665566, 86.7607283552111, 
        1.5558994190868216`*^-20}, {
       1, 280.11728664152815`, 280.11728664152815`, 430.71320043425777`, 
        3.1749842234123685`*^-93}, {
       1, 117.37698800337057`, 117.37698800337057`, 180.48089343719275`, 
        1.050745793812349*^-40}, {
       1, 18.621023002951915`, 18.621023002951915`, 28.63200807462169, 
        8.99514700030872*^-8}, {
       1, 0.2919874305043777, 0.2919874305043777, 0.4489649396042352, 
        0.5028462695915414}, {
       1, 109.86490323038379`, 109.86490323038379`, 168.93018154325955`, 
        3.089644859360398*^-38}, {
       1, 55.84521133097951, 55.84521133097951, 85.86856594850258, 
        2.4311522526189972`*^-20}, {
       1, 13.697539675407825`, 13.697539675407825`, 21.061574679680906`, 
        4.515495044304171*^-6}, {
       1, 43.269600109548264`, 43.269600109548264`, 66.5320879269544, 
        3.967315036121659*^-16}, {
       1, 5.587355224284693, 5.587355224284693, 8.591214342635121, 
        0.003387462155326577}, {
       1, 17.60556816371718, 17.60556816371718, 27.070627094007815`, 
        2.010319155989178*^-7}, {
       1, 10.550260579013411`, 10.550260579013411`, 16.2222637306118, 
        0.0000568499670785093}, {
       1, 6.967022325219659, 6.967022325219659, 10.712614416519228`, 
        0.0010685986879559466`}, {
       1, 0.18649156579067494`, 0.18649156579067494`, 0.2867526674942068, 
        0.5923239616753618}, {
       1, 0.17600569099977292`, 0.17600569099977292`, 0.27062940446859407`, 
        0.602924293451014}, {
       1, 2.4145893918775982`, 2.4145893918775982`, 3.712714546036254, 
        0.05403493728920943}, {
       1, 6.073304397797983, 6.073304397797983, 9.33841822384415, 
        0.0022513987098045627`}, {
       1, 2.1357403635411174`, 2.1357403635411174`, 3.2839514415781985`, 
        0.06999783805712499}, {
       1, 0.015298940058528387`, 0.015298940058528387`, 0.02352391569568962, 
        0.8781063689362255}, {
       1, 0.8778792888952012, 0.8778792888952012, 1.3498424272504215`, 
        0.24534038319885276`}, {
       1, 11.189801398285454`, 11.189801398285454`, 17.20563279140639, 
        0.000033891575501551116`}, {
       1, 3.4055229536252227`, 3.4055229536252227`, 5.236391184901576, 
        0.022145110659793625`}, {
       1, 6.0263839127892425`, 6.0263839127892425`, 9.266272471947357, 
        0.0023417188085657226`}, {
       1, 13.138194492830735`, 13.138194492830735`, 20.201515821394274`, 
        7.0679835049817444`*^-6}, {
       1, 0.0640078522328622, 0.0640078522328622, 0.0984195842344417, 
        0.7537426939195703}, {
       1, 2.3595833881845465`, 2.3595833881845465`, 3.6281363603134578`, 
        0.05684628373579369}, {
       1, 14.402097816655441`, 14.402097816655441`, 22.14491550290229, 
        2.570779488598826*^-6}, {
       1, 2.145694724029454, 2.145694724029454, 3.299257438989542, 
        0.06934867883175531}, {
       1, 31.43873722121498, 31.43873722121498, 48.34074786498244, 
        3.864558313652481*^-12}, {
       1, 0.3218232708477444, 0.3218232708477444, 0.494841045416949, 
        0.4817962406676273}, {
       1, 2.1349523259023044`, 2.1349523259023044`, 3.282739741231014, 
        0.07004950600823022}, {
       1, 0.3474486053828514, 0.3474486053828514, 0.5342430044397026, 
        0.46484989518372766`}, {
       1, 1.843736196962709, 1.843736196962709, 2.8349607682961353`, 
        0.09227213101058307}, {
       1, 0.5851617059324781, 0.5851617059324781, 0.899754792556892, 
        0.34287616757195316`}, {
       1, 0.03319877862213616, 0.03319877862213616, 0.051047018062643175`, 
        0.8212570787312451}, {
       1, 0.35297741865906573`, 0.35297741865906573`, 0.542744203667186, 
        0.4613192976223587}, {
       1, 3.560371323720574, 3.560371323720574, 5.474488725633321, 
        0.019320505748339805`}, {
       1, 4.1544432451837565`, 4.1544432451837565`, 6.387944020197074, 
        0.011508933391904707`}, {
       1, 0.2797815945368711, 0.2797815945368711, 0.43019703442932866`, 
        0.5119111752563799}, {
       1, 1.1317198343795098`, 1.1317198343795098`, 1.7401520545367923`, 
        0.18715737807806698`}, {
       1, 9.282989606714182, 9.282989606714182, 14.273685894375134`, 
        0.0001592080411398301}, {
       1, 72.46706188824646, 72.46706188824646, 111.426611781719, 
        7.061091205128759*^-26}, {
       1, 0.1551621389689899, 0.1551621389689899, 0.23857999719625625`, 
        0.6252470117003681}, {
       1, 0.09718284994141868, 0.09718284994141868, 0.1494300363517269, 
        0.6990909297466221}, {
       1, 0.833526699988397, 0.833526699988397, 1.281645116957175, 
        0.25762736423628596`}, {
       1, 3.017887513430651, 3.017887513430651, 4.640356205947891, 
        0.03125833858908646}, {
       1, 16.77191024034255, 16.77191024034255, 25.788780205695023`, 
        3.8950912466250486`*^-7}, {
       1, 0.4502017438508119, 0.4502017438508119, 0.6922380130834801, 
        0.4054290657346722}, {
       1, 8.091912986124953, 8.091912986124953, 12.442265815424708`, 
        0.000422083471286041}, {
       1, 0.24731995818547148`, 0.24731995818547148`, 0.38028345911279704`, 
        0.5374691493367145}, {
       1, 0.020441014453354, 0.020441014453354, 0.031430458508595924`, 
        0.8592879485264983}, {
       1, 0.45582446843764046`, 0.45582446843764046`, 0.7008836119716791, 
        0.40251199583898123`}, {
       1, 2.9074316336773336`, 2.9074316336773336`, 4.470517328648558, 
        0.03451545105101971}, {
       1, 10.710014861264426`, 10.710014861264426`, 16.467904686999713`, 
        0.000049952256794516456`}, {
       1, 0.03405217412455386, 0.03405217412455386, 0.052359213794971944`, 
        0.8190136244291311}, {
       1, 0.2189140307946218, 0.2189140307946218, 0.3366060122672079, 
        0.5618112447521245}, {
       1, 5.08792279064437, 5.08792279064437, 7.823278366698096, 
        0.005170093955304055}, {
       1, 0.31292369491893623`, 0.31292369491893623`, 0.48115690304657815`, 
        0.48791892589726094`}, {
       1, 0.7928051676890391, 0.7928051676890391, 1.2190309823083239`, 
        0.2695841676086752}, {
       1, 1.6235445619195161`, 1.6235445619195161`, 2.496390289567796, 
        0.11414716884088572`}, {
       7987, 5194.4002787705995`, 0.6503568647515462}, {
       8072, 6622.350574811896}}, 
      TableHeadings -> {{$CellContext`Mer, $CellContext`Ven, \
$CellContext`Mars, $CellContext`Jup, $CellContext`Sat, $CellContext`Ura, \
$CellContext`Nep, $CellContext`Plu, $CellContext`Mer $CellContext`Ven, \
$CellContext`Mars $CellContext`Mer, $CellContext`Jup $CellContext`Mer, \
$CellContext`Mer $CellContext`Sat, $CellContext`Mer $CellContext`Ura, \
$CellContext`Mer $CellContext`Nep, $CellContext`Mer $CellContext`Plu, \
$CellContext`Mars $CellContext`Ven, $CellContext`Jup $CellContext`Ven, \
$CellContext`Sat $CellContext`Ven, $CellContext`Ura $CellContext`Ven, \
$CellContext`Nep $CellContext`Ven, $CellContext`Plu $CellContext`Ven, \
$CellContext`Jup $CellContext`Mars, $CellContext`Mars $CellContext`Sat, \
$CellContext`Mars $CellContext`Ura, $CellContext`Mars $CellContext`Nep, \
$CellContext`Mars $CellContext`Plu, $CellContext`Jup $CellContext`Sat, \
$CellContext`Jup $CellContext`Ura, $CellContext`Jup $CellContext`Nep, \
$CellContext`Jup $CellContext`Plu, $CellContext`Sat $CellContext`Ura, \
$CellContext`Nep $CellContext`Sat, $CellContext`Plu $CellContext`Sat, \
$CellContext`Nep $CellContext`Ura, $CellContext`Plu $CellContext`Ura, \
$CellContext`Nep $CellContext`Plu, $CellContext`Jup $CellContext`Mer \
$CellContext`Ven, $CellContext`Mer $CellContext`Sat $CellContext`Ven, \
$CellContext`Mer $CellContext`Ura $CellContext`Ven, $CellContext`Mer \
$CellContext`Plu $CellContext`Ven, $CellContext`Jup $CellContext`Mars \
$CellContext`Mer, $CellContext`Mars $CellContext`Mer $CellContext`Sat, \
$CellContext`Mars $CellContext`Mer $CellContext`Ura, $CellContext`Mars \
$CellContext`Mer $CellContext`Nep, $CellContext`Mars $CellContext`Mer \
$CellContext`Plu, $CellContext`Jup $CellContext`Mer $CellContext`Sat, \
$CellContext`Jup $CellContext`Mer $CellContext`Ura, $CellContext`Jup \
$CellContext`Mer $CellContext`Nep, $CellContext`Jup $CellContext`Mer \
$CellContext`Plu, $CellContext`Mer $CellContext`Sat $CellContext`Ura, \
$CellContext`Mer $CellContext`Nep $CellContext`Sat, $CellContext`Mer \
$CellContext`Plu $CellContext`Sat, $CellContext`Mer $CellContext`Nep \
$CellContext`Ura, $CellContext`Mer $CellContext`Plu $CellContext`Ura, \
$CellContext`Mer $CellContext`Nep $CellContext`Plu, $CellContext`Jup \
$CellContext`Sat $CellContext`Ven, $CellContext`Jup $CellContext`Ura \
$CellContext`Ven, $CellContext`Jup $CellContext`Plu $CellContext`Ven, \
$CellContext`Sat $CellContext`Ura $CellContext`Ven, $CellContext`Nep \
$CellContext`Sat $CellContext`Ven, $CellContext`Plu $CellContext`Sat \
$CellContext`Ven, $CellContext`Plu $CellContext`Ura $CellContext`Ven, \
$CellContext`Mars $CellContext`Sat $CellContext`Ura, $CellContext`Mars \
$CellContext`Nep $CellContext`Ura, $CellContext`Mars $CellContext`Plu \
$CellContext`Ura, $CellContext`Mars $CellContext`Nep $CellContext`Plu, \
$CellContext`Jup $CellContext`Sat $CellContext`Ura, $CellContext`Jup \
$CellContext`Nep $CellContext`Sat, $CellContext`Jup $CellContext`Plu \
$CellContext`Sat, $CellContext`Jup $CellContext`Plu $CellContext`Ura, \
$CellContext`Nep $CellContext`Sat $CellContext`Ura, $CellContext`Plu \
$CellContext`Sat $CellContext`Ura, $CellContext`Nep $CellContext`Plu \
$CellContext`Ura, $CellContext`Jup $CellContext`Mer $CellContext`Ura \
$CellContext`Ven, $CellContext`Jup $CellContext`Mer $CellContext`Plu \
$CellContext`Ven, $CellContext`Mer $CellContext`Sat $CellContext`Ura \
$CellContext`Ven, $CellContext`Mars $CellContext`Mer $CellContext`Plu \
$CellContext`Ura, $CellContext`Jup $CellContext`Mer $CellContext`Sat \
$CellContext`Ura, $CellContext`Jup $CellContext`Mer $CellContext`Nep \
$CellContext`Sat, $CellContext`Jup $CellContext`Mer $CellContext`Plu \
$CellContext`Sat, $CellContext`Jup $CellContext`Mer $CellContext`Plu \
$CellContext`Ura, $CellContext`Mer $CellContext`Plu $CellContext`Sat \
$CellContext`Ura, $CellContext`Jup $CellContext`Plu $CellContext`Ura \
$CellContext`Ven, $CellContext`Plu $CellContext`Sat $CellContext`Ura \
$CellContext`Ven, $CellContext`Jup $CellContext`Plu $CellContext`Sat \
$CellContext`Ura, "Error", "Total"}, {
        "DF", "SumOfSq", "MeanSq", "FRatio", "PValue"}}]]}], ",", 
   RowBox[{"PostTests", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"Mer", "\[Rule]", 
       TagBox[GridBox[{
          {"Bonferroni", 
           RowBox[{"{", "\<\"\"\>", "}"}]}
         },
         GridBoxAlignment->{
          "Columns" -> {{Left}}, "ColumnsIndexed" -> {}, 
           "Rows" -> {{Baseline}}, "RowsIndexed" -> {}},
         GridBoxSpacings->{"Columns" -> {
             Offset[0.27999999999999997`], {
              Offset[0.7]}, 
             Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
             Offset[0.2], {
              Offset[1.2]}, 
             Offset[0.2]}, "RowsIndexed" -> {}}],
        Function[BoxForm`e$, 
         TableForm[BoxForm`e$, TableSpacing -> {3, 1}, TableDepth -> 2]]]}], 
      ",", 
      RowBox[{"Ven", "\[Rule]", 
       TagBox[GridBox[{
          {"Bonferroni", 
           RowBox[{"{", "\<\"\"\>", "}"}]}
         },
         GridBoxAlignment->{
          "Columns" -> {{Left}}, "ColumnsIndexed" -> {}, 
           "Rows" -> {{Baseline}}, "RowsIndexed" -> {}},
         GridBoxSpacings->{"Columns" -> {
             Offset[0.27999999999999997`], {
              Offset[0.7]}, 
             Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
             Offset[0.2], {
              Offset[1.2]}, 
             Offset[0.2]}, "RowsIndexed" -> {}}],
        Function[BoxForm`e$, 
         TableForm[BoxForm`e$, TableSpacing -> {3, 1}, TableDepth -> 2]]]}], 
      ",", 
      RowBox[{"Mars", "\[Rule]", 
       TagBox[GridBox[{
          {"Bonferroni", 
           RowBox[{"{", 
            RowBox[{"\<\"prograde\"\>", ",", "\<\"retrograde\"\>"}], "}"}]}
         },
         GridBoxAlignment->{
          "Columns" -> {{Left}}, "ColumnsIndexed" -> {}, 
           "Rows" -> {{Baseline}}, "RowsIndexed" -> {}},
         GridBoxSpacings->{"Columns" -> {
             Offset[0.27999999999999997`], {
              Offset[0.7]}, 
             Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
             Offset[0.2], {
              Offset[1.2]}, 
             Offset[0.2]}, "RowsIndexed" -> {}}],
        Function[BoxForm`e$, 
         TableForm[BoxForm`e$, TableSpacing -> {3, 1}, TableDepth -> 2]]]}], 
      ",", 
      RowBox[{"Jup", "\[Rule]", 
       TagBox[GridBox[{
          {"Bonferroni", 
           RowBox[{"{", "\<\"\"\>", "}"}]}
         },
         GridBoxAlignment->{
          "Columns" -> {{Left}}, "ColumnsIndexed" -> {}, 
           "Rows" -> {{Baseline}}, "RowsIndexed" -> {}},
         GridBoxSpacings->{"Columns" -> {
             Offset[0.27999999999999997`], {
              Offset[0.7]}, 
             Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
             Offset[0.2], {
              Offset[1.2]}, 
             Offset[0.2]}, "RowsIndexed" -> {}}],
        Function[BoxForm`e$, 
         TableForm[BoxForm`e$, TableSpacing -> {3, 1}, TableDepth -> 2]]]}], 
      ",", 
      RowBox[{"Sat", "\[Rule]", 
       TagBox[GridBox[{
          {"Bonferroni", 
           RowBox[{"{", 
            RowBox[{"\<\"prograde\"\>", ",", "\<\"retrograde\"\>"}], "}"}]}
         },
         GridBoxAlignment->{
          "Columns" -> {{Left}}, "ColumnsIndexed" -> {}, 
           "Rows" -> {{Baseline}}, "RowsIndexed" -> {}},
         GridBoxSpacings->{"Columns" -> {
             Offset[0.27999999999999997`], {
              Offset[0.7]}, 
             Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
             Offset[0.2], {
              Offset[1.2]}, 
             Offset[0.2]}, "RowsIndexed" -> {}}],
        Function[BoxForm`e$, 
         TableForm[BoxForm`e$, TableSpacing -> {3, 1}, TableDepth -> 2]]]}], 
      ",", 
      RowBox[{"Ura", "\[Rule]", 
       TagBox[GridBox[{
          {"Bonferroni", 
           RowBox[{"{", 
            RowBox[{"\<\"prograde\"\>", ",", "\<\"retrograde\"\>"}], "}"}]}
         },
         GridBoxAlignment->{
          "Columns" -> {{Left}}, "ColumnsIndexed" -> {}, 
           "Rows" -> {{Baseline}}, "RowsIndexed" -> {}},
         GridBoxSpacings->{"Columns" -> {
             Offset[0.27999999999999997`], {
              Offset[0.7]}, 
             Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
             Offset[0.2], {
              Offset[1.2]}, 
             Offset[0.2]}, "RowsIndexed" -> {}}],
        Function[BoxForm`e$, 
         TableForm[BoxForm`e$, TableSpacing -> {3, 1}, TableDepth -> 2]]]}], 
      ",", 
      RowBox[{"Nep", "\[Rule]", 
       TagBox[GridBox[{
          {"Bonferroni", 
           RowBox[{"{", 
            RowBox[{"\<\"prograde\"\>", ",", "\<\"retrograde\"\>"}], "}"}]}
         },
         GridBoxAlignment->{
          "Columns" -> {{Left}}, "ColumnsIndexed" -> {}, 
           "Rows" -> {{Baseline}}, "RowsIndexed" -> {}},
         GridBoxSpacings->{"Columns" -> {
             Offset[0.27999999999999997`], {
              Offset[0.7]}, 
             Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
             Offset[0.2], {
              Offset[1.2]}, 
             Offset[0.2]}, "RowsIndexed" -> {}}],
        Function[BoxForm`e$, 
         TableForm[BoxForm`e$, TableSpacing -> {3, 1}, TableDepth -> 2]]]}], 
      ",", 
      RowBox[{"Plu", "\[Rule]", 
       TagBox[GridBox[{
          {"Bonferroni", 
           RowBox[{"{", 
            RowBox[{"\<\"prograde\"\>", ",", "\<\"retrograde\"\>"}], "}"}]}
         },
         GridBoxAlignment->{
          "Columns" -> {{Left}}, "ColumnsIndexed" -> {}, 
           "Rows" -> {{Baseline}}, "RowsIndexed" -> {}},
         GridBoxSpacings->{"Columns" -> {
             Offset[0.27999999999999997`], {
              Offset[0.7]}, 
             Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
             Offset[0.2], {
              Offset[1.2]}, 
             Offset[0.2]}, "RowsIndexed" -> {}}],
        Function[BoxForm`e$, 
         TableForm[BoxForm`e$, TableSpacing -> {3, 1}, TableDepth -> 2]]]}]}],
      "}"}]}]}], "}"}]], "Output",
 CellChangeTimes->{3.7098097628852654`*^9, 3.7099153032040205`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"gb", "=", 
   RowBox[{"GatherBy", "[", 
    RowBox[{
     RowBox[{
      RowBox[{"Delete", "[", 
       RowBox[{"fulldata", ",", "alldeletes"}], "]"}], "[", 
      RowBox[{"[", 
       RowBox[{"All", ",", 
        RowBox[{"{", 
         RowBox[{"3", ",", "9"}], "}"}]}], "]"}], "]"}], ",", "First"}], 
    "]"}]}], ";", 
  RowBox[{"\"\<Mars average \>\"", "<>", 
   RowBox[{"gb", "[", 
    RowBox[{"[", 
     RowBox[{"1", ",", "1", ",", "1"}], "]"}], "]"}], "<>", 
   "\"\</ average \>\"", "<>", 
   RowBox[{"gb", "[", 
    RowBox[{"[", 
     RowBox[{"2", ",", "1", ",", "1"}], "]"}], "]"}], "<>", "\"\<=\>\"", "<>", 
   RowBox[{"ToString", "[", 
    RowBox[{"N", "[", 
     RowBox[{
      RowBox[{"Mean", "[", 
       RowBox[{"E", "^", 
        RowBox[{"gb", "[", 
         RowBox[{"[", 
          RowBox[{"1", ",", "All", ",", "2"}], "]"}], "]"}]}], "]"}], "/", 
      RowBox[{"Mean", "[", 
       RowBox[{"E", "^", 
        RowBox[{"gb", "[", 
         RowBox[{"[", 
          RowBox[{"2", ",", "All", ",", "2"}], "]"}], "]"}]}], "]"}]}], "]"}],
     "]"}], 
   RowBox[{"(*", 
    RowBox[{"Mars", " ", "RATIO"}], "*)"}]}]}]], "Input",
 CellChangeTimes->{{3.709916437605465*^9, 3.709916530083252*^9}, {
  3.7099174367544355`*^9, 3.7099174621795993`*^9}, {3.7099174982329245`*^9, 
  3.709917659742733*^9}, {3.709917730452097*^9, 3.7099177636858478`*^9}, {
  3.7099178809436674`*^9, 3.709917905172591*^9}, {3.7099256512522335`*^9, 
  3.709925657626529*^9}, {3.709925807555453*^9, 3.709925819903961*^9}}],

Cell[BoxData["\<\"Mars average prograde/ average retrograde=0.949203\"\>"], \
"Output",
 CellChangeTimes->{
  3.709916531303499*^9, {3.7099174634678717`*^9, 3.7099174766795454`*^9}, 
   3.709917619196498*^9, 3.7099176606359158`*^9, {3.7099177320524216`*^9, 
   3.7099177643209763`*^9}, {3.70991789025556*^9, 3.709917906577876*^9}, 
   3.7099256586737437`*^9, 3.709925823773749*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"gb", "=", 
   RowBox[{"GatherBy", "[", 
    RowBox[{
     RowBox[{
      RowBox[{"Delete", "[", 
       RowBox[{"fulldata", ",", "alldeletes"}], "]"}], "[", 
      RowBox[{"[", 
       RowBox[{"All", ",", 
        RowBox[{"{", 
         RowBox[{"4", ",", "9"}], "}"}]}], "]"}], "]"}], ",", "First"}], 
    "]"}]}], ";", 
  RowBox[{"\"\<Jupiter average \>\"", "<>", 
   RowBox[{"gb", "[", 
    RowBox[{"[", 
     RowBox[{"1", ",", "1", ",", "1"}], "]"}], "]"}], "<>", 
   "\"\</ average \>\"", "<>", 
   RowBox[{"gb", "[", 
    RowBox[{"[", 
     RowBox[{"2", ",", "1", ",", "1"}], "]"}], "]"}], "<>", "\"\<=\>\"", "<>", 
   RowBox[{"ToString", "[", 
    RowBox[{"N", "[", 
     RowBox[{
      RowBox[{"Mean", "[", 
       RowBox[{"E", "^", 
        RowBox[{"gb", "[", 
         RowBox[{"[", 
          RowBox[{"1", ",", "All", ",", "2"}], "]"}], "]"}]}], "]"}], "/", 
      RowBox[{"Mean", "[", 
       RowBox[{"E", "^", 
        RowBox[{"gb", "[", 
         RowBox[{"[", 
          RowBox[{"2", ",", "All", ",", "2"}], "]"}], "]"}]}], "]"}]}], "]"}],
     "]"}], 
   RowBox[{"(*", 
    RowBox[{"Jupiter", " ", "RATIO"}], "*)"}]}]}]], "Input",
 CellChangeTimes->{{3.7099177001329374`*^9, 3.709917721956422*^9}, {
  3.709917769319992*^9, 3.7099177718044987`*^9}, {3.709917919481497*^9, 
  3.7099179274781203`*^9}, {3.709925669115863*^9, 3.709925675126084*^9}, {
  3.7099257955290103`*^9, 3.7099258002039585`*^9}}],

Cell[BoxData["\<\"Jupiter average retrograde/ average \
prograde=0.931839\"\>"], "Output",
 CellChangeTimes->{{3.7099177078275003`*^9, 3.709917722789543*^9}, {
   3.7099177559512787`*^9, 3.709917772502639*^9}, 3.7099179278521996`*^9, 
   3.709925675929248*^9, 3.709925829072894*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"gb", "=", 
   RowBox[{"GatherBy", "[", 
    RowBox[{
     RowBox[{
      RowBox[{"Delete", "[", 
       RowBox[{"fulldata", ",", "alldeletes"}], "]"}], "[", 
      RowBox[{"[", 
       RowBox[{"All", ",", 
        RowBox[{"{", 
         RowBox[{"5", ",", "9"}], "}"}]}], "]"}], "]"}], ",", "First"}], 
    "]"}]}], ";", 
  RowBox[{"\"\<Saturn average \>\"", "<>", 
   RowBox[{"gb", "[", 
    RowBox[{"[", 
     RowBox[{"1", ",", "1", ",", "1"}], "]"}], "]"}], "<>", 
   "\"\</ average \>\"", "<>", 
   RowBox[{"gb", "[", 
    RowBox[{"[", 
     RowBox[{"2", ",", "1", ",", "1"}], "]"}], "]"}], "<>", "\"\<=\>\"", "<>", 
   RowBox[{"ToString", "[", 
    RowBox[{"N", "[", 
     RowBox[{
      RowBox[{"Mean", "[", 
       RowBox[{"E", "^", 
        RowBox[{"gb", "[", 
         RowBox[{"[", 
          RowBox[{"1", ",", "All", ",", "2"}], "]"}], "]"}]}], "]"}], "/", 
      RowBox[{"Mean", "[", 
       RowBox[{"E", "^", 
        RowBox[{"gb", "[", 
         RowBox[{"[", 
          RowBox[{"2", ",", "All", ",", "2"}], "]"}], "]"}]}], "]"}]}], "]"}],
     "]"}], 
   RowBox[{"(*", 
    RowBox[{"Saturn", " ", "RATIO"}], "*)"}]}]}]], "Input",
 CellChangeTimes->{{3.7099177841850123`*^9, 3.709917811887639*^9}, {
  3.709917936959047*^9, 3.7099179454967813`*^9}, {3.7099256856492214`*^9, 
  3.7099256915094123`*^9}, {3.7099257750938587`*^9, 3.709925783414549*^9}}],

Cell[BoxData["\<\"Saturn average prograde/ average retrograde=1.10372\"\>"], \
"Output",
 CellChangeTimes->{{3.709917794418092*^9, 3.709917812747816*^9}, 
   3.7099179459108696`*^9, 3.709925692328579*^9, 3.709925788258534*^9, 
   3.709925836079249*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"gb", "=", 
   RowBox[{"GatherBy", "[", 
    RowBox[{
     RowBox[{
      RowBox[{"Delete", "[", 
       RowBox[{"fulldata", ",", "alldeletes"}], "]"}], "[", 
      RowBox[{"[", 
       RowBox[{"All", ",", 
        RowBox[{"{", 
         RowBox[{"6", ",", "9"}], "}"}]}], "]"}], "]"}], ",", "First"}], 
    "]"}]}], ";", 
  RowBox[{"\"\<Uranus average \>\"", "<>", 
   RowBox[{"gb", "[", 
    RowBox[{"[", 
     RowBox[{"1", ",", "1", ",", "1"}], "]"}], "]"}], "<>", 
   "\"\</ average \>\"", "<>", 
   RowBox[{"gb", "[", 
    RowBox[{"[", 
     RowBox[{"2", ",", "1", ",", "1"}], "]"}], "]"}], "<>", "\"\<=\>\"", "<>", 
   RowBox[{"ToString", "[", 
    RowBox[{"N", "[", 
     RowBox[{
      RowBox[{"Mean", "[", 
       RowBox[{"E", "^", 
        RowBox[{"gb", "[", 
         RowBox[{"[", 
          RowBox[{"1", ",", "All", ",", "2"}], "]"}], "]"}]}], "]"}], "/", 
      RowBox[{"Mean", "[", 
       RowBox[{"E", "^", 
        RowBox[{"gb", "[", 
         RowBox[{"[", 
          RowBox[{"2", ",", "All", ",", "2"}], "]"}], "]"}]}], "]"}]}], "]"}],
     "]"}], 
   RowBox[{"(*", 
    RowBox[{"Uranus", " ", "RATIO"}], "*)"}]}]}]], "Input",
 CellChangeTimes->{{3.70991782531644*^9, 3.7099178611636496`*^9}, {
  3.709917969408639*^9, 3.7099179777473326`*^9}, {3.709925701141369*^9, 
  3.709925707289567*^9}, {3.709925842505553*^9, 3.709925846025267*^9}}],

Cell[BoxData["\<\"Uranus average prograde/ average retrograde=1.32105\"\>"], \
"Output",
 CellChangeTimes->{{3.709917836962734*^9, 3.709917861995821*^9}, 
   3.709917978161419*^9, 3.7099257084328*^9, 3.709925847270521*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"gb", "=", 
   RowBox[{"GatherBy", "[", 
    RowBox[{
     RowBox[{
      RowBox[{"Delete", "[", 
       RowBox[{"fulldata", ",", "alldeletes"}], "]"}], "[", 
      RowBox[{"[", 
       RowBox[{"All", ",", 
        RowBox[{"{", 
         RowBox[{"7", ",", "9"}], "}"}]}], "]"}], "]"}], ",", "First"}], 
    "]"}]}], ";", 
  RowBox[{"\"\<Neptune average \>\"", "<>", 
   RowBox[{"gb", "[", 
    RowBox[{"[", 
     RowBox[{"1", ",", "1", ",", "1"}], "]"}], "]"}], "<>", 
   "\"\</ average \>\"", "<>", 
   RowBox[{"gb", "[", 
    RowBox[{"[", 
     RowBox[{"2", ",", "1", ",", "1"}], "]"}], "]"}], "<>", "\"\<=\>\"", "<>", 
   RowBox[{"ToString", "[", 
    RowBox[{"N", "[", 
     RowBox[{
      RowBox[{"Mean", "[", 
       RowBox[{"E", "^", 
        RowBox[{"gb", "[", 
         RowBox[{"[", 
          RowBox[{"1", ",", "All", ",", "2"}], "]"}], "]"}]}], "]"}], "/", 
      RowBox[{"Mean", "[", 
       RowBox[{"E", "^", 
        RowBox[{"gb", "[", 
         RowBox[{"[", 
          RowBox[{"2", ",", "All", ",", "2"}], "]"}], "]"}]}], "]"}]}], "]"}],
     "]"}], 
   RowBox[{"(*", 
    RowBox[{"Neptune", " ", "RATIO"}], "*)"}]}]}]], "Input",
 CellChangeTimes->{{3.709917997432331*^9, 3.7099180317192965`*^9}, {
  3.709918178636142*^9, 3.7099181802344666`*^9}, {3.709925756484078*^9, 
  3.7099257574622765`*^9}, {3.709925855779249*^9, 3.709925869545045*^9}}],

Cell[BoxData["\<\"Neptune average prograde/ average retrograde=1.28824\"\>"], \
"Output",
 CellChangeTimes->{{3.7099180110580997`*^9, 3.7099180323264217`*^9}, 
   3.7099181810466337`*^9, 3.7099258703322067`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"gb", "=", 
   RowBox[{"GatherBy", "[", 
    RowBox[{
     RowBox[{
      RowBox[{"Delete", "[", 
       RowBox[{"fulldata", ",", "alldeletes"}], "]"}], "[", 
      RowBox[{"[", 
       RowBox[{"All", ",", 
        RowBox[{"{", 
         RowBox[{"8", ",", "9"}], "}"}]}], "]"}], "]"}], ",", "First"}], 
    "]"}]}], ";", 
  RowBox[{"\"\<Pluto average \>\"", "<>", 
   RowBox[{"gb", "[", 
    RowBox[{"[", 
     RowBox[{"1", ",", "1", ",", "1"}], "]"}], "]"}], "<>", 
   "\"\</ average \>\"", "<>", 
   RowBox[{"gb", "[", 
    RowBox[{"[", 
     RowBox[{"2", ",", "1", ",", "1"}], "]"}], "]"}], "<>", "\"\<=\>\"", "<>", 
   RowBox[{"ToString", "[", 
    RowBox[{"N", "[", 
     RowBox[{
      RowBox[{"Mean", "[", 
       RowBox[{"E", "^", 
        RowBox[{"gb", "[", 
         RowBox[{"[", 
          RowBox[{"1", ",", "All", ",", "2"}], "]"}], "]"}]}], "]"}], "/", 
      RowBox[{"Mean", "[", 
       RowBox[{"E", "^", 
        RowBox[{"gb", "[", 
         RowBox[{"[", 
          RowBox[{"2", ",", "All", ",", "2"}], "]"}], "]"}]}], "]"}]}], "]"}],
     "]"}], 
   RowBox[{"(*", 
    RowBox[{"Neptune", " ", "RATIO"}], "*)"}]}]}]], "Input",
 CellChangeTimes->{{3.709918054294883*^9, 3.7099180635047536`*^9}, {
  3.7099181878930216`*^9, 3.7099181897403975`*^9}, {3.709925879155998*^9, 
  3.7099258842360296`*^9}}],

Cell[BoxData["\<\"Pluto average prograde/ average retrograde=1.37358\"\>"], \
"Output",
 CellChangeTimes->{
  3.7099180694509664`*^9, 3.709918191412739*^9, {3.7099258849721785`*^9, 
   3.709925898333895*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell["Predictor function to test model on 3 years of future data", \
"Subchapter",
 CellChangeTimes->{{3.709928359259167*^9, 3.7099283757975254`*^9}, {
   3.7099371298238373`*^9, 3.709937143137542*^9}, 3.709938629303444*^9}],

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"months", "=", 
    RowBox[{"{", 
     RowBox[{
     "\"\<Jan\>\"", ",", "\"\<Feb\>\"", ",", "\"\<Mar\>\"", ",", 
      "\"\<Apr\>\"", ",", "\"\<May\>\"", ",", "\"\<Jun\>\"", ",", 
      "\"\<Jul\>\"", ",", "\"\<Aug\>\"", ",", "\"\<Sep\>\"", ",", 
      "\"\<Oct\>\"", ",", "\"\<Nov\>\"", ",", "\"\<Dec\>\""}], "}"}]}], ";", 
   RowBox[{"years", "=", 
    RowBox[{"{", "}"}]}], ";"}], "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{
    RowBox[{"For", "[", 
     RowBox[{
      RowBox[{"year", "=", "1987"}], ",", 
      RowBox[{"year", "\[LessEqual]", "1987"}], ",", 
      RowBox[{"year", "++"}], ",", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"rawyear", "=", 
        RowBox[{"{", "}"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"For", "[", 
        RowBox[{
         RowBox[{"monthnum", "=", "10"}], ",", 
         RowBox[{"monthnum", "\[LessEqual]", "12"}], ",", 
         RowBox[{"monthnum", "++"}], ",", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"month", "=", 
           RowBox[{"months", "[", 
            RowBox[{"[", "monthnum", "]"}], "]"}]}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"rawmonth", "=", 
           RowBox[{"Import", "[", 
            RowBox[{
             RowBox[{"ToString", "[", "year", "]"}], "<>", "month", "<>", 
             "\"\<.csv\>\""}], "]"}]}], ";", 
          RowBox[{"(*", "CHECK", "*)"}], "\[IndentingNewLine]", 
          RowBox[{"rawmonth2", "=", 
           RowBox[{
            RowBox[{"Drop", "[", 
             RowBox[{"rawmonth", ",", "1"}], "]"}], "[", 
            RowBox[{"[", 
             RowBox[{"All", ",", 
              RowBox[{"{", 
               RowBox[{"1", ",", "2", ",", "3", ",", "4"}], "}"}]}], "]"}], 
            "]"}]}], ";", "\[IndentingNewLine]", 
          RowBox[{"rawmonth3", "=", 
           RowBox[{"Table", "[", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{
               RowBox[{"rawmonth2", "[", 
                RowBox[{"[", 
                 RowBox[{"i", ",", 
                  RowBox[{"{", 
                   RowBox[{"1", ",", "2", ",", "3"}], "}"}]}], "]"}], "]"}], 
               ",", 
               RowBox[{"rawmonth2", "[", 
                RowBox[{"[", 
                 RowBox[{"i", ",", "4"}], "]"}], "]"}]}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"i", ",", "1", ",", 
               RowBox[{"Length", "[", "rawmonth2", "]"}]}], "}"}]}], "]"}]}], 
          ";", "\[IndentingNewLine]", 
          RowBox[{"monthgathers", "=", 
           RowBox[{"GatherBy", "[", 
            RowBox[{"rawmonth3", ",", "First"}], "]"}]}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"monthavgs", "=", 
           RowBox[{"Table", "[", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{
               RowBox[{"monthgathers", "[", 
                RowBox[{"[", 
                 RowBox[{"i", ",", "1", ",", "1"}], "]"}], "]"}], ",", 
               RowBox[{"N", "[", 
                RowBox[{"Mean", "[", 
                 RowBox[{"monthgathers", "[", 
                  RowBox[{"[", 
                   RowBox[{"i", ",", "All", ",", "2"}], "]"}], "]"}], "]"}], 
                "]"}]}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"i", ",", "1", ",", 
               RowBox[{"Length", "[", "monthgathers", "]"}]}], "}"}]}], 
            "]"}]}], ";", "\[IndentingNewLine]", 
          RowBox[{"AppendTo", "[", 
           RowBox[{"years", ",", "monthavgs"}], "]"}]}]}], "]"}]}]}], 
     RowBox[{"(*", "CHECK", "*)"}], "\[IndentingNewLine]", "]"}], ";"}], 
   "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"For", "[", 
   RowBox[{
    RowBox[{"year", "=", "2011"}], ",", 
    RowBox[{"year", "\[LessEqual]", "2013"}], ",", 
    RowBox[{"year", "++"}], ",", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"rawyear", "=", 
      RowBox[{"{", "}"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"For", "[", 
      RowBox[{
       RowBox[{"monthnum", "=", "1"}], ",", 
       RowBox[{"monthnum", "<=", "12"}], ",", 
       RowBox[{"monthnum", "++"}], ",", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"month", "=", 
         RowBox[{"months", "[", 
          RowBox[{"[", "monthnum", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
        RowBox[{"rawmonth", "=", 
         RowBox[{"Import", "[", 
          RowBox[{
           RowBox[{"ToString", "[", "year", "]"}], "<>", "month", "<>", 
           "\"\<.csv\>\""}], "]"}]}], ";", 
        RowBox[{"(*", "CHECK", "*)"}], "\[IndentingNewLine]", 
        RowBox[{"rawmonth2", "=", 
         RowBox[{
          RowBox[{"Drop", "[", 
           RowBox[{"rawmonth", ",", "1"}], "]"}], "[", 
          RowBox[{"[", 
           RowBox[{"All", ",", 
            RowBox[{"{", 
             RowBox[{"1", ",", "2", ",", "3", ",", "4"}], "}"}]}], "]"}], 
          "]"}]}], ";", "\[IndentingNewLine]", 
        RowBox[{"rawmonth3", "=", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"rawmonth2", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", 
                RowBox[{"{", 
                 RowBox[{"1", ",", "2", ",", "3"}], "}"}]}], "]"}], "]"}], 
             ",", 
             RowBox[{"rawmonth2", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", "4"}], "]"}], "]"}]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"i", ",", "1", ",", 
             RowBox[{"Length", "[", "rawmonth2", "]"}]}], "}"}]}], "]"}]}], 
        ";", "\[IndentingNewLine]", 
        RowBox[{"monthgathers", "=", 
         RowBox[{"GatherBy", "[", 
          RowBox[{"rawmonth3", ",", "First"}], "]"}]}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"monthavgs", "=", 
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"monthgathers", "[", 
              RowBox[{"[", 
               RowBox[{"i", ",", "1", ",", "1"}], "]"}], "]"}], ",", 
             RowBox[{"N", "[", 
              RowBox[{"Mean", "[", 
               RowBox[{"monthgathers", "[", 
                RowBox[{"[", 
                 RowBox[{"i", ",", "All", ",", "2"}], "]"}], "]"}], "]"}], 
              "]"}]}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"i", ",", "1", ",", 
             RowBox[{"Length", "[", "monthgathers", "]"}]}], "}"}]}], "]"}]}],
         ";", "\[IndentingNewLine]", 
        RowBox[{"AppendTo", "[", 
         RowBox[{"years", ",", "monthavgs"}], "]"}]}]}], "]"}]}]}], 
   RowBox[{"(*", "CHECK", "*)"}], "\[IndentingNewLine]", "]"}], 
  ";"}]}], "Input",
 CellChangeTimes->{{3.7099284912849874`*^9, 3.7099285032694206`*^9}, 
   3.709929731017828*^9}],

Cell[CellGroupData[{

Cell[BoxData["years"], "Input",
 CellChangeTimes->{{3.709929755560815*^9, 3.709929757084124*^9}}],

Cell[BoxData[
 InterpretationBox[
  TagBox[
   FrameBox[GridBox[{
      {
       ItemBox[
        TagBox[
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"2011", ",", "1", ",", "4"}], "}"}], ",", 
               "0.006487994178995877`"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"2011", ",", "1", ",", "5"}], "}"}], ",", 
               "0.00862279843444227`"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"2011", ",", "1", ",", "6"}], "}"}], ",", 
               "0.010141382807373383`"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"2011", ",", "1", ",", "7"}], "}"}], ",", 
               "0.023928571428571428`"}], "}"}], ",", 
             TemplateBox[{"24"},
              "OutputSizeLimit`Skeleton",
              DisplayFunction->(FrameBox[
                
                RowBox[{
                 "\" \[CenterEllipsis]\"", #, "\"\[CenterEllipsis] \""}], 
                Background -> GrayLevel[0.75], 
                BaseStyle -> {
                 "Deploy", FontColor -> GrayLevel[1], FontSize -> Smaller, 
                  ShowStringCharacters -> False}, BaselinePosition -> 
                Baseline, ContentPadding -> False, 
                FrameMargins -> {{1, 1}, {1, 2}}, FrameStyle -> None, 
                RoundingRadius -> 7]& )], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"2011", ",", "1", ",", "3"}], "}"}], ",", 
               "0.00839997698636442`"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"2011", ",", "1", ",", "2"}], "}"}], ",", 
               "0.010943751470934338`"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"2011", ",", "1", ",", "1"}], "}"}], ",", 
               "0.013034188034188035`"}], "}"}]}], "}"}], ",", 
           RowBox[{"{", 
            TemplateBox[{"1"},
             "OutputSizeLimit`Skeleton",
             DisplayFunction->(FrameBox[
               
               RowBox[{
                "\" \[CenterEllipsis]\"", #, "\"\[CenterEllipsis] \""}], 
               Background -> GrayLevel[0.75], 
               BaseStyle -> {
                "Deploy", FontColor -> GrayLevel[1], FontSize -> Smaller, 
                 ShowStringCharacters -> False}, BaselinePosition -> Baseline,
                ContentPadding -> False, FrameMargins -> {{1, 1}, {1, 2}}, 
               FrameStyle -> None, RoundingRadius -> 7]& )], "}"}], ",", 
           TemplateBox[{"33"},
            "OutputSizeLimit`Skeleton",
            DisplayFunction->(FrameBox[
              RowBox[{"\" \[CenterEllipsis]\"", #, "\"\[CenterEllipsis] \""}],
               Background -> GrayLevel[0.75], 
              BaseStyle -> {
               "Deploy", FontColor -> GrayLevel[1], FontSize -> Smaller, 
                ShowStringCharacters -> False}, BaselinePosition -> Baseline, 
              ContentPadding -> False, FrameMargins -> {{1, 1}, {1, 2}}, 
              FrameStyle -> None, RoundingRadius -> 7]& )], ",", 
           RowBox[{"{", 
            TemplateBox[{"1"},
             "OutputSizeLimit`Skeleton",
             DisplayFunction->(FrameBox[
               
               RowBox[{
                "\" \[CenterEllipsis]\"", #, "\"\[CenterEllipsis] \""}], 
               Background -> GrayLevel[0.75], 
               BaseStyle -> {
                "Deploy", FontColor -> GrayLevel[1], FontSize -> Smaller, 
                 ShowStringCharacters -> False}, BaselinePosition -> Baseline,
                ContentPadding -> False, FrameMargins -> {{1, 1}, {1, 2}}, 
               FrameStyle -> None, RoundingRadius -> 7]& )], "}"}]}], "}"}],
         Short[#, 5]& ],
        BaseStyle->{Deployed -> False},
        StripOnInput->False]},
      {GridBox[{
         {
          TagBox[
           TooltipBox[
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource[
                "FEStrings", "sizeBriefExplanation"], StandardForm],
               ImageSizeCache->{132., {6., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarCategory",
             StripOnInput->False],
            StyleBox[
             DynamicBox[
              ToBoxes[
               FEPrivate`FrontEndResource["FEStrings", "sizeExplanation"], 
               StandardForm]], DynamicUpdating -> True, StripOnInput -> 
             False]],
           Annotation[#, 
            Style[
             Dynamic[
              FEPrivate`FrontEndResource["FEStrings", "sizeExplanation"]], 
             DynamicUpdating -> True], "Tooltip"]& ], 
          ButtonBox[
           PaneSelectorBox[{False->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowLess"], 
                StandardForm],
               ImageSizeCache->{108., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControl",
             StripOnInput->False], True->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowLess"], 
                StandardForm],
               ImageSizeCache->{108., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControlActive",
             StripOnInput->False]}, Dynamic[
             CurrentValue["MouseOver"]],
            Alignment->Center,
            FrameMargins->0,
            ImageSize->{Automatic, 25}],
           Appearance->None,
           
           ButtonFunction:>OutputSizeLimit`ButtonFunction[
            OutputSizeLimit`Defer, 123, 15167562623507322558, 5/2],
           Enabled->True,
           Evaluator->Automatic,
           Method->"Queued"], 
          ButtonBox[
           PaneSelectorBox[{False->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowMore"], 
                StandardForm],
               ImageSizeCache->{126., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControl",
             StripOnInput->False], True->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowMore"], 
                StandardForm]],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControlActive",
             StripOnInput->False]}, Dynamic[
             CurrentValue["MouseOver"]],
            Alignment->Center,
            FrameMargins->0,
            ImageSize->{Automatic, 25}],
           Appearance->None,
           
           ButtonFunction:>OutputSizeLimit`ButtonFunction[
            OutputSizeLimit`Defer, 123, 15167562623507322558, 5 2],
           Enabled->True,
           Evaluator->Automatic,
           Method->"Queued"], 
          ButtonBox[
           PaneSelectorBox[{False->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowAll"], 
                StandardForm],
               ImageSizeCache->{93., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControl",
             StripOnInput->False], True->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowAll"], 
                StandardForm],
               ImageSizeCache->{93., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControlActive",
             StripOnInput->False]}, Dynamic[
             CurrentValue["MouseOver"]],
            Alignment->Center,
            FrameMargins->0,
            ImageSize->{Automatic, 25}],
           Appearance->None,
           
           ButtonFunction:>OutputSizeLimit`ButtonFunction[
            OutputSizeLimit`Defer, 123, 15167562623507322558, Infinity],
           Enabled->True,
           Evaluator->Automatic,
           Method->"Queued"], 
          ButtonBox[
           PaneSelectorBox[{False->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeChangeLimit"], 
                StandardForm],
               ImageSizeCache->{163., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControl",
             StripOnInput->False], True->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeChangeLimit"], 
                StandardForm],
               ImageSizeCache->{163., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControlActive",
             StripOnInput->False]}, Dynamic[
             CurrentValue["MouseOver"]],
            Alignment->Center,
            FrameMargins->0,
            ImageSize->{Automatic, 25}],
           Appearance->None,
           ButtonFunction:>FrontEndExecute[{
              FrontEnd`SetOptions[
              FrontEnd`$FrontEnd, 
               FrontEnd`PreferencesSettings -> {"Page" -> "Evaluation"}], 
              FrontEnd`FrontEndToken["PreferencesDialog"]}],
           Evaluator->None,
           Method->"Preemptive"]}
        },
        AutoDelete->False,
        FrameStyle->GrayLevel[0.85],
        GridBoxDividers->{"Columns" -> {False, {True}}},
        GridBoxItemSize->{"Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}},
        GridBoxSpacings->{"Columns" -> {{2}}}]}
     },
     DefaultBaseStyle->"Column",
     GridBoxAlignment->{
      "Columns" -> {{Left}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
       "RowsIndexed" -> {}},
     GridBoxDividers->{
      "Columns" -> {{False}}, "ColumnsIndexed" -> {}, "Rows" -> {{False}}, 
       "RowsIndexed" -> {}},
     GridBoxItemSize->{
      "Columns" -> {{Automatic}}, "ColumnsIndexed" -> {}, "Rows" -> {{1.}}, 
       "RowsIndexed" -> {}},
     GridBoxSpacings->{"Columns" -> {
         Offset[0.27999999999999997`], {
          Offset[0.5599999999999999]}, 
         Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
         Offset[0.2], 
         Offset[1.2], {
          Offset[0.4]}, 
         Offset[0.2]}, "RowsIndexed" -> {}}],
    Background->RGBColor[0.9657, 0.9753, 0.9802],
    FrameMargins->{{12, 12}, {0, 15}},
    FrameStyle->GrayLevel[0.85],
    RoundingRadius->5,
    StripOnInput->False],
   Deploy,
   DefaultBaseStyle->"Deploy"],
  Out[123]]], "Output",
 CellChangeTimes->{3.7099299468456726`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"years0", "=", 
  RowBox[{"Flatten", "[", 
   RowBox[{"years", ",", "1"}], "]"}]}]], "Input",
 CellChangeTimes->{{3.7097728447983313`*^9, 3.7097728505835166`*^9}, {
   3.7097750161858664`*^9, 3.7097750176061573`*^9}, {3.7097750494136744`*^9, 
   3.7097750928245687`*^9}, 3.7098496717635264`*^9}],

Cell[BoxData[
 InterpretationBox[
  TagBox[
   FrameBox[GridBox[{
      {
       ItemBox[
        TagBox[
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"2011", ",", "1", ",", "4"}], "}"}], ",", 
             "0.006487994178995877`"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"2011", ",", "1", ",", "5"}], "}"}], ",", 
             "0.00862279843444227`"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"2011", ",", "1", ",", "6"}], "}"}], ",", 
             "0.010141382807373383`"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"2011", ",", "1", ",", "7"}], "}"}], ",", 
             "0.023928571428571428`"}], "}"}], ",", 
           TemplateBox[{"1088"},
            "OutputSizeLimit`Skeleton",
            DisplayFunction->(FrameBox[
              RowBox[{"\" \[CenterEllipsis]\"", #, "\"\[CenterEllipsis] \""}],
               Background -> GrayLevel[0.75], 
              BaseStyle -> {
               "Deploy", FontColor -> GrayLevel[1], FontSize -> Smaller, 
                ShowStringCharacters -> False}, BaselinePosition -> Baseline, 
              ContentPadding -> False, FrameMargins -> {{1, 1}, {1, 2}}, 
              FrameStyle -> None, RoundingRadius -> 7]& )], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"2013", ",", "12", ",", "17"}], "}"}], ",", 
             "0.027941353202740056`"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"2013", ",", "12", ",", "18"}], "}"}], ",", 
             "0.004860338466943843`"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"2013", ",", "12", ",", "14"}], "}"}], ",", 
             "0.05102947711450156`"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"2013", ",", "12", ",", "13"}], "}"}], ",", 
             "0.007816065723413966`"}], "}"}]}], "}"}],
         Short[#, 5]& ],
        BaseStyle->{Deployed -> False},
        StripOnInput->False]},
      {GridBox[{
         {
          TagBox[
           TooltipBox[
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource[
                "FEStrings", "sizeBriefExplanation"], StandardForm],
               ImageSizeCache->{132., {6., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarCategory",
             StripOnInput->False],
            StyleBox[
             DynamicBox[
              ToBoxes[
               FEPrivate`FrontEndResource["FEStrings", "sizeExplanation"], 
               StandardForm]], DynamicUpdating -> True, StripOnInput -> 
             False]],
           Annotation[#, 
            Style[
             Dynamic[
              FEPrivate`FrontEndResource["FEStrings", "sizeExplanation"]], 
             DynamicUpdating -> True], "Tooltip"]& ], 
          ButtonBox[
           PaneSelectorBox[{False->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowLess"], 
                StandardForm],
               ImageSizeCache->{108., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControl",
             StripOnInput->False], True->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowLess"], 
                StandardForm]],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControlActive",
             StripOnInput->False]}, Dynamic[
             CurrentValue["MouseOver"]],
            Alignment->Center,
            FrameMargins->0,
            ImageSize->{Automatic, 25}],
           Appearance->None,
           
           ButtonFunction:>OutputSizeLimit`ButtonFunction[
            OutputSizeLimit`Defer, 126, 15167562623507322558, 5/2],
           Enabled->True,
           Evaluator->Automatic,
           Method->"Queued"], 
          ButtonBox[
           PaneSelectorBox[{False->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowMore"], 
                StandardForm],
               ImageSizeCache->{126., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControl",
             StripOnInput->False], True->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowMore"], 
                StandardForm],
               ImageSizeCache->{126., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControlActive",
             StripOnInput->False]}, Dynamic[
             CurrentValue["MouseOver"]],
            Alignment->Center,
            FrameMargins->0,
            ImageSize->{Automatic, 25}],
           Appearance->None,
           
           ButtonFunction:>OutputSizeLimit`ButtonFunction[
            OutputSizeLimit`Defer, 126, 15167562623507322558, 5 2],
           Enabled->True,
           Evaluator->Automatic,
           Method->"Queued"], 
          ButtonBox[
           PaneSelectorBox[{False->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowAll"], 
                StandardForm],
               ImageSizeCache->{93., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControl",
             StripOnInput->False], True->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowAll"], 
                StandardForm]],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControlActive",
             StripOnInput->False]}, Dynamic[
             CurrentValue["MouseOver"]],
            Alignment->Center,
            FrameMargins->0,
            ImageSize->{Automatic, 25}],
           Appearance->None,
           
           ButtonFunction:>OutputSizeLimit`ButtonFunction[
            OutputSizeLimit`Defer, 126, 15167562623507322558, Infinity],
           Enabled->True,
           Evaluator->Automatic,
           Method->"Queued"], 
          ButtonBox[
           PaneSelectorBox[{False->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeChangeLimit"], 
                StandardForm],
               ImageSizeCache->{163., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControl",
             StripOnInput->False], True->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeChangeLimit"], 
                StandardForm]],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControlActive",
             StripOnInput->False]}, Dynamic[
             CurrentValue["MouseOver"]],
            Alignment->Center,
            FrameMargins->0,
            ImageSize->{Automatic, 25}],
           Appearance->None,
           ButtonFunction:>FrontEndExecute[{
              FrontEnd`SetOptions[
              FrontEnd`$FrontEnd, 
               FrontEnd`PreferencesSettings -> {"Page" -> "Evaluation"}], 
              FrontEnd`FrontEndToken["PreferencesDialog"]}],
           Evaluator->None,
           Method->"Preemptive"]}
        },
        AutoDelete->False,
        FrameStyle->GrayLevel[0.85],
        GridBoxDividers->{"Columns" -> {False, {True}}},
        GridBoxItemSize->{"Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}},
        GridBoxSpacings->{"Columns" -> {{2}}}]}
     },
     DefaultBaseStyle->"Column",
     GridBoxAlignment->{
      "Columns" -> {{Left}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
       "RowsIndexed" -> {}},
     GridBoxDividers->{
      "Columns" -> {{False}}, "ColumnsIndexed" -> {}, "Rows" -> {{False}}, 
       "RowsIndexed" -> {}},
     GridBoxItemSize->{
      "Columns" -> {{Automatic}}, "ColumnsIndexed" -> {}, "Rows" -> {{1.}}, 
       "RowsIndexed" -> {}},
     GridBoxSpacings->{"Columns" -> {
         Offset[0.27999999999999997`], {
          Offset[0.5599999999999999]}, 
         Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
         Offset[0.2], 
         Offset[1.2], {
          Offset[0.4]}, 
         Offset[0.2]}, "RowsIndexed" -> {}}],
    Background->RGBColor[0.9657, 0.9753, 0.9802],
    FrameMargins->{{12, 12}, {0, 15}},
    FrameStyle->GrayLevel[0.85],
    RoundingRadius->5,
    StripOnInput->False],
   Deploy,
   DefaultBaseStyle->"Deploy"],
  Out[126]]], "Output",
 CellChangeTimes->{3.7099302742661853`*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"dates2yr", "=", 
    RowBox[{"Table", "[", 
     RowBox[{
      RowBox[{"DateObject", "[", 
       RowBox[{
        RowBox[{"years0", "[", 
         RowBox[{"[", 
          RowBox[{"i", ",", "1"}], "]"}], "]"}], ",", 
        RowBox[{"TimeObject", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"12", ",", "0", ",", "0"}], "}"}], ",", 
          RowBox[{"TimeZone", "\[Rule]", "\"\<America/Chicago\>\""}]}], 
         "]"}]}], "]"}], ",", 
      RowBox[{"{", 
       RowBox[{"i", ",", "1", ",", 
        RowBox[{"Length", "[", "years0", "]"}]}], "}"}]}], "]"}]}], ";"}], 
  " "}]], "Input",
 CellChangeTimes->{{3.709754628673974*^9, 3.7097546537161055`*^9}, {
  3.7097708340223227`*^9, 3.7097708412618065`*^9}, {3.7097709256168137`*^9, 
  3.7097709355598507`*^9}, {3.7097751066253967`*^9, 3.709775111530402*^9}, {
  3.709929877813649*^9, 3.7099298785287943`*^9}}],

Cell[CellGroupData[{

Cell[BoxData["dates2yr"], "Input",
 CellChangeTimes->{{3.7099302829549537`*^9, 3.7099302850353727`*^9}}],

Cell[BoxData[
 InterpretationBox[
  TagBox[
   FrameBox[GridBox[{
      {
       ItemBox[
        TagBox[
         RowBox[{"{", 
          RowBox[{
           TemplateBox[{RowBox[{"\"Tue 4 Jan 2011 12:00:00\"", 
               StyleBox["\"CST\"", FontColor -> GrayLevel[0.5]]}],
             RowBox[{"DateObject", "[", 
               RowBox[{
                 RowBox[{"{", 
                   RowBox[{"2011", ",", "1", ",", "4"}], "}"}], ",", 
                 RowBox[{"TimeObject", "[", 
                   RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                   "]"}], ",", 
                 RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
               "]"}]},
            "DateObject",
            Editable->False], ",", 
           TemplateBox[{RowBox[{"\"Wed 5 Jan 2011 12:00:00\"", 
               StyleBox["\"CST\"", FontColor -> GrayLevel[0.5]]}],
             RowBox[{"DateObject", "[", 
               RowBox[{
                 RowBox[{"{", 
                   RowBox[{"2011", ",", "1", ",", "5"}], "}"}], ",", 
                 RowBox[{"TimeObject", "[", 
                   RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                   "]"}], ",", 
                 RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
               "]"}]},
            "DateObject",
            Editable->False], ",", 
           TemplateBox[{RowBox[{"\"Thu 6 Jan 2011 12:00:00\"", 
               StyleBox["\"CST\"", FontColor -> GrayLevel[0.5]]}],
             RowBox[{"DateObject", "[", 
               RowBox[{
                 RowBox[{"{", 
                   RowBox[{"2011", ",", "1", ",", "6"}], "}"}], ",", 
                 RowBox[{"TimeObject", "[", 
                   RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                   "]"}], ",", 
                 RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
               "]"}]},
            "DateObject",
            Editable->False], ",", 
           TemplateBox[{RowBox[{"\"Fri 7 Jan 2011 12:00:00\"", 
               StyleBox["\"CST\"", FontColor -> GrayLevel[0.5]]}],
             RowBox[{"DateObject", "[", 
               RowBox[{
                 RowBox[{"{", 
                   RowBox[{"2011", ",", "1", ",", "7"}], "}"}], ",", 
                 RowBox[{"TimeObject", "[", 
                   RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                   "]"}], ",", 
                 RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
               "]"}]},
            "DateObject",
            Editable->False], ",", 
           TemplateBox[{RowBox[{"\"Sat 8 Jan 2011 12:00:00\"", 
               StyleBox["\"CST\"", FontColor -> GrayLevel[0.5]]}],
             RowBox[{"DateObject", "[", 
               RowBox[{
                 RowBox[{"{", 
                   RowBox[{"2011", ",", "1", ",", "8"}], "}"}], ",", 
                 RowBox[{"TimeObject", "[", 
                   RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                   "]"}], ",", 
                 RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
               "]"}]},
            "DateObject",
            Editable->False], ",", 
           TemplateBox[{"1087"},
            "OutputSizeLimit`Skeleton",
            DisplayFunction->(FrameBox[
              RowBox[{"\" \[CenterEllipsis]\"", #, "\"\[CenterEllipsis] \""}],
               Background -> GrayLevel[0.75], 
              BaseStyle -> {
               "Deploy", FontColor -> GrayLevel[1], FontSize -> Smaller, 
                ShowStringCharacters -> False}, BaselinePosition -> Baseline, 
              ContentPadding -> False, FrameMargins -> {{1, 1}, {1, 2}}, 
              FrameStyle -> None, RoundingRadius -> 7]& )], ",", 
           TemplateBox[{RowBox[{"\"Tue 17 Dec 2013 12:00:00\"", 
               StyleBox["\"CST\"", FontColor -> GrayLevel[0.5]]}],
             RowBox[{"DateObject", "[", 
               RowBox[{
                 RowBox[{"{", 
                   RowBox[{"2013", ",", "12", ",", "17"}], "}"}], ",", 
                 RowBox[{"TimeObject", "[", 
                   RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                   "]"}], ",", 
                 RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
               "]"}]},
            "DateObject",
            Editable->False], ",", 
           TemplateBox[{RowBox[{"\"Wed 18 Dec 2013 12:00:00\"", 
               StyleBox["\"CST\"", FontColor -> GrayLevel[0.5]]}],
             RowBox[{"DateObject", "[", 
               RowBox[{
                 RowBox[{"{", 
                   RowBox[{"2013", ",", "12", ",", "18"}], "}"}], ",", 
                 RowBox[{"TimeObject", "[", 
                   RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                   "]"}], ",", 
                 RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
               "]"}]},
            "DateObject",
            Editable->False], ",", 
           TemplateBox[{RowBox[{"\"Sat 14 Dec 2013 12:00:00\"", 
               StyleBox["\"CST\"", FontColor -> GrayLevel[0.5]]}],
             RowBox[{"DateObject", "[", 
               RowBox[{
                 RowBox[{"{", 
                   RowBox[{"2013", ",", "12", ",", "14"}], "}"}], ",", 
                 RowBox[{"TimeObject", "[", 
                   RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                   "]"}], ",", 
                 RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
               "]"}]},
            "DateObject",
            Editable->False], ",", 
           TemplateBox[{RowBox[{"\"Fri 13 Dec 2013 12:00:00\"", 
               StyleBox["\"CST\"", FontColor -> GrayLevel[0.5]]}],
             RowBox[{"DateObject", "[", 
               RowBox[{
                 RowBox[{"{", 
                   RowBox[{"2013", ",", "12", ",", "13"}], "}"}], ",", 
                 RowBox[{"TimeObject", "[", 
                   RowBox[{
                    RowBox[{"{", 
                    RowBox[{"12", ",", "0", ",", "0.`"}], "}"}], ",", 
                    RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
                   "]"}], ",", 
                 RowBox[{"TimeZone", "\[Rule]", "\"America/Chicago\""}]}], 
               "]"}]},
            "DateObject",
            Editable->False]}], "}"}],
         Short[#, 5]& ],
        BaseStyle->{Deployed -> False},
        StripOnInput->False]},
      {GridBox[{
         {
          TagBox[
           TooltipBox[
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource[
                "FEStrings", "sizeBriefExplanation"], StandardForm],
               ImageSizeCache->{132., {6., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarCategory",
             StripOnInput->False],
            StyleBox[
             DynamicBox[
              ToBoxes[
               FEPrivate`FrontEndResource["FEStrings", "sizeExplanation"], 
               StandardForm]], DynamicUpdating -> True, StripOnInput -> 
             False]],
           Annotation[#, 
            Style[
             Dynamic[
              FEPrivate`FrontEndResource["FEStrings", "sizeExplanation"]], 
             DynamicUpdating -> True], "Tooltip"]& ], 
          ButtonBox[
           PaneSelectorBox[{False->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowLess"], 
                StandardForm],
               ImageSizeCache->{108., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControl",
             StripOnInput->False], True->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowLess"], 
                StandardForm]],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControlActive",
             StripOnInput->False]}, Dynamic[
             CurrentValue["MouseOver"]],
            Alignment->Center,
            FrameMargins->0,
            ImageSize->{Automatic, 25}],
           Appearance->None,
           
           ButtonFunction:>OutputSizeLimit`ButtonFunction[
            OutputSizeLimit`Defer, 128, 15167562623507322558, 5/2],
           Enabled->True,
           Evaluator->Automatic,
           Method->"Queued"], 
          ButtonBox[
           PaneSelectorBox[{False->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowMore"], 
                StandardForm],
               ImageSizeCache->{126., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControl",
             StripOnInput->False], True->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowMore"], 
                StandardForm],
               ImageSizeCache->{126., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControlActive",
             StripOnInput->False]}, Dynamic[
             CurrentValue["MouseOver"]],
            Alignment->Center,
            FrameMargins->0,
            ImageSize->{Automatic, 25}],
           Appearance->None,
           
           ButtonFunction:>OutputSizeLimit`ButtonFunction[
            OutputSizeLimit`Defer, 128, 15167562623507322558, 5 2],
           Enabled->True,
           Evaluator->Automatic,
           Method->"Queued"], 
          ButtonBox[
           PaneSelectorBox[{False->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowAll"], 
                StandardForm],
               ImageSizeCache->{93., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControl",
             StripOnInput->False], True->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowAll"], 
                StandardForm],
               ImageSizeCache->{93., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControlActive",
             StripOnInput->False]}, Dynamic[
             CurrentValue["MouseOver"]],
            Alignment->Center,
            FrameMargins->0,
            ImageSize->{Automatic, 25}],
           Appearance->None,
           
           ButtonFunction:>OutputSizeLimit`ButtonFunction[
            OutputSizeLimit`Defer, 128, 15167562623507322558, Infinity],
           Enabled->True,
           Evaluator->Automatic,
           Method->"Queued"], 
          ButtonBox[
           PaneSelectorBox[{False->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeChangeLimit"], 
                StandardForm],
               ImageSizeCache->{163., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControl",
             StripOnInput->False], True->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeChangeLimit"], 
                StandardForm],
               ImageSizeCache->{163., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControlActive",
             StripOnInput->False]}, Dynamic[
             CurrentValue["MouseOver"]],
            Alignment->Center,
            FrameMargins->0,
            ImageSize->{Automatic, 25}],
           Appearance->None,
           ButtonFunction:>FrontEndExecute[{
              FrontEnd`SetOptions[
              FrontEnd`$FrontEnd, 
               FrontEnd`PreferencesSettings -> {"Page" -> "Evaluation"}], 
              FrontEnd`FrontEndToken["PreferencesDialog"]}],
           Evaluator->None,
           Method->"Preemptive"]}
        },
        AutoDelete->False,
        FrameStyle->GrayLevel[0.85],
        GridBoxDividers->{"Columns" -> {False, {True}}},
        GridBoxItemSize->{"Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}},
        GridBoxSpacings->{"Columns" -> {{2}}}]}
     },
     DefaultBaseStyle->"Column",
     GridBoxAlignment->{
      "Columns" -> {{Left}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
       "RowsIndexed" -> {}},
     GridBoxDividers->{
      "Columns" -> {{False}}, "ColumnsIndexed" -> {}, "Rows" -> {{False}}, 
       "RowsIndexed" -> {}},
     GridBoxItemSize->{
      "Columns" -> {{Automatic}}, "ColumnsIndexed" -> {}, "Rows" -> {{1.}}, 
       "RowsIndexed" -> {}},
     GridBoxSpacings->{"Columns" -> {
         Offset[0.27999999999999997`], {
          Offset[0.5599999999999999]}, 
         Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
         Offset[0.2], 
         Offset[1.2], {
          Offset[0.4]}, 
         Offset[0.2]}, "RowsIndexed" -> {}}],
    Background->RGBColor[0.9657, 0.9753, 0.9802],
    FrameMargins->{{12, 12}, {0, 15}},
    FrameStyle->GrayLevel[0.85],
    RoundingRadius->5,
    StripOnInput->False],
   Deploy,
   DefaultBaseStyle->"Deploy"],
  Out[128]]], "Output",
 CellChangeTimes->{3.70993028654368*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"flightMerRx2yr", "=", 
   RowBox[{
    RowBox[{
     RowBox[{"PlanetData", "[", 
      RowBox[{
       TemplateBox[{"\"Mercury\"",RowBox[{"Entity", "[", 
           RowBox[{"\"Planet\"", ",", "\"Mercury\""}], "]"}],
         "\"Entity[\\\"Planet\\\", \\\"Mercury\\\"]\"","\"planet\""},
        "Entity"], ",", 
       RowBox[{"EntityProperty", "[", 
        RowBox[{
        "\"\<Planet\>\"", ",", "\"\<RetrogradeApparentMotionQuery\>\"", ",", 
         RowBox[{"{", 
          RowBox[{"\"\<Date\>\"", "\[Rule]", "#"}], "}"}]}], "]"}]}], "]"}], 
     "&"}], "/@", "dates2yr"}]}], ";"}]], "Input",
 CellChangeTimes->{{3.709754591337324*^9, 3.7097545993799725`*^9}, {
  3.7097546583700604`*^9, 3.7097546629447217`*^9}, {3.7099299615786653`*^9, 
  3.709929983934206*^9}}],

Cell[BoxData[
 TemplateBox[{
  "EntityValue","nodat",
   "\"Unable to download data. Some or all results may be missing.\"",2,129,
   41,15167562623507322558,"Kernel 2"},
  "MessageTemplate"]], "Message", "MSG",
 CellChangeTimes->{3.7099310524512663`*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"Export", "[", 
   RowBox[{"\"\<2 yr MerRx.mx\>\"", ",", "flightMerRx2yr"}], "]"}], 
  ";"}]], "Input",
 CellChangeTimes->{{3.7097554536026173`*^9, 3.709755458805684*^9}, {
  3.709755508496484*^9, 3.709755513531516*^9}, {3.7098140692696266`*^9, 
  3.709814069441662*^9}, {3.709929969122201*^9, 3.7099300105116053`*^9}, {
  3.709930060739809*^9, 3.7099300613189263`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"flightVenRx2yr", "=", 
   RowBox[{
    RowBox[{
     RowBox[{"PlanetData", "[", 
      RowBox[{
       RowBox[{"Entity", "[", 
        RowBox[{"\"\<Planet\>\"", ",", " ", "\"\<Venus\>\""}], "]"}], ",", 
       RowBox[{"EntityProperty", "[", 
        RowBox[{
        "\"\<Planet\>\"", ",", "\"\<RetrogradeApparentMotionQuery\>\"", ",", 
         RowBox[{"{", 
          RowBox[{"\"\<Date\>\"", "\[Rule]", "#"}], "}"}]}], "]"}]}], "]"}], 
     "&"}], "/@", "dates2yr"}]}], ";"}]], "Input",
 CellChangeTimes->{{3.7095945490185237`*^9, 3.709594569452712*^9}, {
  3.70975522672911*^9, 3.7097552459670515`*^9}, {3.7099298846300335`*^9, 
  3.709929885634237*^9}, {3.7099299884971323`*^9, 3.709929989094263*^9}}],

Cell[BoxData[
 TemplateBox[{
  "EntityValue","nodat",
   "\"Unable to download data. Some or all results may be missing.\"",2,131,
   42,15167562623507322558,"Kernel 2"},
  "MessageTemplate"]], "Message", "MSG",
 CellChangeTimes->{3.7099312722589197`*^9}],

Cell[BoxData[
 TemplateBox[{
  "EntityValue","nodat",
   "\"Unable to download data. Some or all results may be missing.\"",2,131,
   43,15167562623507322558,"Kernel 2"},
  "MessageTemplate"]], "Message", "MSG",
 CellChangeTimes->{3.709931274290332*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"Export", "[", 
   RowBox[{"\"\<2 yr VenRx.mx\>\"", ",", "flightVenRx2yr"}], "]"}], 
  ";"}]], "Input",
 CellChangeTimes->{{3.7097554536026173`*^9, 3.709755458805684*^9}, {
  3.709755508496484*^9, 3.709755513531516*^9}, {3.7098140692696266`*^9, 
  3.709814069441662*^9}, {3.709929969122201*^9, 3.7099299939752455`*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"flightMarRx2yr", "=", 
   RowBox[{
    RowBox[{
     RowBox[{"PlanetData", "[", 
      RowBox[{
       TemplateBox[{"\"Mars\"",RowBox[{"Entity", "[", 
           RowBox[{"\"Planet\"", ",", "\"Mars\""}], "]"}],
         "\"Entity[\\\"Planet\\\", \\\"Mars\\\"]\"","\"planet\""},
        "Entity"], ",", 
       RowBox[{"EntityProperty", "[", 
        RowBox[{
        "\"\<Planet\>\"", ",", "\"\<RetrogradeApparentMotionQuery\>\"", ",", 
         RowBox[{"{", 
          RowBox[{"\"\<Date\>\"", "\[Rule]", "#"}], "}"}]}], "]"}]}], "]"}], 
     "&"}], "/@", "dates2yr"}]}], ";"}]], "Input",
 CellChangeTimes->{{3.709594635420227*^9, 3.709594654341104*^9}, {
  3.70992989150443*^9, 3.709929892176567*^9}, {3.7099300709438815`*^9, 
  3.709930072248147*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"Export", "[", 
   RowBox[{"\"\<2 yr MarRx.mx\>\"", ",", "flightMarRx2yr"}], "]"}], 
  ";"}]], "Input",
 CellChangeTimes->{{3.7097554731752467`*^9, 3.7097554787203827`*^9}, {
  3.7097555183355002`*^9, 3.709755520417927*^9}, {3.709814075218845*^9, 
  3.709814075396881*^9}, {3.7099300827282753`*^9, 3.7099300874052258`*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"flightJupRx2yr", "=", 
   RowBox[{
    RowBox[{
     RowBox[{"PlanetData", "[", 
      RowBox[{
       TemplateBox[{"\"Jupiter\"",RowBox[{"Entity", "[", 
           RowBox[{"\"Planet\"", ",", "\"Jupiter\""}], "]"}],
         "\"Entity[\\\"Planet\\\", \\\"Jupiter\\\"]\"","\"planet\""},
        "Entity"], ",", 
       RowBox[{"EntityProperty", "[", 
        RowBox[{
        "\"\<Planet\>\"", ",", "\"\<RetrogradeApparentMotionQuery\>\"", ",", 
         RowBox[{"{", 
          RowBox[{"\"\<Date\>\"", "\[Rule]", "#"}], "}"}]}], "]"}]}], "]"}], 
     "&"}], "/@", "dates2yr"}]}], ";"}]], "Input",
 CellChangeTimes->{{3.7095946707884736`*^9, 3.709594701100684*^9}, {
  3.709929896506446*^9, 3.709929897252597*^9}, {3.7099301158730087`*^9, 
  3.709930116437123*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"Export", "[", 
   RowBox[{"\"\<2 yr JupRx.mx\>\"", ",", "flightJupRx2yr"}], "]"}], 
  ";"}]], "Input",
 CellChangeTimes->{{3.7097554947366643`*^9, 3.7097555262971325`*^9}, {
  3.7098140810590415`*^9, 3.709814081221074*^9}, {3.7099301106609507`*^9, 
  3.7099301284245577`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"flightSatRx2yr", "=", 
   RowBox[{
    RowBox[{
     RowBox[{"PlanetData", "[", 
      RowBox[{
       TemplateBox[{"\"Saturn\"",RowBox[{"Entity", "[", 
           RowBox[{"\"Planet\"", ",", "\"Saturn\""}], "]"}],
         "\"Entity[\\\"Planet\\\", \\\"Saturn\\\"]\"","\"planet\""},
        "Entity"], ",", 
       RowBox[{"EntityProperty", "[", 
        RowBox[{
        "\"\<Planet\>\"", ",", "\"\<RetrogradeApparentMotionQuery\>\"", ",", 
         RowBox[{"{", 
          RowBox[{"\"\<Date\>\"", "\[Rule]", "#"}], "}"}]}], "]"}]}], "]"}], 
     "&"}], "/@", "dates2yr"}]}], ";"}]], "Input",
 CellChangeTimes->{{3.709594743319336*^9, 3.7095947684044733`*^9}, {
  3.709850483358243*^9, 3.7098504844054585`*^9}, {3.7099299023496323`*^9, 
  3.7099299031497955`*^9}, {3.709930132118309*^9, 3.709930132855461*^9}}],

Cell[BoxData[
 TemplateBox[{
  "EntityValue","nodat",
   "\"Unable to download data. Some or all results may be missing.\"",2,137,
   44,15167562623507322558,"Kernel 2"},
  "MessageTemplate"]], "Message", "MSG",
 CellChangeTimes->{3.709934615302032*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"Export", "[", 
   RowBox[{"\"\<2 yr SatRx.mx\>\"", ",", "flightSatRx2yr"}], "]"}], 
  ";"}]], "Input",
 CellChangeTimes->{{3.7097555353289833`*^9, 3.7097555466333017`*^9}, {
  3.709814086788215*^9, 3.7098140869712534`*^9}, {3.709930141692253*^9, 
  3.7099301468082933`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"flightUraRx2yr", "=", 
   RowBox[{
    RowBox[{
     RowBox[{"PlanetData", "[", 
      RowBox[{
       TemplateBox[{"\"Uranus\"",RowBox[{"Entity", "[", 
           RowBox[{"\"Planet\"", ",", "\"Uranus\""}], "]"}],
         "\"Entity[\\\"Planet\\\", \\\"Uranus\\\"]\"","\"planet\""},
        "Entity"], ",", 
       RowBox[{"EntityProperty", "[", 
        RowBox[{
        "\"\<Planet\>\"", ",", "\"\<RetrogradeApparentMotionQuery\>\"", ",", 
         RowBox[{"{", 
          RowBox[{"\"\<Date\>\"", "\[Rule]", "#"}], "}"}]}], "]"}]}], "]"}], 
     "&"}], "/@", "dates2yr"}]}], ";"}]], "Input",
 CellChangeTimes->{{3.7097552723269324`*^9, 3.7097552808726826`*^9}, {
  3.709929906838545*^9, 3.709929907462674*^9}, {3.709930151211187*^9, 
  3.70993015215738*^9}}],

Cell[BoxData[
 TemplateBox[{
  "EntityValue","nodat",
   "\"Unable to download data. Some or all results may be missing.\"",2,139,
   45,15167562623507322558,"Kernel 2"},
  "MessageTemplate"]], "Message", "MSG",
 CellChangeTimes->{3.709935878636668*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"Export", "[", 
   RowBox[{"\"\<2 yr UraRx.mx\>\"", ",", "flightUraRx2yr"}], "]"}], 
  ";"}]], "Input",
 CellChangeTimes->{{3.709755554368883*^9, 3.709755563568768*^9}, {
  3.7098140967722616`*^9, 3.7098140969603014`*^9}, {3.709930164822953*^9, 
  3.7099301695579157`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"flightNepRx2yr", "=", 
   RowBox[{
    RowBox[{
     RowBox[{"PlanetData", "[", 
      RowBox[{
       TemplateBox[{"\"Neptune\"",RowBox[{"Entity", "[", 
           RowBox[{"\"Planet\"", ",", "\"Neptune\""}], "]"}],
         "\"Entity[\\\"Planet\\\", \\\"Neptune\\\"]\"","\"planet\""},
        "Entity"], ",", 
       RowBox[{"EntityProperty", "[", 
        RowBox[{
        "\"\<Planet\>\"", ",", "\"\<RetrogradeApparentMotionQuery\>\"", ",", 
         RowBox[{"{", 
          RowBox[{"\"\<Date\>\"", "\[Rule]", "#"}], "}"}]}], "]"}]}], "]"}], 
     "&"}], "/@", "dates2yr"}]}], ";"}]], "Input",
 CellChangeTimes->{{3.7099064333034267`*^9, 3.7099064582325773`*^9}, {
  3.7099299125757113`*^9, 3.709929913306859*^9}, {3.709930174288875*^9, 
  3.709930174972028*^9}}],

Cell[BoxData[
 TemplateBox[{
  "EntityValue","nodat",
   "\"Unable to download data. Some or all results may be missing.\"",2,141,
   46,15167562623507322558,"Kernel 2"},
  "MessageTemplate"]], "Message", "MSG",
 CellChangeTimes->{3.7099362627056913`*^9}],

Cell[BoxData[
 TemplateBox[{
  "EntityValue","nodat",
   "\"Unable to download data. Some or all results may be missing.\"",2,141,
   47,15167562623507322558,"Kernel 2"},
  "MessageTemplate"]], "Message", "MSG",
 CellChangeTimes->{3.709936512446421*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"Export", "[", 
   RowBox[{"\"\<2 yr NepRx.mx\>\"", ",", "flightNepRx2yr"}], "]"}], 
  ";"}]], "Input",
 CellChangeTimes->{{3.709906490065156*^9, 3.709906496632513*^9}, {
  3.7099301877926188`*^9, 3.7099301922585254`*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"flightPluRx2yr", "=", 
   RowBox[{
    RowBox[{
     RowBox[{"MinorPlanetData", "[", 
      RowBox[{
       TemplateBox[{"\"Pluto\"",RowBox[{"Entity", "[", 
           RowBox[{"\"MinorPlanet\"", ",", "\"Pluto\""}], "]"}],
         "\"Entity[\\\"MinorPlanet\\\", \\\"Pluto\\\"]\"","\"minor planet\""},
        "Entity"], ",", 
       RowBox[{"EntityProperty", "[", 
        RowBox[{
        "\"\<MinorPlanet\>\"", ",", "\"\<RetrogradeApparentMotionQuery\>\"", 
         ",", 
         RowBox[{"{", 
          RowBox[{"\"\<Date\>\"", "\[Rule]", "#"}], "}"}]}], "]"}]}], "]"}], 
     "&"}], "/@", "dates2yr"}]}], ";"}]], "Input",
 CellChangeTimes->{{3.709755301958617*^9, 3.7097553320627146`*^9}, {
  3.7099299199492073`*^9, 3.709929920553331*^9}, {3.709930197214532*^9, 
  3.709930197805653*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"Export", "[", 
   RowBox[{"\"\<2 yr PluRx.mx\>\"", ",", "flightPluRx2yr"}], "]"}], 
  ";"}]], "Input",
 CellChangeTimes->{{3.709930238534927*^9, 3.7099302436519947`*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"fulldata2yr", "=", 
   RowBox[{"Table", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"flightMerRx2yr", "[", 
        RowBox[{"[", "i", "]"}], "]"}], ",", 
       RowBox[{"flightVenRx2yr", "[", 
        RowBox[{"[", "i", "]"}], "]"}], ",", 
       RowBox[{"flightMarRx2yr", "[", 
        RowBox[{"[", "i", "]"}], "]"}], ",", 
       RowBox[{"flightJupRx2yr", "[", 
        RowBox[{"[", "i", "]"}], "]"}], ",", 
       RowBox[{"flightSatRx2yr", "[", 
        RowBox[{"[", "i", "]"}], "]"}], ",", 
       RowBox[{"flightUraRx2yr", "[", 
        RowBox[{"[", "i", "]"}], "]"}], ",", 
       RowBox[{"flightNepRx2yr", "[", 
        RowBox[{"[", "i", "]"}], "]"}], ",", 
       RowBox[{"flightPluRx2yr", "[", 
        RowBox[{"[", "i", "]"}], "]"}], ",", 
       RowBox[{"Log", "[", 
        RowBox[{"years0", "[", 
         RowBox[{"[", 
          RowBox[{"i", ",", "2"}], "]"}], "]"}], "]"}]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"i", ",", "1", ",", 
       RowBox[{"Length", "[", "dates2yr", "]"}]}], "}"}]}], "]"}]}], 
  ";"}]], "Input",
 CellChangeTimes->{{3.7099303875331945`*^9, 3.709930439013652*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"alldeletes2yr", "=", 
  RowBox[{"Union", "[", 
   RowBox[{
    RowBox[{"Position", "[", 
     RowBox[{"flightMerRx2yr", ",", "_Missing"}], "]"}], ",", 
    RowBox[{"Position", "[", 
     RowBox[{"flightVenRx2yr", ",", "_Missing"}], "]"}], ",", 
    RowBox[{"Position", "[", 
     RowBox[{"flightMarRx2yr", ",", "_Missing"}], "]"}], ",", 
    RowBox[{"Position", "[", 
     RowBox[{"flightJupRx2yr", ",", "_Missing"}], "]"}], ",", 
    RowBox[{"Position", "[", 
     RowBox[{"flightSatRx2yr", ",", "_Missing"}], "]"}], ",", 
    RowBox[{"Position", "[", 
     RowBox[{"flightUraRx2yr", ",", "_Missing"}], "]"}], ",", 
    RowBox[{"Position", "[", 
     RowBox[{"flightNepRx2yr", ",", "_Missing"}], "]"}], ",", 
    RowBox[{"Position", "[", 
     RowBox[{"flightPluRx2yr", ",", "_Missing"}], "]"}]}], "]"}]}]], "Input",
 CellChangeTimes->{{3.709930484608914*^9, 3.7099305443760552`*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", "51", "}"}], ",", 
   RowBox[{"{", "54", "}"}], ",", 
   RowBox[{"{", "391", "}"}], ",", 
   RowBox[{"{", "663", "}"}], ",", 
   RowBox[{"{", "664", "}"}], ",", 
   RowBox[{"{", "906", "}"}], ",", 
   RowBox[{"{", "1058", "}"}]}], "}"}]], "Output",
 CellChangeTimes->{3.7099378875157566`*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"alldeletes2yr", "=", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", "51", "}"}], ",", 
     RowBox[{"{", "54", "}"}], ",", 
     RowBox[{"{", "391", "}"}], ",", 
     RowBox[{"{", "663", "}"}], ",", 
     RowBox[{"{", "664", "}"}], ",", 
     RowBox[{"{", "906", "}"}], ",", 
     RowBox[{"{", "1058", "}"}]}], "}"}]}], ";"}]], "Input",
 CellChangeTimes->{{3.7099475372698135`*^9, 3.709947550095437*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Length", "[", "dates2yr", "]"}]], "Input",
 CellChangeTimes->{{3.709930581570612*^9, 3.709930587391794*^9}}],

Cell[BoxData["1096"], "Output",
 CellChangeTimes->{3.709937887546764*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"fulldata2yr", "=", 
  RowBox[{"Import", "[", "\"\<2 yr fulldata.mx\>\"", "]"}]}]], "Input",
 CellChangeTimes->{{3.70994762753128*^9, 3.7099476453010263`*^9}}],

Cell[BoxData[
 InterpretationBox[
  TagBox[
   FrameBox[GridBox[{
      {
       ItemBox[
        TagBox[
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            
            RowBox[{"\<\"prograde\"\>", ",", "\<\"prograde\"\>", 
             ",", "\<\"prograde\"\>", ",", "\<\"prograde\"\>", 
             ",", "\<\"prograde\"\>", ",", "\<\"prograde\"\>", 
             ",", "\<\"prograde\"\>", ",", "\<\"prograde\"\>", ",", 
             RowBox[{"-", "5.037801859364884`"}]}], "}"}], ",", 
           TemplateBox[{"1094"},
            "OutputSizeLimit`Skeleton",
            DisplayFunction->(FrameBox[
              RowBox[{"\" \[CenterEllipsis]\"", #, "\"\[CenterEllipsis] \""}],
               Background -> GrayLevel[0.75], 
              BaseStyle -> {
               "Deploy", FontColor -> GrayLevel[1], FontSize -> Smaller, 
                ShowStringCharacters -> False}, BaselinePosition -> Baseline, 
              ContentPadding -> False, FrameMargins -> {{1, 1}, {1, 2}}, 
              FrameStyle -> None, RoundingRadius -> 7]& )], ",", 
           RowBox[{"{", 
            
            RowBox[{"\<\"prograde\"\>", ",", "\<\"prograde\"\>", 
             ",", "\<\"prograde\"\>", ",", "\<\"retrograde\"\>", 
             ",", "\<\"prograde\"\>", ",", "\<\"retrograde\"\>", 
             ",", "\<\"prograde\"\>", ",", "\<\"prograde\"\>", ",", 
             RowBox[{"-", "4.8515739554471775`"}]}], "}"}]}], "}"}],
         Short[#, 5]& ],
        BaseStyle->{Deployed -> False},
        StripOnInput->False]},
      {GridBox[{
         {
          TagBox[
           TooltipBox[
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource[
                "FEStrings", "sizeBriefExplanation"], StandardForm],
               ImageSizeCache->{132., {6., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarCategory",
             StripOnInput->False],
            StyleBox[
             DynamicBox[
              ToBoxes[
               FEPrivate`FrontEndResource["FEStrings", "sizeExplanation"], 
               StandardForm]], DynamicUpdating -> True, StripOnInput -> 
             False]],
           Annotation[#, 
            Style[
             Dynamic[
              FEPrivate`FrontEndResource["FEStrings", "sizeExplanation"]], 
             DynamicUpdating -> True], "Tooltip"]& ], 
          ButtonBox[
           PaneSelectorBox[{False->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowLess"], 
                StandardForm],
               ImageSizeCache->{108., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControl",
             StripOnInput->False], True->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowLess"], 
                StandardForm]],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControlActive",
             StripOnInput->False]}, Dynamic[
             CurrentValue["MouseOver"]],
            Alignment->Center,
            FrameMargins->0,
            ImageSize->{Automatic, 25}],
           Appearance->None,
           
           ButtonFunction:>OutputSizeLimit`ButtonFunction[
            OutputSizeLimit`Defer, 4, 15167776559696603918, 5/2],
           Enabled->True,
           Evaluator->Automatic,
           Method->"Queued"], 
          ButtonBox[
           PaneSelectorBox[{False->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowMore"], 
                StandardForm],
               ImageSizeCache->{126., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControl",
             StripOnInput->False], True->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowMore"], 
                StandardForm],
               ImageSizeCache->{126., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControlActive",
             StripOnInput->False]}, Dynamic[
             CurrentValue["MouseOver"]],
            Alignment->Center,
            FrameMargins->0,
            ImageSize->{Automatic, 25}],
           Appearance->None,
           
           ButtonFunction:>OutputSizeLimit`ButtonFunction[
            OutputSizeLimit`Defer, 4, 15167776559696603918, 5 2],
           Enabled->True,
           Evaluator->Automatic,
           Method->"Queued"], 
          ButtonBox[
           PaneSelectorBox[{False->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowAll"], 
                StandardForm],
               ImageSizeCache->{93., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControl",
             StripOnInput->False], True->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowAll"], 
                StandardForm],
               ImageSizeCache->{93., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControlActive",
             StripOnInput->False]}, Dynamic[
             CurrentValue["MouseOver"]],
            Alignment->Center,
            FrameMargins->0,
            ImageSize->{Automatic, 25}],
           Appearance->None,
           
           ButtonFunction:>OutputSizeLimit`ButtonFunction[
            OutputSizeLimit`Defer, 4, 15167776559696603918, Infinity],
           Enabled->True,
           Evaluator->Automatic,
           Method->"Queued"], 
          ButtonBox[
           PaneSelectorBox[{False->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeChangeLimit"], 
                StandardForm],
               ImageSizeCache->{163., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControl",
             StripOnInput->False], True->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeChangeLimit"], 
                StandardForm]],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControlActive",
             StripOnInput->False]}, Dynamic[
             CurrentValue["MouseOver"]],
            Alignment->Center,
            FrameMargins->0,
            ImageSize->{Automatic, 25}],
           Appearance->None,
           ButtonFunction:>FrontEndExecute[{
              FrontEnd`SetOptions[
              FrontEnd`$FrontEnd, 
               FrontEnd`PreferencesSettings -> {"Page" -> "Evaluation"}], 
              FrontEnd`FrontEndToken["PreferencesDialog"]}],
           Evaluator->None,
           Method->"Preemptive"]}
        },
        AutoDelete->False,
        FrameStyle->GrayLevel[0.85],
        GridBoxDividers->{"Columns" -> {False, {True}}},
        GridBoxItemSize->{"Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}},
        GridBoxSpacings->{"Columns" -> {{2}}}]}
     },
     DefaultBaseStyle->"Column",
     GridBoxAlignment->{
      "Columns" -> {{Left}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
       "RowsIndexed" -> {}},
     GridBoxDividers->{
      "Columns" -> {{False}}, "ColumnsIndexed" -> {}, "Rows" -> {{False}}, 
       "RowsIndexed" -> {}},
     GridBoxItemSize->{
      "Columns" -> {{Automatic}}, "ColumnsIndexed" -> {}, "Rows" -> {{1.}}, 
       "RowsIndexed" -> {}},
     GridBoxSpacings->{"Columns" -> {
         Offset[0.27999999999999997`], {
          Offset[0.5599999999999999]}, 
         Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
         Offset[0.2], 
         Offset[1.2], {
          Offset[0.4]}, 
         Offset[0.2]}, "RowsIndexed" -> {}}],
    Background->RGBColor[0.9657, 0.9753, 0.9802],
    FrameMargins->{{12, 12}, {0, 15}},
    FrameStyle->GrayLevel[0.85],
    RoundingRadius->5,
    StripOnInput->False],
   Deploy,
   DefaultBaseStyle->"Deploy"],
  Out[4]]], "Output",
 CellChangeTimes->{3.709947645888036*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"fulldata", "=", 
   RowBox[{
   "Import", "[", "\"\<22 yrs flight cancellation full data.mx\>\"", "]"}]}], 
  ";"}]], "Input",
 CellChangeTimes->{{3.709649761822526*^9, 3.70964978770383*^9}, {
  3.709947763613124*^9, 3.7099477682360687`*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"alldeletes", "=", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", "59", "}"}], ",", 
     RowBox[{"{", "227", "}"}], ",", 
     RowBox[{"{", "626", "}"}], ",", 
     RowBox[{"{", "630", "}"}], ",", 
     RowBox[{"{", "1036", "}"}], ",", 
     RowBox[{"{", "1205", "}"}], ",", 
     RowBox[{"{", "1250", "}"}], ",", 
     RowBox[{"{", "1746", "}"}], ",", 
     RowBox[{"{", "1747", "}"}], ",", 
     RowBox[{"{", "1828", "}"}], ",", 
     RowBox[{"{", "2081", "}"}], ",", 
     RowBox[{"{", "2108", "}"}], ",", 
     RowBox[{"{", "2193", "}"}], ",", 
     RowBox[{"{", "2194", "}"}], ",", 
     RowBox[{"{", "2197", "}"}], ",", 
     RowBox[{"{", "2209", "}"}], ",", 
     RowBox[{"{", "2552", "}"}], ",", 
     RowBox[{"{", "2896", "}"}], ",", 
     RowBox[{"{", "3013", "}"}], ",", 
     RowBox[{"{", "3016", "}"}], ",", 
     RowBox[{"{", "3638", "}"}], ",", 
     RowBox[{"{", "3726", "}"}], ",", 
     RowBox[{"{", "3854", "}"}], ",", 
     RowBox[{"{", "3921", "}"}], ",", 
     RowBox[{"{", "3948", "}"}], ",", 
     RowBox[{"{", "4262", "}"}], ",", 
     RowBox[{"{", "4300", "}"}], ",", 
     RowBox[{"{", "4992", "}"}], ",", 
     RowBox[{"{", "5094", "}"}], ",", 
     RowBox[{"{", "5095", "}"}], ",", 
     RowBox[{"{", "5096", "}"}], ",", 
     RowBox[{"{", "5097", "}"}], ",", 
     RowBox[{"{", "5225", "}"}], ",", 
     RowBox[{"{", "5376", "}"}], ",", 
     RowBox[{"{", "5603", "}"}], ",", 
     RowBox[{"{", "5605", "}"}], ",", 
     RowBox[{"{", "5606", "}"}], ",", 
     RowBox[{"{", "5627", "}"}], ",", 
     RowBox[{"{", "5849", "}"}], ",", 
     RowBox[{"{", "6226", "}"}], ",", 
     RowBox[{"{", "6994", "}"}], ",", 
     RowBox[{"{", "7379", "}"}], ",", 
     RowBox[{"{", "7418", "}"}], ",", 
     RowBox[{"{", "7458", "}"}], ",", 
     RowBox[{"{", "7694", "}"}], ",", 
     RowBox[{"{", "7696", "}"}], ",", 
     RowBox[{"{", "7805", "}"}], ",", 
     RowBox[{"{", "7806", "}"}], ",", 
     RowBox[{"{", "7808", "}"}], ",", 
     RowBox[{"{", "7809", "}"}], ",", 
     RowBox[{"{", "7877", "}"}], ",", 
     RowBox[{"{", "7972", "}"}], ",", 
     RowBox[{"{", "8037", "}"}], ",", 
     RowBox[{"{", "8085", "}"}], ",", 
     RowBox[{"{", "8086", "}"}]}], "}"}]}], ";"}]], "Input",
 CellChangeTimes->{{3.7099475758847136`*^9, 3.7099475827271147`*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"testset", "=", 
   RowBox[{"Delete", "[", 
    RowBox[{"fulldata2yr", ",", "alldeletes2yr"}], "]"}]}], ";"}]], "Input",
 CellChangeTimes->{{3.7099305569606123`*^9, 3.7099305682929134`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Length", "[", "fulldata", "]"}]], "Input",
 CellChangeTimes->{{3.709947702558633*^9, 3.7099477180408*^9}}],

Cell[BoxData["8128"], "Output",
 CellChangeTimes->{{3.7099477119065437`*^9, 3.709947718846966*^9}, 
   3.709947805710737*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"trainingset", "=", 
   RowBox[{"Delete", "[", 
    RowBox[{"fulldata", ",", "alldeletes"}], "]"}]}], ";"}]], "Input",
 CellChangeTimes->{{3.709928395441517*^9, 3.7099284343664236`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"trainingset", "[", 
  RowBox[{"[", 
   RowBox[{"All", ",", "9"}], "]"}], "]"}]], "Input"],

Cell[BoxData[
 InterpretationBox[
  TagBox[
   FrameBox[GridBox[{
      {
       ItemBox[
        TagBox[
         RowBox[{"{", 
          RowBox[{
           RowBox[{"-", "5.144108545495726`"}], ",", 
           RowBox[{"-", "4.715789576763289`"}], ",", 
           RowBox[{"-", "5.095997163247392`"}], ",", 
           RowBox[{"-", "5.189971368960412`"}], ",", 
           RowBox[{"-", "5.170278607025243`"}], ",", 
           RowBox[{"-", "5.284919186924851`"}], ",", 
           RowBox[{"-", "4.806677851667094`"}], ",", 
           TemplateBox[{"8059"},
            "OutputSizeLimit`Skeleton",
            DisplayFunction->(FrameBox[
              RowBox[{"\" \[CenterEllipsis]\"", #, "\"\[CenterEllipsis] \""}],
               Background -> GrayLevel[0.75], 
              BaseStyle -> {
               "Deploy", FontColor -> GrayLevel[1], FontSize -> Smaller, 
                ShowStringCharacters -> False}, BaselinePosition -> Baseline, 
              ContentPadding -> False, FrameMargins -> {{1, 1}, {1, 2}}, 
              FrameStyle -> None, RoundingRadius -> 7]& )], ",", 
           RowBox[{"-", "4.079955824770001`"}], ",", 
           RowBox[{"-", "4.891895918940053`"}], ",", 
           RowBox[{"-", "3.800814842500751`"}], ",", 
           RowBox[{"-", "4.751321926462021`"}], ",", 
           RowBox[{"-", "4.194352942885733`"}], ",", 
           RowBox[{"-", "5.293420338181939`"}], ",", 
           RowBox[{"-", "4.451651490324811`"}]}], "}"}],
         Short[#, 5]& ],
        BaseStyle->{Deployed -> False},
        StripOnInput->False]},
      {GridBox[{
         {
          TagBox[
           TooltipBox[
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource[
                "FEStrings", "sizeBriefExplanation"], StandardForm],
               ImageSizeCache->{132., {6., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarCategory",
             StripOnInput->False],
            StyleBox[
             DynamicBox[
              ToBoxes[
               FEPrivate`FrontEndResource["FEStrings", "sizeExplanation"], 
               StandardForm]], DynamicUpdating -> True, StripOnInput -> 
             False]],
           Annotation[#, 
            Style[
             Dynamic[
              FEPrivate`FrontEndResource["FEStrings", "sizeExplanation"]], 
             DynamicUpdating -> True], "Tooltip"]& ], 
          ButtonBox[
           PaneSelectorBox[{False->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowLess"], 
                StandardForm],
               ImageSizeCache->{108., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControl",
             StripOnInput->False], True->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowLess"], 
                StandardForm]],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControlActive",
             StripOnInput->False]}, Dynamic[
             CurrentValue["MouseOver"]],
            Alignment->Center,
            FrameMargins->0,
            ImageSize->{Automatic, 25}],
           Appearance->None,
           
           ButtonFunction:>OutputSizeLimit`ButtonFunction[
            OutputSizeLimit`Defer, 15, 15167776559696603918, 5/2],
           Enabled->True,
           Evaluator->Automatic,
           Method->"Queued"], 
          ButtonBox[
           PaneSelectorBox[{False->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowMore"], 
                StandardForm],
               ImageSizeCache->{126., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControl",
             StripOnInput->False], True->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowMore"], 
                StandardForm]],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControlActive",
             StripOnInput->False]}, Dynamic[
             CurrentValue["MouseOver"]],
            Alignment->Center,
            FrameMargins->0,
            ImageSize->{Automatic, 25}],
           Appearance->None,
           
           ButtonFunction:>OutputSizeLimit`ButtonFunction[
            OutputSizeLimit`Defer, 15, 15167776559696603918, 5 2],
           Enabled->True,
           Evaluator->Automatic,
           Method->"Queued"], 
          ButtonBox[
           PaneSelectorBox[{False->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowAll"], 
                StandardForm],
               ImageSizeCache->{93., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControl",
             StripOnInput->False], True->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowAll"], 
                StandardForm]],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControlActive",
             StripOnInput->False]}, Dynamic[
             CurrentValue["MouseOver"]],
            Alignment->Center,
            FrameMargins->0,
            ImageSize->{Automatic, 25}],
           Appearance->None,
           
           ButtonFunction:>OutputSizeLimit`ButtonFunction[
            OutputSizeLimit`Defer, 15, 15167776559696603918, Infinity],
           Enabled->True,
           Evaluator->Automatic,
           Method->"Queued"], 
          ButtonBox[
           PaneSelectorBox[{False->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeChangeLimit"], 
                StandardForm],
               ImageSizeCache->{163., {1., 18.}}],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControl",
             StripOnInput->False], True->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeChangeLimit"], 
                StandardForm]],
              StripOnInput->False,
              DynamicUpdating->True], "SuggestionsBarControlActive",
             StripOnInput->False]}, Dynamic[
             CurrentValue["MouseOver"]],
            Alignment->Center,
            FrameMargins->0,
            ImageSize->{Automatic, 25}],
           Appearance->None,
           ButtonFunction:>FrontEndExecute[{
              FrontEnd`SetOptions[
              FrontEnd`$FrontEnd, 
               FrontEnd`PreferencesSettings -> {"Page" -> "Evaluation"}], 
              FrontEnd`FrontEndToken["PreferencesDialog"]}],
           Evaluator->None,
           Method->"Preemptive"]}
        },
        AutoDelete->False,
        FrameStyle->GrayLevel[0.85],
        GridBoxDividers->{"Columns" -> {False, {True}}},
        GridBoxItemSize->{"Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}},
        GridBoxSpacings->{"Columns" -> {{2}}}]}
     },
     DefaultBaseStyle->"Column",
     GridBoxAlignment->{
      "Columns" -> {{Left}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
       "RowsIndexed" -> {}},
     GridBoxDividers->{
      "Columns" -> {{False}}, "ColumnsIndexed" -> {}, "Rows" -> {{False}}, 
       "RowsIndexed" -> {}},
     GridBoxItemSize->{
      "Columns" -> {{Automatic}}, "ColumnsIndexed" -> {}, "Rows" -> {{1.}}, 
       "RowsIndexed" -> {}},
     GridBoxSpacings->{"Columns" -> {
         Offset[0.27999999999999997`], {
          Offset[0.5599999999999999]}, 
         Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
         Offset[0.2], 
         Offset[1.2], {
          Offset[0.4]}, 
         Offset[0.2]}, "RowsIndexed" -> {}}],
    Background->RGBColor[0.9657, 0.9753, 0.9802],
    FrameMargins->{{12, 12}, {0, 15}},
    FrameStyle->GrayLevel[0.85],
    RoundingRadius->5,
    StripOnInput->False],
   Deploy,
   DefaultBaseStyle->"Deploy"],
  Out[15]]], "Output",
 CellChangeTimes->{3.7099382061034756`*^9, 3.7099478099256687`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"p", "=", 
  RowBox[{"Predict", "[", 
   RowBox[{
    RowBox[{"trainingset", "[", 
     RowBox[{"[", 
      RowBox[{"All", ",", 
       RowBox[{"1", ";;", "8"}]}], "]"}], "]"}], "\[Rule]", 
    RowBox[{"trainingset", "[", 
     RowBox[{"[", 
      RowBox[{"All", ",", "9"}], "]"}], "]"}]}], "]"}]}]], "Input",
 CellChangeTimes->{{3.7099283795432873`*^9, 3.709928384129219*^9}, {
  3.709930636731817*^9, 3.7099306458736744`*^9}, {3.709938006930014*^9, 
  3.7099380446746817`*^9}, {3.709938155361167*^9, 3.709938175648289*^9}}],

Cell[BoxData[
 TagBox[
  TemplateBox[{RowBox[{
      StyleBox[
       TagBox["PredictorFunction", "SummaryHead"], "NonInterpretableSummary"], 
      StyleBox["[", "NonInterpretableSummary"], 
      DynamicModuleBox[{Typeset`open$$ = False}, 
       PanelBox[
        PaneSelectorBox[{False -> GridBox[{{
              PaneBox[
               ButtonBox[
                DynamicBox[
                 FEPrivate`FrontEndResource[
                 "FEBitmaps", "SquarePlusIconMedium"]], 
                ButtonFunction :> (Typeset`open$$ = True), Appearance -> None,
                 Evaluator -> Automatic, Method -> "Preemptive"], 
               Alignment -> {Center, Center}, ImageSize -> 
               Dynamic[{
                 Automatic, 
                  3.5 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                   Magnification])}]], 
              GraphicsBox[{{}, {{}, {
                  PointSize[0.125], 
                  GrayLevel[0.55], 
                  
                  PointBox[{{-1, 1.5}, {0, 2.3}, {1, 0.8}, {2, 2}, {3, 1.3}, {
                    4, 4.}}]}, {
                  GrayLevel[0.7], 
                  AbsoluteThickness[1.5], 
                  
                  BSplineCurveBox[{{-1, 2}, {0, 2}, {1, 1}, {2, 1}, {4, 2}, {
                   5, 4}}]}}, {}}, Axes -> {False, False}, 
               AxesLabel -> {None, None}, AxesOrigin -> {0, 0}, 
               BaseStyle -> {FontFamily -> "Arial", 
                 AbsoluteThickness[1.5]}, DisplayFunction -> Identity, 
               Frame -> {{True, True}, {True, True}}, 
               FrameLabel -> {{None, None}, {None, None}}, FrameStyle -> 
               Directive[
                 Thickness[Tiny], 
                 GrayLevel[0.7]], FrameTicks -> {{None, None}, {None, None}}, 
               GridLines -> {None, None}, 
               LabelStyle -> {FontFamily -> "Arial"}, 
               Method -> {"ScalingFunctions" -> None}, 
               PlotRange -> {All, All}, PlotRangeClipping -> True, 
               PlotRangePadding -> {{1, 1}, {1, 1}}, Ticks -> {None, None}, 
               Axes -> False, AspectRatio -> 1, ImageSize -> 
               Dynamic[{
                 Automatic, 
                  3.5 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                   Magnification])}], Frame -> True, FrameTicks -> None, 
               FrameStyle -> Directive[
                 Opacity[0.5], 
                 Thickness[Tiny], 
                 RGBColor[0.368417, 0.506779, 0.709798]]], 
              GridBox[{{
                 RowBox[{
                   TagBox["\"Method: \"", "SummaryItemAnnotation"], 
                   "\[InvisibleSpace]", 
                   TagBox["\"RandomForest\"", "SummaryItem"]}]}, {
                 RowBox[{
                   TagBox[
                   "\"Number of features: \"", "SummaryItemAnnotation"], 
                   "\[InvisibleSpace]", 
                   TagBox["8", "SummaryItem"]}]}}, 
               GridBoxAlignment -> {
                "Columns" -> {{Left}}, "Rows" -> {{Automatic}}}, AutoDelete -> 
               False, GridBoxItemSize -> {
                "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
               GridBoxSpacings -> {
                "Columns" -> {{2}}, "Rows" -> {{Automatic}}}, 
               BaseStyle -> {
                ShowStringCharacters -> False, NumberMarks -> False, 
                 PrintPrecision -> 3, ShowSyntaxStyles -> False}]}}, 
            GridBoxAlignment -> {"Rows" -> {{Top}}}, AutoDelete -> False, 
            GridBoxItemSize -> {
             "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
            BaselinePosition -> {1, 1}], True -> GridBox[{{
              PaneBox[
               ButtonBox[
                DynamicBox[
                 FEPrivate`FrontEndResource[
                 "FEBitmaps", "SquareMinusIconMedium"]], 
                ButtonFunction :> (Typeset`open$$ = False), Appearance -> 
                None, Evaluator -> Automatic, Method -> "Preemptive"], 
               Alignment -> {Center, Center}, ImageSize -> 
               Dynamic[{
                 Automatic, 
                  3.5 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                   Magnification])}]], 
              GraphicsBox[{{}, {{}, {
                  PointSize[0.125], 
                  GrayLevel[0.55], 
                  
                  PointBox[{{-1, 1.5}, {0, 2.3}, {1, 0.8}, {2, 2}, {3, 1.3}, {
                    4, 4.}}]}, {
                  GrayLevel[0.7], 
                  AbsoluteThickness[1.5], 
                  
                  BSplineCurveBox[{{-1, 2}, {0, 2}, {1, 1}, {2, 1}, {4, 2}, {
                   5, 4}}]}}, {}}, Axes -> {False, False}, 
               AxesLabel -> {None, None}, AxesOrigin -> {0, 0}, 
               BaseStyle -> {FontFamily -> "Arial", 
                 AbsoluteThickness[1.5]}, DisplayFunction -> Identity, 
               Frame -> {{True, True}, {True, True}}, 
               FrameLabel -> {{None, None}, {None, None}}, FrameStyle -> 
               Directive[
                 Thickness[Tiny], 
                 GrayLevel[0.7]], FrameTicks -> {{None, None}, {None, None}}, 
               GridLines -> {None, None}, 
               LabelStyle -> {FontFamily -> "Arial"}, 
               Method -> {"ScalingFunctions" -> None}, 
               PlotRange -> {All, All}, PlotRangeClipping -> True, 
               PlotRangePadding -> {{1, 1}, {1, 1}}, Ticks -> {None, None}, 
               Axes -> False, AspectRatio -> 1, ImageSize -> 
               Dynamic[{
                 Automatic, 
                  3.5 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                   Magnification])}], Frame -> True, FrameTicks -> None, 
               FrameStyle -> Directive[
                 Opacity[0.5], 
                 Thickness[Tiny], 
                 RGBColor[0.368417, 0.506779, 0.709798]]], 
              GridBox[{{
                 RowBox[{
                   TagBox["\"Method: \"", "SummaryItemAnnotation"], 
                   "\[InvisibleSpace]", 
                   TagBox["\"RandomForest\"", "SummaryItem"]}]}, {
                 RowBox[{
                   TagBox[
                   "\"Number of features: \"", "SummaryItemAnnotation"], 
                   "\[InvisibleSpace]", 
                   TagBox["8", "SummaryItem"]}]}, {
                 RowBox[{
                   TagBox[
                   "\"Number of training examples: \"", 
                    "SummaryItemAnnotation"], "\[InvisibleSpace]", 
                   TagBox["8073", "SummaryItem"]}]}}, 
               GridBoxAlignment -> {
                "Columns" -> {{Left}}, "Rows" -> {{Automatic}}}, AutoDelete -> 
               False, GridBoxItemSize -> {
                "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
               GridBoxSpacings -> {
                "Columns" -> {{2}}, "Rows" -> {{Automatic}}}, 
               BaseStyle -> {
                ShowStringCharacters -> False, NumberMarks -> False, 
                 PrintPrecision -> 3, ShowSyntaxStyles -> False}]}}, 
            GridBoxAlignment -> {"Rows" -> {{Top}}}, AutoDelete -> False, 
            GridBoxItemSize -> {
             "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
            BaselinePosition -> {1, 1}]}, 
         Dynamic[Typeset`open$$], ImageSize -> Automatic], BaselinePosition -> 
        Baseline], DynamicModuleValues :> {}], 
      StyleBox["]", "NonInterpretableSummary"]}]},
   "CopyTag",
   DisplayFunction->(#& ),
   InterpretationFunction->("PredictorFunction[\[Ellipsis]]"& )],
  False,
  Editable->False,
  SelectWithContents->True,
  Selectable->False]], "Output",
 CellChangeTimes->{
  3.709937888835026*^9, 3.7099380252587385`*^9, 3.7099380594136763`*^9, {
   3.709938160539219*^9, 3.7099381891540337`*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"pm", "=", 
  RowBox[{"PredictorMeasurements", "[", 
   RowBox[{"p", ",", 
    RowBox[{
     RowBox[{"testset", "[", 
      RowBox[{"[", 
       RowBox[{"All", ",", 
        RowBox[{"1", ";;", "8"}]}], "]"}], "]"}], "\[Rule]", 
     RowBox[{"testset", "[", 
      RowBox[{"[", 
       RowBox[{"All", ",", "9"}], "]"}], "]"}]}]}], "]"}]}]], "Input",
 CellChangeTimes->{{3.7099306481711426`*^9, 3.7099306813918896`*^9}, {
  3.7099380700258317`*^9, 3.7099380853819513`*^9}, {3.7099381451951017`*^9, 
  3.709938150275134*^9}, {3.709938237539863*^9, 3.7099382390641713`*^9}}],

Cell[BoxData[
 TagBox[
  TemplateBox[{RowBox[{
      StyleBox[
       TagBox["PredictorMeasurementsObject", "SummaryHead"], 
       "NonInterpretableSummary"], 
      StyleBox["[", "NonInterpretableSummary"], 
      DynamicModuleBox[{Typeset`open$$ = False}, 
       PanelBox[
        PaneSelectorBox[{False -> GridBox[{{
              PaneBox[
               ButtonBox[
                DynamicBox[
                 FEPrivate`FrontEndResource[
                 "FEBitmaps", "SquarePlusIconMedium"]], 
                ButtonFunction :> (Typeset`open$$ = True), Appearance -> None,
                 Evaluator -> Automatic, Method -> "Preemptive"], 
               Alignment -> {Center, Center}, ImageSize -> 
               Dynamic[{
                 Automatic, 
                  3.5 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                   Magnification])}]], 
              GraphicsBox[{{{}, {}, {
                  GrayLevel[0.6], 
                  Thickness[0.03], 
                  Opacity[1.], 
                  Dashing[{Small, Small}], 
                  
                  LineBox[{{2.409616047529911*^-7, 2.409616047529911*^-7}, {
                   11.803066020732206`, 11.803066020732206`}}]}}, {{}, {{}, {
                   GrayLevel[0.4], 
                   PointSize[0.09], 
                   AbsoluteThickness[1.6], 
                   
                   PointBox[{{1.6948167795276383`, 2.9052679959834418`}, {
                    2.227816320451859, 2.584653237430766}, {3.043099335090081,
                     4.798822972025658}, {3.5728355469237116`, 
                    5.9507424155697155`}, {4.158566334344331, 
                    5.2097676165465385`}, {4.824808988689111, 
                    7.23346088027902}, {6.88649660338492, 
                    5.297021421229134}, {7.819072150835878, 
                    6.533166043611269}, {8.437306856915493, 
                    8.81724006216815}, {8.604907881861761, 
                    11.302704526196452`}}]}, {}}, {}}}, FrameStyle -> 
               Directive[
                 Thickness[Tiny], 
                 GrayLevel[0.7]], Axes -> False, AspectRatio -> 1, ImageSize -> 
               Dynamic[{
                 Automatic, 
                  3.5 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                   Magnification])}], Frame -> True, FrameTicks -> None, 
               FrameStyle -> Directive[
                 Opacity[0.5], 
                 Thickness[Tiny], 
                 RGBColor[0.368417, 0.506779, 0.709798]]], 
              GridBox[{{
                 RowBox[{
                   TagBox["\"Predictor: \"", "SummaryItemAnnotation"], 
                   "\[InvisibleSpace]", 
                   TagBox["\"RandomForest\"", "SummaryItem"]}]}, {
                 RowBox[{
                   TagBox[
                   "\"Number of test examples: \"", "SummaryItemAnnotation"], 
                   "\[InvisibleSpace]", 
                   TagBox["1089", "SummaryItem"]}]}}, 
               GridBoxAlignment -> {
                "Columns" -> {{Left}}, "Rows" -> {{Automatic}}}, AutoDelete -> 
               False, GridBoxItemSize -> {
                "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
               GridBoxSpacings -> {
                "Columns" -> {{2}}, "Rows" -> {{Automatic}}}, 
               BaseStyle -> {
                ShowStringCharacters -> False, NumberMarks -> False, 
                 PrintPrecision -> 3, ShowSyntaxStyles -> False}]}}, 
            GridBoxAlignment -> {"Rows" -> {{Top}}}, AutoDelete -> False, 
            GridBoxItemSize -> {
             "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
            BaselinePosition -> {1, 1}], True -> GridBox[{{
              PaneBox[
               ButtonBox[
                DynamicBox[
                 FEPrivate`FrontEndResource[
                 "FEBitmaps", "SquareMinusIconMedium"]], 
                ButtonFunction :> (Typeset`open$$ = False), Appearance -> 
                None, Evaluator -> Automatic, Method -> "Preemptive"], 
               Alignment -> {Center, Center}, ImageSize -> 
               Dynamic[{
                 Automatic, 
                  3.5 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                   Magnification])}]], 
              GraphicsBox[{{{}, {}, {
                  GrayLevel[0.6], 
                  Thickness[0.03], 
                  Opacity[1.], 
                  Dashing[{Small, Small}], 
                  
                  LineBox[{{2.409616047529911*^-7, 2.409616047529911*^-7}, {
                   11.803066020732206`, 11.803066020732206`}}]}}, {{}, {{}, {
                   GrayLevel[0.4], 
                   PointSize[0.09], 
                   AbsoluteThickness[1.6], 
                   
                   PointBox[{{1.6948167795276383`, 2.9052679959834418`}, {
                    2.227816320451859, 2.584653237430766}, {3.043099335090081,
                     4.798822972025658}, {3.5728355469237116`, 
                    5.9507424155697155`}, {4.158566334344331, 
                    5.2097676165465385`}, {4.824808988689111, 
                    7.23346088027902}, {6.88649660338492, 
                    5.297021421229134}, {7.819072150835878, 
                    6.533166043611269}, {8.437306856915493, 
                    8.81724006216815}, {8.604907881861761, 
                    11.302704526196452`}}]}, {}}, {}}}, FrameStyle -> 
               Directive[
                 Thickness[Tiny], 
                 GrayLevel[0.7]], Axes -> False, AspectRatio -> 1, ImageSize -> 
               Dynamic[{
                 Automatic, 
                  3.5 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                   Magnification])}], Frame -> True, FrameTicks -> None, 
               FrameStyle -> Directive[
                 Opacity[0.5], 
                 Thickness[Tiny], 
                 RGBColor[0.368417, 0.506779, 0.709798]]], 
              GridBox[{{
                 RowBox[{
                   TagBox["\"Predictor: \"", "SummaryItemAnnotation"], 
                   "\[InvisibleSpace]", 
                   TagBox["\"RandomForest\"", "SummaryItem"]}]}, {
                 RowBox[{
                   TagBox[
                   "\"Number of test examples: \"", "SummaryItemAnnotation"], 
                   "\[InvisibleSpace]", 
                   TagBox["1089", "SummaryItem"]}]}, {
                 RowBox[{
                   TagBox["\"StandardDeviation: \"", "SummaryItemAnnotation"],
                    "\[InvisibleSpace]", 
                   TagBox["0.845721803369581`", "SummaryItem"]}]}}, 
               GridBoxAlignment -> {
                "Columns" -> {{Left}}, "Rows" -> {{Automatic}}}, AutoDelete -> 
               False, GridBoxItemSize -> {
                "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
               GridBoxSpacings -> {
                "Columns" -> {{2}}, "Rows" -> {{Automatic}}}, 
               BaseStyle -> {
                ShowStringCharacters -> False, NumberMarks -> False, 
                 PrintPrecision -> 3, ShowSyntaxStyles -> False}]}}, 
            GridBoxAlignment -> {"Rows" -> {{Top}}}, AutoDelete -> False, 
            GridBoxItemSize -> {
             "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
            BaselinePosition -> {1, 1}]}, 
         Dynamic[Typeset`open$$], ImageSize -> Automatic], BaselinePosition -> 
        Baseline], DynamicModuleValues :> {}], 
      StyleBox["]", "NonInterpretableSummary"]}]},
   "CopyTag",
   DisplayFunction->(#& ),
   InterpretationFunction->("PredictorMeasurementsObject[\[Ellipsis]]"& )],
  False,
  Editable->False,
  SelectWithContents->True,
  Selectable->False]], "Output",
 CellChangeTimes->{
  3.7099378892981195`*^9, 3.7099380596187177`*^9, 3.709938096578226*^9, {
   3.709938210398347*^9, 3.70993823999936*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"pm", "[", "\"\<ComparisonPlot\>\"", "]"}]], "Input"],

Cell[BoxData[
 TemplateBox[{GraphicsBox[{{{}, {{{}, {
         Hue[0.67, 0.6, 0.6], 
         Directive[
          PointSize[0.004583333333333334], 
          RGBColor[0.368417, 0.506779, 0.709798], 
          AbsoluteThickness[1.6]], 
         PointBox[CompressedData["
1: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
EUn/A28TCAo=
          "]]}, {}}}, {}, {}, {{}, {}}}, {{{{}, {}, 
        TagBox[{
          Directive[
           Opacity[1.], 
           AbsoluteThickness[1.6], 
           GrayLevel[0.5], 
           Dashing[{Small, Small}], 
           Thickness[0.002]], 
          LineBox[CompressedData["
1:eJxFxX0w03EcAOCfmUrKiHmbeSt60/ya3FUuDWE5RNOVnAvn5bgL4bwkWZhT
E7sWt9LWHOfl6sh5yVs2rymUc846Jm23c21tnFTqRC9/+Hz/eO5xjE29GE/A
MCz4n/+vfqFWnAi2l25vkr2QKAlE4wQhI5CJTrOy/XrNF71yzuYS9xRaJ7Sg
KJ3R6gukhootO1jRhkk0LWhtcu1mvAGaweHvpCVQ4Zzj60LyW1t4fMLGd9AB
nTjObestpMB23X30mzIbuOdkjNcVN7SIwiIXPbBG64gb6Z+t4CUn4vOW82gz
TZbaqNkSjhQ3eRwzQGu7DwdXJ1rAgsGkjHd9ZPhQFNXFkYzWi7Srk+aYw98D
FnHn92YwXaArncXRXFnvShBnHzzWuKlUyk3hkIWympGz6BVMnnK90gRuJa0a
D2tJcJC3aYS23Ri2D2uVimL3woUHtf0alz0wVV4/J53aDRe0M0mzbEM4g8WZ
Kw7YBQunvIdere2AI8wf+fA6DeCFPNlcTQERFgxU8s7Q9OGlyWV5+poenNz1
2p8uwuA/01nlFpItyfa9t1wH/EN+wyqlgsZt/AXjsxNvCPg6rOG8fFpe+A32
yE9rEChWYT/9/q5n88vwRvFjQcg9NbzuoJy+zFfBRwRlip7kRZjyiWVoOT8D
493K8QJsFBYRSNP5jSOwUZDnh7xQ9NJHvipbPAxXE/02UxlD8I7QBlo0Wwp3
Tcqc7mCdMD8ad8sP7YBT1ko9c8Xt8H7r0+E3GG1wedwTTgz7BTz2Y2CqCKuH
b9tmqPPEdbC7zwFCJqMWFt0vcY9ji2E1s8r1LlYFhz/8GZXL4MOSxasVSWwe
fFTnpeJjJbBesX5AJpsNN3vwWE1YFtwxSqfPYAkwMb2IGZbK6d/+L/NredM=

           "]]}, 
         Annotation[#, "Charting`Private`Tag$1964720#1"]& ]}}, {}, {}}}, {
    DisplayFunction -> Identity, PlotRangePadding -> {{0, 0}, {0, 0}}, 
     AxesOrigin -> {0, 0}, 
     PlotRange -> {{-7.825395969067491, 0}, {-7.825395969067491, 0}}, 
     PlotRangeClipping -> True, ImagePadding -> All, DisplayFunction -> 
     Identity, Axes -> {False, False}, AxesLabel -> {None, None}, 
     AxesOrigin -> {0, 0}, DisplayFunction :> Identity, 
     Frame -> {{True, False}, {True, False}}, FrameLabel -> {{
        FormBox["\"actual value\"", TraditionalForm], None}, {
        FormBox["\"predicted value\"", TraditionalForm], None}}, 
     FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
     GridLines -> {None, None}, GridLinesStyle -> Directive[
       GrayLevel[0.5, 0.4]], 
     Method -> {"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
           (Part[{{Identity, Identity}, {Identity, Identity}}, 1, 2][#]& )[
            Part[#, 1]], 
           (Part[{{Identity, Identity}, {Identity, Identity}}, 2, 2][#]& )[
            Part[#, 2]]}& ), "CopiedValueFunction" -> ({
           (Part[{{Identity, Identity}, {Identity, Identity}}, 1, 2][#]& )[
            Part[#, 1]], 
           (Part[{{Identity, Identity}, {Identity, Identity}}, 2, 2][#]& )[
            Part[#, 2]]}& )}}, 
     PlotRange -> {{-7.825395969067491, 0}, {-7.825395969067491, 0}}, 
     PlotRangeClipping -> True, PlotRangePadding -> {{0, 0}, {0, 0}}, 
     Ticks -> {Automatic, Automatic}}],FormBox[
    TagBox[
     GridBox[{{
        FormBox[
         TemplateBox[{"\"predictions\""}, "PointLegend", 
          DisplayFunction -> (StyleBox[
            StyleBox[
             PaneBox[
              TagBox[
               GridBox[{{
                  TagBox[
                   GridBox[{{
                    GraphicsBox[{{}, {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.16500000000000004`], 
                    RGBColor[0.368417, 0.506779, 0.709798], 
                    AbsoluteThickness[1.6]], {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.16500000000000004`], 
                    RGBColor[0.368417, 0.506779, 0.709798], 
                    AbsoluteThickness[1.6]], 
                    PointBox[
                    NCache[{
                    Scaled[{
                    Rational[1, 2], 
                    Rational[1, 2]}]}, {
                    Scaled[{0.5, 0.5}]}]]}}}, AspectRatio -> Full, 
                    ImageSize -> {10, 10}, PlotRangePadding -> None, 
                    ImagePadding -> Automatic, 
                    BaselinePosition -> (Scaled[0.1] -> Baseline)], #}}, 
                    GridBoxAlignment -> {
                    "Columns" -> {Center, Left}, "Rows" -> {{Baseline}}}, 
                    AutoDelete -> False, 
                    GridBoxDividers -> {
                    "Columns" -> {{False}}, "Rows" -> {{False}}}, 
                    GridBoxItemSize -> {
                    "Columns" -> {{All}}, "Rows" -> {{All}}}, 
                    GridBoxSpacings -> {
                    "Columns" -> {{0.5}}, "Rows" -> {{0.8}}}], "Grid"]}}, 
                GridBoxAlignment -> {
                 "Columns" -> {{Left}}, "Rows" -> {{Top}}}, AutoDelete -> 
                False, GridBoxItemSize -> {
                 "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
                GridBoxSpacings -> {"Columns" -> {{1}}, "Rows" -> {{0}}}], 
               "Grid"], Alignment -> Left, AppearanceElements -> None, 
              ImageMargins -> {{5, 5}, {5, 5}}, ImageSizeAction -> 
              "ResizeToFit"], LineIndent -> 0, StripOnInput -> False], {
            FontFamily -> "Arial"}, Background -> Automatic, StripOnInput -> 
            False]& ), InterpretationFunction :> (RowBox[{"PointLegend", "[", 
             RowBox[{
               RowBox[{"{", 
                 RowBox[{"Directive", "[", 
                   RowBox[{
                    RowBox[{"PointSize", "[", "0.004583333333333334`", "]"}], 
                    ",", 
                    InterpretationBox[
                    ButtonBox[
                    TooltipBox[
                    GraphicsBox[{{
                    GrayLevel[0], 
                    RectangleBox[{0, 0}]}, {
                    GrayLevel[0], 
                    RectangleBox[{1, -1}]}, {
                    RGBColor[0.368417, 0.506779, 0.709798], 
                    RectangleBox[{0, -1}, {2, 1}]}}, AspectRatio -> 1, Frame -> 
                    True, FrameStyle -> 
                    RGBColor[
                    0.24561133333333335`, 0.3378526666666667, 
                    0.4731986666666667], FrameTicks -> None, PlotRangePadding -> 
                    None, ImageSize -> 
                    Dynamic[{
                    Automatic, 1.35 CurrentValue["FontCapHeight"]/
                    AbsoluteCurrentValue[Magnification]}]], 
                    "RGBColor[0.368417, 0.506779, 0.709798]"], Appearance -> 
                    None, BaseStyle -> {}, BaselinePosition -> Baseline, 
                    DefaultBaseStyle -> {}, ButtonFunction :> 
                    With[{Typeset`box$ = EvaluationBox[]}, 
                    If[
                    Not[
                    AbsoluteCurrentValue["Deployed"]], 
                    SelectionMove[Typeset`box$, All, Expression]; 
                    FrontEnd`Private`$ColorSelectorInitialAlpha = 1; 
                    FrontEnd`Private`$ColorSelectorInitialColor = 
                    RGBColor[0.368417, 0.506779, 0.709798]; 
                    FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
                    MathLink`CallFrontEnd[
                    FrontEnd`AttachCell[Typeset`box$, 
                    FrontEndResource["RGBColorValueSelector"], {
                    0, {Left, Bottom}}, {Left, Top}, 
                    "ClosingActions" -> {
                    "SelectionDeparture", "ParentChanged", 
                    "EvaluatorQuit"}]]]], BaseStyle -> Inherited, Evaluator -> 
                    Automatic, Method -> "Preemptive"], 
                    RGBColor[0.368417, 0.506779, 0.709798], Editable -> False,
                     Selectable -> False], ",", 
                    RowBox[{"AbsoluteThickness", "[", "1.6`", "]"}]}], "]"}], 
                 "}"}], ",", 
               RowBox[{"{", #, "}"}], ",", 
               RowBox[{"LegendMarkers", "\[Rule]", 
                 RowBox[{"{", 
                   RowBox[{"{", 
                    RowBox[{"False", ",", "Automatic"}], "}"}], "}"}]}], ",", 
               RowBox[{"Joined", "\[Rule]", 
                 RowBox[{"{", "False", "}"}]}], ",", 
               RowBox[{"LabelStyle", "\[Rule]", 
                 RowBox[{"{", "}"}]}], ",", 
               RowBox[{"LegendLayout", "\[Rule]", "\"Column\""}]}], "]"}]& ), 
          Editable -> True], TraditionalForm]}, {
        FormBox[
         TemplateBox[{"\"perfect prediction line\""}, "LineLegend", 
          DisplayFunction -> (StyleBox[
            StyleBox[
             PaneBox[
              TagBox[
               GridBox[{{
                  TagBox[
                   GridBox[{{
                    GraphicsBox[{{
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.5], 
                    Opacity[1.], 
                    AbsoluteThickness[1.6], 
                    GrayLevel[0.5], 
                    Dashing[{Small, Small}], 
                    Thickness[0.018000000000000002`]], {
                    LineBox[{{0, 10}, {40, 10}}]}}, {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.5], 
                    Opacity[1.], 
                    AbsoluteThickness[1.6], 
                    GrayLevel[0.5], 
                    Dashing[{Small, Small}], 
                    Thickness[0.018000000000000002`]], {}}}, AspectRatio -> 
                    Full, ImageSize -> {40, 10}, PlotRangePadding -> None, 
                    ImagePadding -> Automatic, 
                    BaselinePosition -> (Scaled[0.1] -> Baseline)], #}}, 
                    GridBoxAlignment -> {
                    "Columns" -> {Center, Left}, "Rows" -> {{Baseline}}}, 
                    AutoDelete -> False, 
                    GridBoxDividers -> {
                    "Columns" -> {{False}}, "Rows" -> {{False}}}, 
                    GridBoxItemSize -> {
                    "Columns" -> {{All}}, "Rows" -> {{All}}}, 
                    GridBoxSpacings -> {
                    "Columns" -> {{0.5}}, "Rows" -> {{0.8}}}], "Grid"]}}, 
                GridBoxAlignment -> {
                 "Columns" -> {{Left}}, "Rows" -> {{Top}}}, AutoDelete -> 
                False, GridBoxItemSize -> {
                 "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
                GridBoxSpacings -> {"Columns" -> {{1}}, "Rows" -> {{0}}}], 
               "Grid"], Alignment -> Left, AppearanceElements -> None, 
              ImageMargins -> {{5, 5}, {5, 5}}, ImageSizeAction -> 
              "ResizeToFit"], LineIndent -> 0, StripOnInput -> False], {
            FontFamily -> "Arial"}, Background -> Automatic, StripOnInput -> 
            False]& ), InterpretationFunction :> (RowBox[{"LineLegend", "[", 
             RowBox[{
               RowBox[{"{", 
                 RowBox[{"Directive", "[", 
                   RowBox[{
                    RowBox[{"Opacity", "[", "1.`", "]"}], ",", 
                    RowBox[{"AbsoluteThickness", "[", "1.6`", "]"}], ",", 
                    InterpretationBox[
                    ButtonBox[
                    TooltipBox[
                    GraphicsBox[{{
                    GrayLevel[0], 
                    RectangleBox[{0, 0}]}, {
                    GrayLevel[0], 
                    RectangleBox[{1, -1}]}, {
                    GrayLevel[0.5], 
                    RectangleBox[{0, -1}, {2, 1}]}}, AspectRatio -> 1, Frame -> 
                    True, FrameStyle -> GrayLevel[0.33333333333333337`], 
                    FrameTicks -> None, PlotRangePadding -> None, ImageSize -> 
                    Dynamic[{
                    Automatic, 1.35 CurrentValue["FontCapHeight"]/
                    AbsoluteCurrentValue[Magnification]}]], "GrayLevel[0.5]"],
                     Appearance -> None, BaseStyle -> {}, BaselinePosition -> 
                    Baseline, DefaultBaseStyle -> {}, ButtonFunction :> 
                    With[{Typeset`box$ = EvaluationBox[]}, 
                    If[
                    Not[
                    AbsoluteCurrentValue["Deployed"]], 
                    SelectionMove[Typeset`box$, All, Expression]; 
                    FrontEnd`Private`$ColorSelectorInitialAlpha = 1; 
                    FrontEnd`Private`$ColorSelectorInitialColor = 
                    GrayLevel[0.5]; 
                    FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
                    MathLink`CallFrontEnd[
                    FrontEnd`AttachCell[Typeset`box$, 
                    FrontEndResource["GrayLevelColorValueSelector"], {
                    0, {Left, Bottom}}, {Left, Top}, 
                    "ClosingActions" -> {
                    "SelectionDeparture", "ParentChanged", 
                    "EvaluatorQuit"}]]]], BaseStyle -> Inherited, Evaluator -> 
                    Automatic, Method -> "Preemptive"], 
                    GrayLevel[0.5], Editable -> False, Selectable -> False], 
                    ",", 
                    RowBox[{"Dashing", "[", 
                    RowBox[{"{", 
                    RowBox[{"Small", ",", "Small"}], "}"}], "]"}], ",", 
                    RowBox[{"Thickness", "[", "0.002`", "]"}]}], "]"}], "}"}],
                ",", 
               RowBox[{"{", #, "}"}], ",", 
               RowBox[{"LegendMarkers", "\[Rule]", "None"}], ",", 
               RowBox[{"LabelStyle", "\[Rule]", 
                 RowBox[{"{", "}"}]}], ",", 
               RowBox[{"LegendLayout", "\[Rule]", "\"Column\""}]}], "]"}]& ), 
          Editable -> True], TraditionalForm]}}, 
      GridBoxAlignment -> {"Columns" -> {{Left}}}, AutoDelete -> False, 
      GridBoxItemSize -> {
       "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
      GridBoxSpacings -> {"Columns" -> {{0}}}], "Grid"], TraditionalForm]},
  "Legended",
  DisplayFunction->(GridBox[{{
      TagBox[
       ItemBox[
        PaneBox[
         TagBox[#, "SkipImageSizeLevel"], Alignment -> {Center, Baseline}, 
         BaselinePosition -> Baseline], DefaultBaseStyle -> "Labeled"], 
       "SkipImageSizeLevel"], 
      ItemBox[#2, DefaultBaseStyle -> "LabeledLabel"]}}, 
    GridBoxAlignment -> {"Columns" -> {{Center}}, "Rows" -> {{Center}}}, 
    AutoDelete -> False, GridBoxItemSize -> Automatic, 
    BaselinePosition -> {1, 1}]& ),
  Editable->True,
  InterpretationFunction->(RowBox[{"Legended", "[", 
     RowBox[{#, ",", 
       RowBox[{"Placed", "[", 
         RowBox[{#2, ",", "After"}], "]"}]}], "]"}]& )]], "Output",
 CellChangeTimes->{3.70993788940014*^9, 3.709938098578633*^9, 
  3.7099382416136885`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"pm", "[", "\"\<StandardDeviation\>\"", "]"}]], "Input",
 CellChangeTimes->{{3.709930734296636*^9, 3.7099307352898397`*^9}}],

Cell[BoxData["0.845721803369581`"], "Output",
 CellChangeTimes->{3.709937889497173*^9, 3.7099381057540903`*^9, 
  3.7099382487961483`*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"Export", "[", 
   RowBox[{"\"\<2 yr fulldata.mx\>\"", ",", "fulldata2yr"}], "]"}], 
  ";"}]], "Input",
 CellChangeTimes->{{3.7099345884575796`*^9, 3.7099345982725716`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Histogram", "[", 
  RowBox[{"testset", "[", 
   RowBox[{"[", 
    RowBox[{"All", ",", "9"}], "]"}], "]"}], "]"}]], "Input",
 CellChangeTimes->{{3.7099381237497497`*^9, 3.7099381246489286`*^9}, {
  3.7099382551514387`*^9, 3.70993825550651*^9}, {3.7099384170603366`*^9, 
  3.70993843079912*^9}}],

Cell[BoxData[
 GraphicsBox[{
   {RGBColor[0.987148, 0.8073604000000001, 0.49470040000000004`], EdgeForm[{
    Opacity[0.45499999999999996`], Thickness[Small]}], {}, 
    {RGBColor[0.987148, 0.8073604000000001, 0.49470040000000004`], EdgeForm[{
     Opacity[0.45499999999999996`], Thickness[Small]}], 
     RectangleBox[{-7.6, 0}, {-7.4, 1},
      RoundingRadius->0], RectangleBox[{-6.8, 0}, {-6.6, 1},
      RoundingRadius->0], RectangleBox[{-6.6, 0}, {-6.4, 1},
      RoundingRadius->0], RectangleBox[{-6.4, 0}, {-6.2, 5},
      RoundingRadius->0], RectangleBox[{-6.2, 0}, {-6., 10},
      RoundingRadius->0], RectangleBox[{-6., 0}, {-5.8, 22},
      RoundingRadius->0], RectangleBox[{-5.8, 0}, {-5.6, 39},
      RoundingRadius->0], RectangleBox[{-5.6, 0}, {-5.4, 66},
      RoundingRadius->0], RectangleBox[{-5.4, 0}, {-5.2, 94},
      RoundingRadius->0], RectangleBox[{-5.2, 0}, {-5., 131},
      RoundingRadius->0], RectangleBox[{-5., 0}, {-4.8, 126},
      RoundingRadius->0], RectangleBox[{-4.8, 0}, {-4.6, 100},
      RoundingRadius->0], RectangleBox[{-4.6, 0}, {-4.4, 112},
      RoundingRadius->0], RectangleBox[{-4.4, 0}, {-4.2, 88},
      RoundingRadius->0], RectangleBox[{-4.2, 0}, {-4., 68},
      RoundingRadius->0], RectangleBox[{-4., 0}, {-3.8, 52},
      RoundingRadius->0], RectangleBox[{-3.8, 0}, {-3.6, 45},
      RoundingRadius->0], RectangleBox[{-3.6, 0}, {-3.4, 42},
      RoundingRadius->0], RectangleBox[{-3.4, 0}, {-3.2, 27},
      RoundingRadius->0], RectangleBox[{-3.2, 0}, {-3., 14},
      RoundingRadius->0], RectangleBox[{-3., 0}, {-2.8, 12},
      RoundingRadius->0], RectangleBox[{-2.8, 0}, {-2.6, 9},
      RoundingRadius->0], RectangleBox[{-2.6, 0}, {-2.4, 6},
      RoundingRadius->0], RectangleBox[{-2.4, 0}, {-2.2, 4},
      RoundingRadius->0], RectangleBox[{-2.2, 0}, {-2., 5},
      RoundingRadius->0], RectangleBox[{-2., 0}, {-1.8, 3},
      RoundingRadius->0], RectangleBox[{-1.6, 0}, {-1.4, 2},
      RoundingRadius->0], RectangleBox[{-1.4, 0}, {-1.2, 3},
      RoundingRadius->0], RectangleBox[{-1.2, 0}, {-1., 1},
      RoundingRadius->
       0]}, {}, {}}, {{}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, \
{}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{None, None},
  AxesOrigin->{-7.731999999999999, 0},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  PlotRange->{{-7.6, -1.}, {All, All}},
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.02], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellChangeTimes->{3.7099384314132457`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"pm", "[", "\"\<ResidualHistogram\>\"", "]"}]], "Input"],

Cell[BoxData[
 GraphicsBox[{
   {RGBColor[0.987148, 0.8073604000000001, 0.49470040000000004`], EdgeForm[{
    Opacity[0.44799999999999995`], Thickness[Small]}], {}, 
    {RGBColor[0.987148, 0.8073604000000001, 0.49470040000000004`], EdgeForm[{
     Opacity[0.44799999999999995`], Thickness[Small]}], 
     RectangleBox[{-3., 0}, {-2.8, 1},
      RoundingRadius->0], RectangleBox[{-2.2, 0}, {-2., 2},
      RoundingRadius->0], RectangleBox[{-2., 0}, {-1.8, 5},
      RoundingRadius->0], RectangleBox[{-1.8, 0}, {-1.6, 14},
      RoundingRadius->0], RectangleBox[{-1.6, 0}, {-1.4, 14},
      RoundingRadius->0], RectangleBox[{-1.4, 0}, {-1.2, 45},
      RoundingRadius->0], RectangleBox[{-1.2, 0}, {-1., 67},
      RoundingRadius->0], RectangleBox[{-1., 0}, {-0.8, 85},
      RoundingRadius->0], RectangleBox[{-0.8, 0}, {-0.6, 103},
      RoundingRadius->0], RectangleBox[{-0.6, 0}, {-0.4, 110},
      RoundingRadius->0], RectangleBox[{-0.4, 0}, {-0.2, 118},
      RoundingRadius->0], RectangleBox[{-0.2, 0}, {0., 121},
      RoundingRadius->0], RectangleBox[{0., 0}, {0.2, 95},
      RoundingRadius->0], RectangleBox[{0.2, 0}, {0.4, 77},
      RoundingRadius->0], RectangleBox[{0.4, 0}, {0.6, 67},
      RoundingRadius->0], RectangleBox[{0.6, 0}, {0.8, 36},
      RoundingRadius->0], RectangleBox[{0.8, 0}, {1., 35},
      RoundingRadius->0], RectangleBox[{1., 0}, {1.2, 21},
      RoundingRadius->0], RectangleBox[{1.2, 0}, {1.4, 18},
      RoundingRadius->0], RectangleBox[{1.4, 0}, {1.6, 17},
      RoundingRadius->0], RectangleBox[{1.6, 0}, {1.8, 9},
      RoundingRadius->0], RectangleBox[{1.8, 0}, {2., 10},
      RoundingRadius->0], RectangleBox[{2., 0}, {2.2, 5},
      RoundingRadius->0], RectangleBox[{2.2, 0}, {2.4, 4},
      RoundingRadius->0], RectangleBox[{2.4, 0}, {2.6, 2},
      RoundingRadius->0], RectangleBox[{2.6, 0}, {2.8, 2},
      RoundingRadius->0], RectangleBox[{2.8, 0}, {3., 3},
      RoundingRadius->0], RectangleBox[{3., 0}, {3.2, 1},
      RoundingRadius->0], RectangleBox[{3.4, 0}, {3.6, 1},
      RoundingRadius->0], RectangleBox[{3.6, 0}, {3.8, 1},
      RoundingRadius->
       0]}, {}, {}}, {{}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, \
{}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{False, False},
  AxesLabel->{None, None},
  AxesOrigin->{-3.136, 0},
  Frame->{{True, False}, {True, False}},
  FrameLabel->{{
     FormBox["\"count\"", TraditionalForm], None}, {
     FormBox["\"actual value - predicted value\"", TraditionalForm], None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  PlotRange->{{-3., 3.8}, {All, All}},
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {None, 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellChangeTimes->{3.7099378896581917`*^9, 3.7099381104010344`*^9, 
  3.7099382577689695`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"pm", "[", "\"\<ResidualPlot\>\"", "]"}]], "Input"],

Cell[BoxData[
 GraphicsBox[{{}, GraphicsComplexBox[CompressedData["
1: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
zMcDtwj7P2fifVDpkoYtm9ohvpk7Rw8fCB4CdrvprkbLx/0nXdSLjd9FwfVw
hw0zp+P35kfOMGUZVgATzVbyB79KBbaUUX9Ak8TxCdEzuz1qKzF/NBpeCzjh
fYOz4ulPxn416L87bm2x1nOslzZOLBC/jPllPD/AtEoV86G+fA9fjuEwcMxq
14S4wG7c/7bTOxX52zD/inUNqpVygYf03WY7UnF9hateLv6iVALsJbpDbBuJ
AuNFxkSzvvFHvd6rrWVXoF057pfBdUbWhEzwD/BR1zp9DfNNdsDDemML3n/o
svOo0rbk4/2JR3Sq+Ge8nxFt179UJ0iF8aUU1FZJSOH9C2X18EYJei7+PPFd
usDOhOOTjk1W5dxKRj1drjjKXAjr0WnFAWLMvKjvC6ys/hBjMARst3mirvnV
FNaPmz65m+qMernltsD7dw3x+1LWMxuDK7AenFjrebf5+9+7UI86NBm47asH
1KcKTGhP3yNj/bLeEyN/uUOdUL9o+XX+qqUP26F+keO48OP1W7vA/i59qf7q
Oipw78Iv5WEDo8BSPboi32j5wBROH/uVARg/PTty053RemDVg/fTkh7Uor03
waHuN7xvEBC5zG04lgnnr6ErwZm+HNfP81RHRbUH95eapm16ISMP/G1WW27R
TpsF5mLZLT1AmgFW3Ltr21b1NmChJYKSRXxNED+hL+y9iTjWW3t1GDjrvWyE
/ZP1OXTUuqkW/CuXLV37srEP65dPC9068f3vtTl/UT3PsS0LenG82Vxppf1Y
j004c870Sn0C1lcvWRV2VXIA7Ndv2+adLMPz5nCUzNuZmAX+fEOs4szZWJ8s
mtuqIjOG9cnXjxDlFj2ZAnvMySyl4d8wPjd74X4G2VFge4fj60jqQ8gBDJ0v
GGiwPq+QgL6DjGnAJC4dHZM2rNcWeKsl+GUv1tc6NyuHpfQ2ob9vVQe3DR2Y
OPW5od+OjPW3G8Rv6NiPwf5q9nQWelgjZ+3ryhs53QP+lp0q8Q03MD7SoKth
0crP4M8z5Wd9u74Z+I2GSlYzNx3rA78Upy72xPrchU6HL612H4P9i3k5cE0m
GvU5p/hn3Ecfj2K9cog6VxFXG9YXml58IeaPepuenuTHGWesZyUc9T7kcRn1
Zl1f5S8Gwdmo18ZfqwvyD0N/731BliY5qEe3U46P3i9EvVqgyzy2EPVpXa+3
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
c3nt0a3C+u0tayq8cn9XD655Vn46fQJ4bH7ylsnN7TifgtJ9fb9v8nP5MRVB
KO//2gXMceX+CfvJCsxP423mydUt8H3A+0BZptdUzPf1d2SpH7DenJjI1eG6
tQD1+Gnu2e0ObbB/9BXPMh1lsf6fuM1sHZ9UIowX+nKoXfNTJ1mLZVxu7VYO
impf1cd5U/Xyc0xav2/KWbwK9DLfYeWnYgEdqM95KYReZKxAf+VuBip7Ou7X
wkNpmV+mYX9IKg686kvwvOhLpz72bipB/dcnTo3Kk4Dfy94m+iRVAlcnnHUM
ZCIQ57jPqSGT8Q0TMOfZpRm2PAzAmwdC6v2ZkXOqxXf6xc0HDpVp4eHsL8T5
8sz4ti3HeOxkl8c2z+uE9Y2dmGZ1NeuB/cqte3XTo5gOTD3NnMSysBBYqqWk
KfJ0BTClqKZkXhAFxsuyjtcW2d2M9u6Gs1FbO4AtF7/5VnavDeLL6ou9SJvf
BPGZc6mbru4ZQD1ZOPv+/F7U2wN0z2wRcJ7Cn4/fXH25juB7GIT/979/+O9l
0P9+Ev/q+f/hf/hnMujx/4J/dXx/93rh/Yz/oQz64n8I/yjf/ir/6vX9w/9e
Bj30FzHUg/7D/89/P/u8/mo8oMf8w38L/+z8Af3/H/4p/FfPF96H+Bf8R/8/
G9+Pxv93M9SP/i/lf/bzH/6VjHrx/w6GevJ/E//V8/mr88+97/H/l6Ee9r+U
/26982fny79br4X3P/5N/Kv16V/N8F7G/xD+4/n+6vl/Nv9o/rn3C/6n8p89
j/+0eH42/2r97d/Nf9z/ufcz/tX+/Fn7H/lH5/1H/z/G+2fP84/jwXsP/6X8
o/P82eP9Vf675/vR+H9WL/vjePAexr/gH+3vj77/2fyr5//ZPPceyBz/WX3z
f5oe+mf13p+t9//seP+33T/8p+vT/2n8x/XB+wb/gn803o++/9X8Z+P91efz
V/lX66P/6fzH8/67v/+r8/279dcf8R/14bl64n/l/6P1/FV9/a+u54/x/4j/
6vn90f6r9d6/yn88j5893o/4Z4/3s/lXn89f1f9/dTz/bfH9u+9TfnY9999d
//ir7xP+LP/ZeuP/7fXK/+38I33sj+v/1Xrzv5t/tP6/mk9/dv6fPf4//D+L
f3X99b+b4f2G/4/8n7bfP4oX3sv4m/jP6n8/Wy/8Yzw/Wx/60X7+yP/v5r97
/f/wP/x38q/Wu3+1vv2r1wfve/yX8K/er7+bf7ae9mf12V+t//1Z/rP586Pv
/2j/4/78aP/+ON7c+xP/in+kh/3R/1fv98/mH+3P381/Vo/+kT+8l9v6jGF0
APsDCix8RYioxP5/HMbmR4KPYr9CXYuMFeu867AfYcKh+nijXrDbPHN4JKww
DPYP80cULggzEue4vNg4eif7fOCxBum40ncMwMTSBI5cXuzXKFuubWqghfG1
yLhWX/LHfoSyN3P3Wzrhe8FTJe/rNakd8H33vnlyLfl9wATTqy3u2/A9FGLV
zoqsx2Fgp9X4kk5vbwWW4ipqo9o143vPnYbqKRnIhAQrVq3DJfi+s2RQjfj9
Evg+L3xGrsiQQJzTK8IDHMfMn0/D+6ekaEW+DJ1YfB+YIBO+17IV3ju1I5qK
857A94H11Hu4RSI6YXwBqbO94l+aYH7zXZYEAXPsp0l9IpokTkrB91TPLs9M
0qHCfJSXe3sUJ2qAec6+u7W1vwyYw3Pl5/Ji9C/09PNtXTcErNr5Yvez2mJ8
bzjGxI7xPsZPKUutmGhpw/eQhU670wO6gemZo6+CX5Wgf8ewFbNELjAp/pKa
tlwlMq8y40vzVJjfnE/gxsmiBnx/Oc+UWW8D+ss8kynRtxwA/6GzCifSfenA
hB0XB835PwB7RS9ibq2vhe/vPT6zpVIN39cmBfF0vLRNwvO6EMMqXtcEnB9/
8UV0OTOcN1FT3ml5LAtwAtfSY0USs+C/4maA2S4hzA9KX9WKlN1peF4hC5+5
huN71VLX1MKu3GwHphopJbZ8awF2prq/OVpdDawR8N563iN8j5oqn/R1U3oW
sMD4MdXFQQV4PkceO2nH4fqsP+YWKQy04nrLG7h1xkpw/0L7l07rReH4bO/a
qF2p+L6wT1WWmU4Vzse5zpi2Cc+H8mT84TSxGd/Xvhni50TE96YJXV6HFqdl
4voizqy6UIzr8/Lstqxp/4Z845NDsmkOsC5tKoq4IA/zxyDsVNPxAIz/sv+h
7Q1Pcf0Fetm8Hhg/06utDCOZ+P42IVik50Mgvr9NEGp1LCq2Brui2S3tDE8q
zrfNy7ZlI75fHOohYbuKpxff0/bbNn2COYc8936G7419D3SdeuTnWDVGQTlS
rALsPJrJe4VsWoGp7/KshC6mAxP4Iro+bzGH7wmGswHnJiOB6c41z2cu1YI/
zVT2XHhTI9gpI1/ijpxrAvZqjuFwZvgGLNWwxy1Gvxy+ty6Spi4rHQa7hnop
63XDTpy/RkL0kxr243s3xjDRcLYL3qt1rOc7fyke3yPW2Nxrz7+hHJhjkv/e
eeEe4J0y1j3ikk3YH++pZ/6UdDewwU3l3IfOA8BEHR/1bVvwvWTzQ2XZJ/zx
/XKCwt2V/eZl+D65+BWdp5Vl8J546fm+Y/N8WoDplSeGQ+iZwGPHyM39gS3w
Pc/5C+o6tnX4/rPQk1qJWHyPWVSp7UnI7/pPUieMCkmu2F8zxnZ2+7fBZnz/
Wee3D5TuIuBgA1OV1d/6YXwWM81suxJ8j1nUZKYt/hgN589sTQt/hf0ECZrC
BtteOOD+cNllF+UUoJ3xU9D+pCxgo8e+eqFEXA8hs947MDUS3w82yF3m1IHz
EeTPRC7fmAIcabA3f7N8O/Bu9q+J7zWHgS1NlcTFU/D7Jx2T5wfI+J76im/E
EZkmXG+kFNH5Qg+e/1jFNrMZXnzvnMsmWdub1ovvc1eVKT1/GIr7cf8AXZQ7
H+M/Lrpw/CSun2PedRfHaHz/miqpkhBOxffcx6z5JDUc8P1k4glDl/1hGfg+
8i7+22Tet/A+slfFVbFH5/D9Z9LFYaOIyFzgFJMLl3IfTcP34RQLasMdfL9a
1CA+KfxWEzBdLeHD9vxqYErQizDHhZHQT45kxyrP/y4B+sOxDKUTaRQa2Gt1
4jk9Q6jANGX3O1wCbcDEw8v2NnFkAQsEp0ckhaTBeKQlHAVsSSVgb0m2ExGR
oAOXn89aYb5mFDjy2Ssft/YmYK/P8kkTxjg/QUc23+sj9uujDpdYRZBTsJ+h
wmIh06Ri7H93Wje1P/kt+OuqFRpRZ7H/IenpJ4Pd4XF43l0RNYuUk/H9ft0H
zx/4l8L+E+7RAhdZkvH8BltYnBVC8Lx25Pg8OIj9Aglidy7XTHrjfKeqW6bl
UsDO0kZY9vxrL7CqDyu1Ngnf6/WqO8K3viAPeIzbLPiFO74vTa+Ku/LudSVw
YV6sBaNuHTCL07pHF59j/7wE8usnZtHYX49gryOcI22PPPXuUPsXJ2Dd7IH7
4kzYr0wgZHPh2bAyfB94+mVD23t8z1f3girf7gvY746wsHuSRG3F7x8Pq3Bt
qsb+eBrTASyUDBzvKZ3RRLQX3wt+9rqC9wa+P0wc09f71FqAPK+1NzcC3+t2
q1a+eqejHu3ur5cqLarG97RH43fHV5bCeXiJhB8dkajD8xIhHlbcHIL5M6A7
4HLiFZ6fUkqXjYgP9lOMW1r68mk+9qcMNTrwli8D+zfqWXOtLaYAJzCcJkgU
Y39HL6YrVusTc4GNItn1X+3FfpnEKe6euJIw6N+nq93JVKnTC2w0qyUtINyH
/Q13NfnW9oZi/0OFwdP73QtxvJ7GHcwKydgvc/8Ao3RZGviH2toseG3Wgd8P
z/ifUcP+mjzHlOfxj/Xh++fGVyNPNxUAC+1jPJgz3Yzjjw7YvTuP8RNEnxxc
aPAe7FlLZlouWLeD3TLGgZlpqgnOz2vS5d2b1Czgq/NKn9SIMBHnWLBAnBid
tgDYuKC/rc5iUn7ufQdn38SMbptC8hwH1Exfsc7A96plOUxl28hUjFc+k9jp
GIHrM7p9lLnPD/tNBsrffvQ6CMYj7m4Q0p2IAxZ6eLz7xtVOmD+0vujj2MZG
YFJzT9MGhkzwD2Uyk1p6ngasW+XEtlCwCu0LHhIND/QCm89IpfCTG4GplhxW
n+5WwvutHN6FH0U4KrC/XITQl1fHo5Fz7Bs99Z9gf77HjTH7N7ZAPzPzRY37
JL+WAVO0DvgYXs0Cf+ek3PqUiVacr91qeNqzCN/fXWBhnptbAN+njU8O8wZj
vz23gU9nKFpN+N7sygyrlhvYT5BYQvycsQT76VGTTla5jOcBXzZ6fI1wmw7j
625wNXOwaIb9JaRsXxlv1gn7MzYe17SgvRv3c1OBjrEBsvNriV67RaXILqsF
okm1GE9lv9/2R9ivL2a8yDLOsBe48LjsB9552M+OIOf6kp/DC+LzCtmtYV2P
61HlW5fcJ9OD++8idlaFC/sPUiauM/UkJuD+86X6JuxBHrObfXQjdBj3X+GC
16P8EWCvDj8VrwDsX1i4+Ov2stWYH4Rbtgb+99uwf503Q2XbwRqMT2lzBPeh
3/WPHD0veGYpvg881HzjSN1JPE/z2sCC1IR6GI+Q/VhvS5oP9jv0Nd91aVcO
2g2cYlTingMbXdt80fMQ7mfp1OKLZ2VmwC664hrpZH4H7oeJSv10NhnXSyt+
6hxSBmxkfltL7xruZ6FeWDevShH2t2RRStvaUoHxuKhZyS56g+sfpgpGPsB+
fQISAolKggNof7s9mGiA581x4cZM13IqvJ/rJa18iTGgAPvBsaps+DTzu/eg
1z7JLFDF/nJZJ/z61ezxvead5kojQYvwPWyvikuBcmbN+P6wsZMyp1ENsPlV
D5f5qdXAFK0nl160huP7z6s6HtGCo3G83wbE6nOxnyPJYIv7qEUn8rMb76cs
MH7C/hdXHZ/i+KQ8Q6kjw53QTzGXHKa+9y0zBeqbj0el2nfPgN3lw0fN4KlR
YKMTL0+9uY79Gi3pYW6XhbF/ZILgkbPmXUPQP5FE3jV7RS4V+3mKMM33OFKC
+UypXX+x2xnP97rv2x6fdszf8lTtryuw/ySVk/XTzRtZwMSQS6bHU5BjXCcM
H3//fTvHutY7DOc/qCbPve/BM7TSadS8D3hrwgb/dS/owPbti6cl57cB07ka
eR8UFGK/Q+XxN8p6+fAeM0eUuq3nM+w/Z6TENys5D/v1ib5qfDd0GPtFVvpd
+Rw83oj95u49mnYSx/50Rq+G529u6kC7SObx+Ox47M9X49a+bzOys3sI0635
2L9OcUc3JXPHJMYrdfSCkNYw6oOlgw6ikt2oZ1Z0OyYKVgO7bEjXcHzYj3av
rnOLTiqiHsxCVCq4kgF6JH2A7dVwdy32L73clxQvTMHzyFzNMq2D/Ujp9wNN
c98jjz3YHnOgCM+XuP/e51Zm1DMFVN2l9jMmw3zKn7VWVknSgEWqV7gEKI8B
b1UZNfMxx36DHNvKduXObwe27/PxiZ9Bvblw+gbv5WvF5Ln3D6gTqz6Zff97
Cd5DmJ1eJ344D+y6Ih6qYd35wKrRsQfFOfqBHbU8r7OWTQJLiVhpjGl2A8fI
VGiy6WL/u1DFuvqndqi3j3lGmx7Z3gXMpurlescC9e/CLiHJRbu6UY/3zI7l
ccvB/ZJIN3nDPgncLTv4NpYJz7Pw1E2t+z2or1Nq1H0WcmO/PkK6dfuZ8QyM
x+7keZcevB+g3Rxe4JWF8djzFQ0euIX5RUzMtDmwCvsFOq+7L6gz2Q5MukXn
vRNcTJ779+gRGmIXh/0JlDn2ZLmwTSplDOzG4lIG3XETwB98nu64v2IS+BDj
pSotq35gLmcNYer6buBQ2gdNw4t18nMs8KxO97h0KnCpIN/ehaK94L+g9A0h
kGkcWOzUWekHv2E8SbKBBgn6dGDTBfv6eQyaMR9OTMqEXqkHO8FD+42W1guY
L+vYojfrPlSD3f6DvTBDQzlwmkWJpcxsF7B6QPe10Clc343be8ecVEaAOc2s
nj5MwvwjXiaeS80jA5M2+mzZRe2BfOYIb6354IH5KNt8lWHPliHMfxFXpafz
cbxQBZr7PO0qmO+zRN78vndDyPMfLBOfGCfPvV9gf4zD9Yh5I3Bh5H7pQ23l
8nM8Js9aXncSOWH7bPCdgn7wN1IKZS9xHAJ2FOH19lEcBja//un4pBbOp/iJ
47lU+hhwwJsash9rH/qvmB73jK8Ddtt6l/+I+wBw6OTKQPYHOH+MgVWNznMq
xp9jeHKIFc+r5WSCkkxVJ7A27dyjW1yDwAkLfMVPsLXi+PNcxPSdcD9IA6Oa
a00KkBevX1ZxMQP9VZdJ6JxDf6+u1htOZYXA1GMCtEZ5zG+K58U1ZFIo5Ff3
k7oi2VcdYO/lc/Ex24PndW/iwlNPDcynnY897S6/aALWvCT1PqRpALi8UXXj
+p2Y78FLrW3eqqJ+aXpgdJmycT/wVvkjzIk1yKR7XktjrFBPY+Mw1A+txv50
Ab7HFn3Lwn6FZ2eFj0UvwO9VI7tKVMijwCxvN33Ke4P9C1XLyDcsvmH/OIJi
oPkedvxeqiv3/YD4CHDoRYJazlWMh0MiQ8f3d/osyVvNf99O7L9Im224m+iI
+Xfiwf1V31iGyXPvZ3CEjPFJBjfC/uiShLqslpHRPnE9zbGuD+ykr3INcptf
gV234kUUV28HcFauc+Dqz5iPY0Huzo2dmG+khR9yGsxDwd+NZKgWHYH7RzD2
fDXwNgT8x6pWfF7jjr//GNZKuNYJ04FT+oS6ms+MwXiKB4Ydih8NkOfeS3D2
vFWzbaIcOLS3iCQR1wosKiL30G9FMzBP+a0ao5ftwCSjqMT4nC7gmCO1Q9Na
jcC6m5lkvX36gAVOynFL38zA8ZS5VFx8W4ClzlZKFedgfJWytcevpo0Ae6Un
RopEY387KY/+5zOceB9BpZrkCfAWyc/5O+pNpWwz6wWm8IplT2yuAlb1ubly
KgP19oBpse61NOw3KaS2RozIifkVoGsitq0X+yMmlHXtC8jE84ncObKhYTUy
laJDjDP+3X5LPXr+Ug7zmbJdyq/lIOr5bB02ITI5VODQU1+CgtQxHmLR0Y25
m7BfqRfVk3mTPu7vkBX7dOwz7B85Fh/U7MjfAXoYNaZ3x3vZAuCAeYpnElhr
UF9bWGm4mCUG9odw7PlB3Zog+bn3KUi7hV56ysaT55heuGf3bFYDrq+ybbd8
Yx18H2q3iTXiSg34k9aOJDcLfgSWOuTkzqnQDePTn1OHSkcawE7wDouw+JQO
7KziobjKrRr8Q4OHnn7dXwZsFOa8cFS7CeY3934mfXBZOXxP6VpdsI8J4zG/
pbWkbVkljhd02+T+U5zfqKpypNyDCnbCVsYZvxBnsOtq3WfauLoMxz/F0ehd
TcX1vmbo8bobifFrXn/hubUExmNhEdlLHx4HpsamKh4+g/GQBGZ2vOZKJM+9
B1L4QXNnLBvq41I7i9LMmaigf2U9b7shvhD1yxjpkt6VTc3gT5RQ3CO1iQx2
0asel6qYh4EFUrTld1Slw3gan8V3ybeg3kllkGCVTq4BO9WYx31jdCbYaV02
e24dwnhyg9cfzN3SjfrrOfUAj+QS1POEOAtDfFC/pAS0jh3sI8P3J756bFhx
mY766UDxZ1m1TNR/Zy23GPfjfQNhaJP3yuE7qGeuZXRgLUK9n0c4f4WydCN8
T9OU/aRchPlvxFv4Ml+hE+zOiY3jPm092M/upT9zmm0bxKvq5+1cmFmI+3Gl
rrrrA+4/0UG6o2vPV5yfxTf9ifwIjG9f70qKuduFP58WZ+UEQgpxfYtWre2I
rkQ9e4Nnqu7CcLwPaLouU1aL/RCdj1jtW2mM/Q4V38ttE6zCfn8nXHNiXncP
ANP44k8bqHQBK38e92W3HMZ+lmNcLRYt2O+Rw9g78exkOfbbzBO499AX7zto
zp9VA2rw/mIfe2mxhiPeb5DsNi19JxaOeq33nhJb/0DUr9+c3cPC34L69g4F
x6vh5Xj+LYIOfo4pwF7GzYWtVuXwPZ15+dW8ZuwHaD+kX8olg0xyJZ/Zyo3r
t2RYdCg2vwfiU1Qqe713LR3vPwJSSk5a4H0JlR71za8pG/snZrideR9djOMn
O1TwxwTh/cbpT/dWLY9CexlpTzJTGu7HvWdBUhW52K/w/LwKrffYz1S19uE1
8x348ySwdFTQ+2Iq9p/LKT06rx771Xnptb95NYP9R3X3XBYMnIf9NOlryc7a
87BfHL3r4U7uJYXQf46whFv/Ggv2q5OKZb+j/Q77GwoED0axL2gAVi1PWNI+
jPPHRDVMkquxfx2hqsXRzhX7D8aY2B6V3IDj0Q0jOwzOUIErdbMDrNxR/yc0
KU7VkeMgPoHSumsLbmK/QmpLvcdHY8xf6nDAbERoMeyf/aINX2M2DII9bWRU
0+HiKPZPfNt0k2cNFft7Glaqsrrh/skm9xuLZ47gfR//1j0Nt/G+zdkhIJ6y
APt1bs0RfMiSTMd4hJd2VizC8yXFJBIq+jEeUoVK45pvbaCH0RWrw8N2/k7f
JZ3g0R9JBv2MJ5z/fYxNJ+ptLO5yFvcaUV8bYnVoWd6F+tu6XY9rp/NxvOOl
3vH+qOeT1nErXDmTifr119/YPBOaUf++PR7rO0gDftZQ8HSIk0CcY8etqsq0
MjrYRdd8rU+LwXiuOg3UWREWgb+KoUeww242YO92MS/6iwXAuoUS/LcHUM8P
NVx/29cF88suc11iuyjq2wSPtyXu9qgnCwykSfMvQH1d9Y7j6tu2jZiP33q1
rNm78XtqXLCCGur/pAglG7Z1+ZBvlBVrwqvaMnB83YvRk8oYH2FxqJ6hQxXu
70CsjHdCGehdlKpKWlf8EOqbWn73Dghno/3LcreyvRGor2XtuZpsUw12wuNj
qUuH49FfrePb3qkBYCb1e5Rj8hOovyWlthRqof4WU8j1mOaJerLqCheHaZMS
+bl6Yp49g21R21DfdStrO2JRifkTc/xm0cbTqN+p5viyd11AfZ10weSuGGM8
6OVSyZrMYbWonxOEpGxbHj9AvbqbwOg2Lx/WWykbLfCqDfVmWUPe5uvFdJxP
jHFlzfDv2Jtc1cNSDv0RefjXTdpcbQRu4cqO1Wqkw/q4pE9sFnmP+boiLjGL
rD+J9ys1Rh9PlVPwPmtNvnaO2O/ic9we5rMF7xuokfl6M9mo926OD3z9W8I0
6MXOyiW5FXsqwK5rvZLc7ZsFdiNRi47bV/qACa2C66P6Q4F1RTSYuDPQX0Bk
X1ryvmYYr5CQerggsgnsO62cN5jZjgKP2I7bbDQZBHbx6HOTcZgBJnH3+K4Q
rILzcevlaRZdTIPx7c9sec1dTwf2Cn12pFK1F5hCCyYdqG1B/Xmv/jKJCuxX
SNr/YOPywx9h/BNrHZ57pndjPoyt/BrGjuulxL/dqj8/B/Xv4PsrFSzsYTyq
fhA1yyYdvnceGl1N8C/C/p7pHGI91dno38hIHHTD/JP9cGw2MJAKdufyzDTH
qFLMxwO3CPs/Z+J9UOmShi2b2iG+mTtHDx8IHgJ2u+muRsvH/Sdd1IuN30XB
9XCHDTOn4/fmR84wZRlWABPNVvIHv0oFtpRRf0CTxPEJ0TO7PWorMX80Gl4L
OOF9g7Pi6U/GfjXovztubbHWc6yXNk4sEL+M+WU8P8C0ShXzob58D1+O4TBw
zGrXhLjAbtz/ttM7FfnbMP+KdQ2qlXKBh/TdZjtScX2Fq14u/qJUAuwlukNs
G4kC40XGRLO+8Ue93qutZVegXTnul8F1RtaETPAP8FHXOn0N8012wMN6Ywve
f+iy86jStuTj/YlHdKr4Z7yfEW3Xv1QnSIXxpRTUVklI4f0LZfXwRgl6Lv48
8V26wM6E45OOTVbl3EpGPV2uOMpcCOvRacUBYsy8qO8LrKz+EGMwBGy3eaKu
+dUU1o+bPrmb6ox6ueW2wPt3DfH7UtYzG4MrsB6cWOt5t/n737tQjzo0Gbjt
qwfUpwpMaE/fI2P9st4TI3+5Q51Qv2j5df6qpQ/boX6R47jw4/Vbu8D+Ln2p
/uo6KnDvwi/lYQOjwFI9uiLfaPnAFE4f+5UBGD89O3LTndF6YNWD99OSHtSi
vTfBoe43vG8QELnMbTiWCeevoSvBmb4c18/zVEdFtQf3l5qmbXohIw/8bVZb
btFOmwXmYtktPUCaAVbcu2vbVvU2YKElgpJFfE0QP6Ev7L2JONZbe3UYOOu9
bIT9k/U5dNS6qRb8K5ctXfuysQ/rl08L3Trx/e+1OX9RPc+xLQt6cbzZXGml
/ViPTThzzvRKfQLWVy9ZFXZVcgDs12/b5p0sw/PmcJTM25mYBf58Q6zizNlY
nyya26oiM4b1ydePEOUWPZkCe8zJLKXh3zA+N3vhfgbZUWB7h+PrSOpDyAEM
nS8YaLA+r5CAvoOMacAkLh0dkzas1xZ4qyX4ZS/W1zo3K4el9Dahv29VB7cN
HZg49bmh346M9bcbxG/o2I/B/mr2dBZ6WCNn7evKGzndA/6WnSrxDTcwPtKg
q2HRys/gzzPlZ327vhn4jYZKVjM3HesDvxSnLvbE+tyFTocvrXYfg/2LeTlw
TSYa9Tmn+GfcRx+PYr1yiDpXEVcb1heaXnwh5o96m56e5McZZ6xnJRz1PuRx
GfVmXV/lLwbB2ajXxl+rC/IPQ3/vfUGWJjmoR7dTjo/eL0S9WqDLPLYQ9Wld
r7eKpYoTwM4d+zJjD2D8qu/kD1TIYb1s5JBYmPA2tHOpj3zWy8HzDx0oaTK/
i/o69VPWxrDmPrAHLLvrI72xA/PF0e1R6lXMJ4buwqaw1/Moc+yoVz2WvgP3
T5HhseKlAjyPMdfmvbksVfjvTbRnbl1gw3halj16cDtmAn//bedK7bfB+nrT
ta6Mt1bhedB1PCeOH8B6Xcsh82LRg6iPCnhQS1IbOoDpQuypNWao/9tn+Izv
UkS9V3WW+/SSrajnEqZ9bGZUyHgeWeslohRLsf64LPjGgCqeh9eus8QFHamY
fyl6NjWi33C8S/xtUsv90D/J0OTKJtwf2XcJtZoLcD26X4JfxiZMY37U5e3q
j8B6d9mmrenjt1Hf5eg9EjFhi/lem0HNSLPA+5fc410FFtexHp9Q7bav3iUN
6+d3nc0kimJ9NInP1Su1+yP4U9mY2Il1uF9jxxMY1Y7jfpGY9x4JcS9H7rDj
JEX5gb/uoCZjvv43YJJ01+ER+WCMjz0zYlwe9XCmGi3bZuMhqNcN3BAkt+/r
BNTzxpSsPb3PkAqssJygpVSD9dUEb9tT0oeD4HviHcOD+3RygK3X0dIvnesH
/92GM0rbv0cE9d0ytgetvv/9AuOtY9f/IlCJ4yUuGhkJyAE7y0Nl629+GA+R
aXeQrzbWh2vYtiZzTTeCneF1C6f/7UHggWaOYInN4/Jz7ytwTWd8mzyKLHWI
f/VBoVFg5/eKb0NDZnA/ad4Oog1f8X4gTSxMMC8TuDAy4mTdB8wv0sdMUx59
vD+Jca99KOiE8Tv3+T6Qv96G68/p6eEPc4f1OE+eEJ2/pAHs3aKKlpfd+iC+
2nNfsn39+4EVTIztXW3p8nPvRdAPX1OLuFQEnKVu7GVSMQgcw3Gyb7VwIzDh
JJ1fND2KDLztXuax4hhggYuCl8racrBeN+zRVLsb1hs7lw/xevKhnma50owe
ldiJ9aOGx7o7J11Qf3NiS3r5HvXM0OUVE48OlICdaPko/MvBPNTvWNMMjrUG
YnwU6hvOcSesZ04yUc4pwHpxej+Nk90b9SXKx7May56lon5q+FGGg7cB9cOc
MtMRi07y3H6+SyZcvFiO+6nNyhsWyjaBenBg94Xb8/3An7DyY37pstfApOQ7
mi37IoGXGVLobZKYXzIqioSoyjFghinh5BaHQWCSa5Dmm1R/YOLW8EUvORMh
HuuPdWc9T6BeTChVuOtX8QC51oSxnyEa1i/wvpqny7UD7YNDocfbUa8mLry1
8Skd9W3K4fc+Qo2oZ8Zw2r86x05DvXNeIctWF/TnWTU9fs8a9V/z7g27LVt/
x8p5bLHbUC8nTGzulOuvgniMYj97TgUOoZ5ufvCm5M4O4IDHurKbC3F+yqaW
lRHcOD6Bs9iSsd0HxhP1e238TA31TVLJqQUe776gHpmwcOn4FK5fKnPVuXVa
mD8CNPGdj2RRb6RO0qU+ZBXh+telJA9K5WC9vn0aYZEW1uerzs/yX72kEPxZ
ahfLSPpjPDyC977Mj8H5VR1tBr9JVmC+9xBuhrjivycgaO5/FMX7CTjmbV/E
ghJcv7XCiG/PVtw/39FdLCM2yBx2vfwbD3biedx02rl4fy/uj3h+8cJ+Xzxv
H7pUif0Qzk995uytdh/XF/0t7rI4jqd7RKZT3QTjsbwyWpKQjuclFXH3HHkN
6tFs069qmbV7Qf+TsvyNMrKrCti+8sV0wNF+8G+hWnYtWDEI7Nv/Vqo4ig5s
aRKXzf278YMb/CNOGowAd3s33p5iQ3/nKJ/itkbUy+3jNt2MVWmDeCWkD4WR
Hk5gfhl1Wn6VssTfH3JC0/cPYX4aSX6YCTPE/Qg+FcXVemsa70foSSnc13A+
S1eVFRrquD6pYvmaayWot1uWU/L5GDqAp86ZWJxnw/W/+41pgkUV2f4xM7uR
IK73xKtE5aXWw8C1+UdZL+kMk+feL6DefSGr8bUJ2FzGnlPGqhGYVJXSqO/V
BkyYcp3Q0SkHps1yuywRogOrHjV+USuMTFovv2YytA5Y1pO+5OnyFuDCKXZh
+tV6YIEnFdIkAjLHYq1rn9hQjy48cnn/py14fmknV0l0Hx3A+5l1kyfTw8PR
P7/OXtC0Hs+72taJWIX3LRzFBN3Ul5XAlOaxOn7pcMg/o85zEcXP8H4lQLt2
MGxTFzCth+3UAC8Nx4u0lFp9Bu97SOtLLjRWTwNHcks+UvcaB1b+5BP1YZqO
+hiT4Y62azexPnqhn67p6Vqwa2QfZJDciPXQNOOpc5d/G0V/3Zz0u7tKQZ+l
qMRE3RTLBHYcDlz2nKsf9WQJzv1ysaHwveWFxoa0oA5gSv7avlmTDJgvWFmp
/Ev3DMZL6JBfWvMQ/K+fuS0mE08H5jq1u4SnfxD1Q3Eurz26VVi/vWVNhVfu
7+rB/8+iYuz/Hv0F5/9gPWj82+g5wj4nz+bUpaftYenjz2aGax+3vobzBQqb
Qzp+X0ekzyzzgoO3nsD1r5i/yoJl2gNEetestXiwCLHe3GGvyMvpJucR4/F/
Rf9bdj+Dh98Hqf7jPRaI9f8O5vnqMgZ74eZtmPzledTKV/th508EvL+5jPHP
PXsYv0HT5c8E7Zvw8bIlX316tVa8RIzPLXDakMl8HaHe5w3TA/6jiPDi8jpy
fP1fePg0+HZLhgki4uuD8J9l7wwvI8Z/F+8KfiCxB6Hfotph8b4bcP6tPTE9
q1gYHGD89333jzPPYoHzhWKEj9VLMMH5Rp/W3lvOjuCfuqVts3QXK5y/weyJ
hNDHCwj7zubLmIsj3NNiIb7zMeMruP9+hPzlnJ7/Fh5eZ+5OLZ976QOc/yCS
fR8H1wU43+DJ5UdbIq/D+Qcu3r7MuPoA3LwTNbvj1OweI+Tf3I/ZZvISzq/g
m3X6atMzuPtOvN+Z+YL1Edx9BSJhOfJvPyHGk1VPNrO+Q4y3r0iINlaY8AeR
P7inLxHx274fAPwY7kw=
    "], {{{}, {}, {}, 
      {RGBColor[0.368417, 0.506779, 0.709798], Opacity[0.3], 
       LineBox[{1090, 1}], LineBox[{1091, 2}], LineBox[{1092, 3}], 
       LineBox[{1094, 5}], LineBox[{1100, 11}], LineBox[{1101, 12}], 
       LineBox[{1102, 13}], LineBox[{1105, 16}], LineBox[{1108, 19}], 
       LineBox[{1109, 20}], LineBox[{1110, 21}], LineBox[{1115, 26}], 
       LineBox[{1116, 27}], LineBox[{1118, 29}], LineBox[{1119, 30}], 
       LineBox[{1120, 31}], LineBox[{1126, 37}], LineBox[{1127, 38}], 
       LineBox[{1128, 39}], LineBox[{1129, 40}], LineBox[{1130, 41}], 
       LineBox[{1131, 42}], LineBox[{1132, 43}], LineBox[{1134, 45}], 
       LineBox[{1135, 46}], LineBox[{1139, 50}], LineBox[{1147, 58}], 
       LineBox[{1148, 59}], LineBox[{1149, 60}], LineBox[{1150, 61}], 
       LineBox[{1151, 62}], LineBox[{1152, 63}], LineBox[{1153, 64}], 
       LineBox[{1154, 65}], LineBox[{1158, 69}], LineBox[{1159, 70}], 
       LineBox[{1160, 71}], LineBox[{1161, 72}], LineBox[{1162, 73}], 
       LineBox[{1163, 74}], LineBox[{1164, 75}], LineBox[{1165, 76}], 
       LineBox[{1166, 77}], LineBox[{1167, 78}], LineBox[{1168, 79}], 
       LineBox[{1170, 81}], LineBox[{1171, 82}], LineBox[{1172, 83}], 
       LineBox[{1174, 85}], LineBox[{1175, 86}], LineBox[{1176, 87}], 
       LineBox[{1177, 88}], LineBox[{1178, 89}], LineBox[{1180, 91}], 
       LineBox[{1181, 92}], LineBox[{1182, 93}], LineBox[{1185, 96}], 
       LineBox[{1189, 100}], LineBox[{1192, 103}], LineBox[{1200, 111}], 
       LineBox[{1201, 112}], LineBox[{1202, 113}], LineBox[{1206, 117}], 
       LineBox[{1208, 119}], LineBox[{1209, 120}], LineBox[{1210, 121}], 
       LineBox[{1211, 122}], LineBox[{1212, 123}], LineBox[{1221, 132}], 
       LineBox[{1230, 141}], LineBox[{1233, 144}], LineBox[{1235, 146}], 
       LineBox[{1236, 147}], LineBox[{1237, 148}], LineBox[{1239, 150}], 
       LineBox[{1240, 151}], LineBox[{1241, 152}], LineBox[{1247, 158}], 
       LineBox[{1252, 163}], LineBox[{1259, 170}], LineBox[{1260, 171}], 
       LineBox[{1262, 173}], LineBox[{1265, 176}], LineBox[{1267, 178}], 
       LineBox[{1269, 180}], LineBox[{1272, 183}], LineBox[{1273, 184}], 
       LineBox[{1284, 195}], LineBox[{1293, 204}], LineBox[{1294, 205}], 
       LineBox[{1296, 207}], LineBox[{1297, 208}], LineBox[{1298, 209}], 
       LineBox[{1305, 216}], LineBox[{1306, 217}], LineBox[{1307, 218}], 
       LineBox[{1308, 219}], LineBox[{1311, 222}], LineBox[{1312, 223}], 
       LineBox[{1317, 228}], LineBox[{1319, 230}], LineBox[{1325, 236}], 
       LineBox[{1326, 237}], LineBox[{1329, 240}], LineBox[{1330, 241}], 
       LineBox[{1331, 242}], LineBox[{1334, 245}], LineBox[{1335, 246}], 
       LineBox[{1336, 247}], LineBox[{1337, 248}], LineBox[{1338, 249}], 
       LineBox[{1339, 250}], LineBox[{1340, 251}], LineBox[{1341, 252}], 
       LineBox[{1342, 253}], LineBox[{1345, 256}], LineBox[{1346, 257}], 
       LineBox[{1347, 258}], LineBox[{1349, 260}], LineBox[{1350, 261}], 
       LineBox[{1351, 262}], LineBox[{1352, 263}], LineBox[{1353, 264}], 
       LineBox[{1356, 267}], LineBox[{1357, 268}], LineBox[{1358, 269}], 
       LineBox[{1359, 270}], LineBox[{1360, 271}], LineBox[{1361, 272}], 
       LineBox[{1362, 273}], LineBox[{1363, 274}], LineBox[{1365, 276}], 
       LineBox[{1366, 277}], LineBox[{1367, 278}], LineBox[{1370, 281}], 
       LineBox[{1371, 282}], LineBox[{1372, 283}], LineBox[{1373, 284}], 
       LineBox[{1375, 286}], LineBox[{1376, 287}], LineBox[{1377, 288}], 
       LineBox[{1378, 289}], LineBox[{1380, 291}], LineBox[{1383, 294}], 
       LineBox[{1386, 297}], LineBox[{1387, 298}], LineBox[{1388, 299}], 
       LineBox[{1391, 302}], LineBox[{1392, 303}], LineBox[{1393, 304}], 
       LineBox[{1394, 305}], LineBox[{1396, 307}], LineBox[{1399, 310}], 
       LineBox[{1400, 311}], LineBox[{1401, 312}], LineBox[{1402, 313}], 
       LineBox[{1403, 314}], LineBox[{1404, 315}], LineBox[{1405, 316}], 
       LineBox[{1406, 317}], LineBox[{1407, 318}], LineBox[{1408, 319}], 
       LineBox[{1409, 320}], LineBox[{1410, 321}], LineBox[{1411, 322}], 
       LineBox[{1412, 323}], LineBox[{1413, 324}], LineBox[{1414, 325}], 
       LineBox[{1415, 326}], LineBox[{1417, 328}], LineBox[{1418, 329}], 
       LineBox[{1420, 331}], LineBox[{1421, 332}], LineBox[{1422, 333}], 
       LineBox[{1423, 334}], LineBox[{1424, 335}], LineBox[{1425, 336}], 
       LineBox[{1426, 337}], LineBox[{1427, 338}], LineBox[{1428, 339}], 
       LineBox[{1429, 340}], LineBox[{1431, 342}], LineBox[{1432, 343}], 
       LineBox[{1433, 344}], LineBox[{1434, 345}], LineBox[{1435, 346}], 
       LineBox[{1436, 347}], LineBox[{1437, 348}], LineBox[{1438, 349}], 
       LineBox[{1439, 350}], LineBox[{1440, 351}], LineBox[{1441, 352}], 
       LineBox[{1442, 353}], LineBox[{1443, 354}], LineBox[{1444, 355}], 
       LineBox[{1445, 356}], LineBox[{1448, 359}], LineBox[{1449, 360}], 
       LineBox[{1450, 361}], LineBox[{1451, 362}], LineBox[{1452, 363}], 
       LineBox[{1459, 370}], LineBox[{1461, 372}], LineBox[{1462, 373}], 
       LineBox[{1463, 374}], LineBox[{1464, 375}], LineBox[{1465, 376}], 
       LineBox[{1466, 377}], LineBox[{1467, 378}], LineBox[{1468, 379}], 
       LineBox[{1469, 380}], LineBox[{1471, 382}], LineBox[{1472, 383}], 
       LineBox[{1473, 384}], LineBox[{1474, 385}], LineBox[{1475, 386}], 
       LineBox[{1476, 387}], LineBox[{1477, 388}], LineBox[{1478, 389}], 
       LineBox[{1479, 390}], LineBox[{1480, 391}], LineBox[{1481, 392}], 
       LineBox[{1482, 393}], LineBox[{1483, 394}], LineBox[{1484, 395}], 
       LineBox[{1485, 396}], LineBox[{1486, 397}], LineBox[{1487, 398}], 
       LineBox[{1488, 399}], LineBox[{1491, 402}], LineBox[{1492, 403}], 
       LineBox[{1493, 404}], LineBox[{1494, 405}], LineBox[{1495, 406}], 
       LineBox[{1496, 407}], LineBox[{1498, 409}], LineBox[{1499, 410}], 
       LineBox[{1500, 411}], LineBox[{1501, 412}], LineBox[{1502, 413}], 
       LineBox[{1503, 414}], LineBox[{1504, 415}], LineBox[{1506, 417}], 
       LineBox[{1507, 418}], LineBox[{1508, 419}], LineBox[{1509, 420}], 
       LineBox[{1510, 421}], LineBox[{1511, 422}], LineBox[{1512, 423}], 
       LineBox[{1515, 426}], LineBox[{1516, 427}], LineBox[{1517, 428}], 
       LineBox[{1518, 429}], LineBox[{1519, 430}], LineBox[{1520, 431}], 
       LineBox[{1521, 432}], LineBox[{1522, 433}], LineBox[{1523, 434}], 
       LineBox[{1524, 435}], LineBox[{1525, 436}], LineBox[{1526, 437}], 
       LineBox[{1527, 438}], LineBox[{1528, 439}], LineBox[{1529, 440}], 
       LineBox[{1530, 441}], LineBox[{1531, 442}], LineBox[{1532, 443}], 
       LineBox[{1533, 444}], LineBox[{1534, 445}], LineBox[{1536, 447}], 
       LineBox[{1537, 448}], LineBox[{1538, 449}], LineBox[{1539, 450}], 
       LineBox[{1540, 451}], LineBox[{1541, 452}], LineBox[{1542, 453}], 
       LineBox[{1543, 454}], LineBox[{1544, 455}], LineBox[{1545, 456}], 
       LineBox[{1546, 457}], LineBox[{1547, 458}], LineBox[{1548, 459}], 
       LineBox[{1549, 460}], LineBox[{1550, 461}], LineBox[{1551, 462}], 
       LineBox[{1552, 463}], LineBox[{1553, 464}], LineBox[{1554, 465}], 
       LineBox[{1555, 466}], LineBox[{1556, 467}], LineBox[{1557, 468}], 
       LineBox[{1558, 469}], LineBox[{1559, 470}], LineBox[{1560, 471}], 
       LineBox[{1561, 472}], LineBox[{1562, 473}], LineBox[{1563, 474}], 
       LineBox[{1564, 475}], LineBox[{1565, 476}], LineBox[{1566, 477}], 
       LineBox[{1567, 478}], LineBox[{1568, 479}], LineBox[{1571, 482}], 
       LineBox[{1572, 483}], LineBox[{1573, 484}], LineBox[{1574, 485}], 
       LineBox[{1575, 486}], LineBox[{1576, 487}], LineBox[{1577, 488}], 
       LineBox[{1578, 489}], LineBox[{1579, 490}], LineBox[{1580, 491}], 
       LineBox[{1581, 492}], LineBox[{1582, 493}], LineBox[{1583, 494}], 
       LineBox[{1584, 495}], LineBox[{1585, 496}], LineBox[{1590, 501}], 
       LineBox[{1591, 502}], LineBox[{1592, 503}], LineBox[{1593, 504}], 
       LineBox[{1594, 505}], LineBox[{1595, 506}], LineBox[{1596, 507}], 
       LineBox[{1599, 510}], LineBox[{1600, 511}], LineBox[{1601, 512}], 
       LineBox[{1602, 513}], LineBox[{1603, 514}], LineBox[{1604, 515}], 
       LineBox[{1608, 519}], LineBox[{1609, 520}], LineBox[{1611, 522}], 
       LineBox[{1612, 523}], LineBox[{1614, 525}], LineBox[{1615, 526}], 
       LineBox[{1619, 530}], LineBox[{1620, 531}], LineBox[{1622, 533}], 
       LineBox[{1624, 535}], LineBox[{1625, 536}], LineBox[{1626, 537}], 
       LineBox[{1627, 538}], LineBox[{1631, 542}], LineBox[{1632, 543}], 
       LineBox[{1633, 544}], LineBox[{1635, 546}], LineBox[{1638, 549}], 
       LineBox[{1640, 551}], LineBox[{1642, 553}], LineBox[{1646, 557}], 
       LineBox[{1647, 558}], LineBox[{1648, 559}], LineBox[{1650, 561}], 
       LineBox[{1652, 563}], LineBox[{1654, 565}], LineBox[{1655, 566}], 
       LineBox[{1657, 568}], LineBox[{1660, 571}], LineBox[{1661, 572}], 
       LineBox[{1662, 573}], LineBox[{1663, 574}], LineBox[{1665, 576}], 
       LineBox[{1666, 577}], LineBox[{1667, 578}], LineBox[{1668, 579}], 
       LineBox[{1669, 580}], LineBox[{1670, 581}], LineBox[{1676, 587}], 
       LineBox[{1678, 589}], LineBox[{1679, 590}], LineBox[{1680, 591}], 
       LineBox[{1682, 593}], LineBox[{1683, 594}], LineBox[{1684, 595}], 
       LineBox[{1687, 598}], LineBox[{1688, 599}], LineBox[{1689, 600}], 
       LineBox[{1691, 602}], LineBox[{1693, 604}], LineBox[{1695, 606}], 
       LineBox[{1696, 607}], LineBox[{1697, 608}], LineBox[{1698, 609}], 
       LineBox[{1699, 610}], LineBox[{1700, 611}], LineBox[{1702, 613}], 
       LineBox[{1703, 614}], LineBox[{1704, 615}], LineBox[{1705, 616}], 
       LineBox[{1706, 617}], LineBox[{1707, 618}], LineBox[{1708, 619}], 
       LineBox[{1709, 620}], LineBox[{1710, 621}], LineBox[{1712, 623}], 
       LineBox[{1713, 624}], LineBox[{1715, 626}], LineBox[{1716, 627}], 
       LineBox[{1717, 628}], LineBox[{1718, 629}], LineBox[{1719, 630}], 
       LineBox[{1721, 632}], LineBox[{1722, 633}], LineBox[{1723, 634}], 
       LineBox[{1724, 635}], LineBox[{1725, 636}], LineBox[{1726, 637}], 
       LineBox[{1728, 639}], LineBox[{1730, 641}], LineBox[{1731, 642}], 
       LineBox[{1732, 643}], LineBox[{1734, 645}], LineBox[{1735, 646}], 
       LineBox[{1737, 648}], LineBox[{1742, 653}], LineBox[{1743, 654}], 
       LineBox[{1744, 655}], LineBox[{1745, 656}], LineBox[{1746, 657}], 
       LineBox[{1747, 658}], LineBox[{1748, 659}], LineBox[{1749, 660}], 
       LineBox[{1751, 662}], LineBox[{1752, 663}], LineBox[{1753, 664}], 
       LineBox[{1754, 665}], LineBox[{1755, 666}], LineBox[{1756, 667}], 
       LineBox[{1758, 669}], LineBox[{1759, 670}], LineBox[{1760, 671}], 
       LineBox[{1761, 672}], LineBox[{1762, 673}], LineBox[{1763, 674}], 
       LineBox[{1765, 676}], LineBox[{1766, 677}], LineBox[{1767, 678}], 
       LineBox[{1768, 679}], LineBox[{1771, 682}], LineBox[{1773, 684}], 
       LineBox[{1774, 685}], LineBox[{1775, 686}], LineBox[{1776, 687}], 
       LineBox[{1777, 688}], LineBox[{1781, 692}], LineBox[{1783, 694}], 
       LineBox[{1784, 695}], LineBox[{1786, 697}], LineBox[{1791, 702}], 
       LineBox[{1797, 708}], LineBox[{1798, 709}], LineBox[{1799, 710}], 
       LineBox[{1800, 711}], LineBox[{1801, 712}], LineBox[{1805, 716}], 
       LineBox[{1806, 717}], LineBox[{1808, 719}], LineBox[{1809, 720}], 
       LineBox[{1811, 722}], LineBox[{1812, 723}], LineBox[{1813, 724}], 
       LineBox[{1822, 733}], LineBox[{1823, 734}], LineBox[{1825, 736}], 
       LineBox[{1829, 740}], LineBox[{1834, 745}], LineBox[{1837, 748}], 
       LineBox[{1838, 749}], LineBox[{1839, 750}], LineBox[{1840, 751}], 
       LineBox[{1841, 752}], LineBox[{1843, 754}], LineBox[{1844, 755}], 
       LineBox[{1845, 756}], LineBox[{1846, 757}], LineBox[{1847, 758}], 
       LineBox[{1848, 759}], LineBox[{1849, 760}], LineBox[{1850, 761}], 
       LineBox[{1851, 762}], LineBox[{1852, 763}], LineBox[{1853, 764}], 
       LineBox[{1854, 765}], LineBox[{1858, 769}], LineBox[{1863, 774}], 
       LineBox[{1864, 775}], LineBox[{1865, 776}], LineBox[{1866, 777}], 
       LineBox[{1868, 779}], LineBox[{1869, 780}], LineBox[{1875, 786}], 
       LineBox[{1878, 789}], LineBox[{1879, 790}], LineBox[{1880, 791}], 
       LineBox[{1881, 792}], LineBox[{1883, 794}], LineBox[{1884, 795}], 
       LineBox[{1886, 797}], LineBox[{1888, 799}], LineBox[{1889, 800}], 
       LineBox[{1890, 801}], LineBox[{1891, 802}], LineBox[{1892, 803}], 
       LineBox[{1893, 804}], LineBox[{1894, 805}], LineBox[{1895, 806}], 
       LineBox[{1896, 807}], LineBox[{1897, 808}], LineBox[{1898, 809}], 
       LineBox[{1901, 812}], LineBox[{1902, 813}], LineBox[{1906, 817}], 
       LineBox[{1908, 819}], LineBox[{1911, 822}], LineBox[{1913, 824}], 
       LineBox[{1914, 825}], LineBox[{1916, 827}], LineBox[{1917, 828}], 
       LineBox[{1918, 829}], LineBox[{1919, 830}], LineBox[{1920, 831}], 
       LineBox[{1921, 832}], LineBox[{1922, 833}], LineBox[{1923, 834}], 
       LineBox[{1924, 835}], LineBox[{1925, 836}], LineBox[{1926, 837}], 
       LineBox[{1927, 838}], LineBox[{1928, 839}], LineBox[{1932, 843}], 
       LineBox[{1933, 844}], LineBox[{1934, 845}], LineBox[{1936, 847}], 
       LineBox[{1937, 848}], LineBox[{1938, 849}], LineBox[{1939, 850}], 
       LineBox[{1941, 852}], LineBox[{1942, 853}], LineBox[{1944, 855}], 
       LineBox[{1946, 857}], LineBox[{1947, 858}], LineBox[{1949, 860}], 
       LineBox[{1950, 861}], LineBox[{1951, 862}], LineBox[{1952, 863}], 
       LineBox[{1953, 864}], LineBox[{1954, 865}], LineBox[{1956, 867}], 
       LineBox[{1957, 868}], LineBox[{1960, 871}], LineBox[{1961, 872}], 
       LineBox[{1964, 875}], LineBox[{1965, 876}], LineBox[{1966, 877}], 
       LineBox[{1970, 881}], LineBox[{1971, 882}], LineBox[{1975, 886}], 
       LineBox[{1978, 889}], LineBox[{1985, 896}], LineBox[{1986, 897}], 
       LineBox[{1987, 898}], LineBox[{1988, 899}], LineBox[{1991, 902}], 
       LineBox[{1999, 910}], LineBox[{2000, 911}], LineBox[{2005, 916}], 
       LineBox[{2007, 918}], LineBox[{2009, 920}], LineBox[{2010, 921}], 
       LineBox[{2011, 922}], LineBox[{2012, 923}], LineBox[{2015, 926}], 
       LineBox[{2018, 929}], LineBox[{2019, 930}], LineBox[{2020, 931}], 
       LineBox[{2028, 939}], LineBox[{2030, 941}], LineBox[{2031, 942}], 
       LineBox[{2032, 943}], LineBox[{2033, 944}], LineBox[{2034, 945}], 
       LineBox[{2035, 946}], LineBox[{2036, 947}], LineBox[{2037, 948}], 
       LineBox[{2039, 950}], LineBox[{2040, 951}], LineBox[{2041, 952}], 
       LineBox[{2042, 953}], LineBox[{2044, 955}], LineBox[{2045, 956}], 
       LineBox[{2046, 957}], LineBox[{2047, 958}], LineBox[{2048, 959}], 
       LineBox[{2049, 960}], LineBox[{2052, 963}], LineBox[{2053, 964}], 
       LineBox[{2054, 965}], LineBox[{2058, 969}], LineBox[{2059, 970}], 
       LineBox[{2060, 971}], LineBox[{2061, 972}], LineBox[{2062, 973}], 
       LineBox[{2063, 974}], LineBox[{2066, 977}], LineBox[{2067, 978}], 
       LineBox[{2068, 979}], LineBox[{2069, 980}], LineBox[{2072, 983}], 
       LineBox[{2073, 984}], LineBox[{2074, 985}], LineBox[{2075, 986}], 
       LineBox[{2076, 987}], LineBox[{2077, 988}], LineBox[{2078, 989}], 
       LineBox[{2079, 990}], LineBox[{2080, 991}], LineBox[{2082, 993}], 
       LineBox[{2083, 994}], LineBox[{2084, 995}], LineBox[{2085, 996}], 
       LineBox[{2086, 997}], LineBox[{2087, 998}], LineBox[{2088, 999}], 
       LineBox[{2089, 1000}], LineBox[{2090, 1001}], LineBox[{2091, 1002}], 
       LineBox[{2092, 1003}], LineBox[{2093, 1004}], LineBox[{2094, 1005}], 
       LineBox[{2095, 1006}], LineBox[{2096, 1007}], LineBox[{2097, 1008}], 
       LineBox[{2098, 1009}], LineBox[{2099, 1010}], LineBox[{2100, 1011}], 
       LineBox[{2101, 1012}], LineBox[{2102, 1013}], LineBox[{2103, 1014}], 
       LineBox[{2104, 1015}], LineBox[{2105, 1016}], LineBox[{2106, 1017}], 
       LineBox[{2107, 1018}], LineBox[{2108, 1019}], LineBox[{2109, 1020}], 
       LineBox[{2110, 1021}], LineBox[{2112, 1023}], LineBox[{2113, 1024}], 
       LineBox[{2114, 1025}], LineBox[{2115, 1026}], LineBox[{2116, 1027}], 
       LineBox[{2117, 1028}], LineBox[{2118, 1029}], LineBox[{2120, 1031}], 
       LineBox[{2121, 1032}], LineBox[{2123, 1034}], LineBox[{2124, 1035}], 
       LineBox[{2125, 1036}], LineBox[{2128, 1039}], LineBox[{2129, 1040}], 
       LineBox[{2132, 1043}], LineBox[{2133, 1044}], LineBox[{2136, 1047}], 
       LineBox[{2139, 1050}], LineBox[{2140, 1051}], LineBox[{2141, 1052}], 
       LineBox[{2142, 1053}], LineBox[{2143, 1054}], LineBox[{2144, 1055}], 
       LineBox[{2145, 1056}], LineBox[{2146, 1057}], LineBox[{2147, 1058}], 
       LineBox[{2152, 1063}], LineBox[{2156, 1067}], LineBox[{2157, 1068}], 
       LineBox[{2163, 1074}], LineBox[{2166, 1077}], LineBox[{2167, 1078}], 
       LineBox[{2168, 1079}], LineBox[{2169, 1080}], LineBox[{2171, 1082}], 
       LineBox[{2172, 1083}], LineBox[{2173, 1084}], LineBox[{2176, 1087}], 
       LineBox[{2178, 1089}]}, 
      {RGBColor[0.368417, 0.506779, 0.709798], Opacity[0.3], 
       LineBox[{1093, 4}], LineBox[{1095, 6}], LineBox[{1096, 7}], 
       LineBox[{1097, 8}], LineBox[{1098, 9}], LineBox[{1099, 10}], 
       LineBox[{1103, 14}], LineBox[{1104, 15}], LineBox[{1106, 17}], 
       LineBox[{1107, 18}], LineBox[{1111, 22}], LineBox[{1112, 23}], 
       LineBox[{1113, 24}], LineBox[{1114, 25}], LineBox[{1117, 28}], 
       LineBox[{1121, 32}], LineBox[{1122, 33}], LineBox[{1123, 34}], 
       LineBox[{1124, 35}], LineBox[{1125, 36}], LineBox[{1133, 44}], 
       LineBox[{1136, 47}], LineBox[{1137, 48}], LineBox[{1138, 49}], 
       LineBox[{1140, 51}], LineBox[{1141, 52}], LineBox[{1142, 53}], 
       LineBox[{1143, 54}], LineBox[{1144, 55}], LineBox[{1145, 56}], 
       LineBox[{1146, 57}], LineBox[{1155, 66}], LineBox[{1156, 67}], 
       LineBox[{1157, 68}], LineBox[{1169, 80}], LineBox[{1173, 84}], 
       LineBox[{1179, 90}], LineBox[{1183, 94}], LineBox[{1184, 95}], 
       LineBox[{1186, 97}], LineBox[{1187, 98}], LineBox[{1188, 99}], 
       LineBox[{1190, 101}], LineBox[{1191, 102}], LineBox[{1193, 104}], 
       LineBox[{1194, 105}], LineBox[{1195, 106}], LineBox[{1196, 107}], 
       LineBox[{1197, 108}], LineBox[{1198, 109}], LineBox[{1199, 110}], 
       LineBox[{1203, 114}], LineBox[{1204, 115}], LineBox[{1205, 116}], 
       LineBox[{1207, 118}], LineBox[{1213, 124}], LineBox[{1214, 125}], 
       LineBox[{1215, 126}], LineBox[{1216, 127}], LineBox[{1217, 128}], 
       LineBox[{1218, 129}], LineBox[{1219, 130}], LineBox[{1220, 131}], 
       LineBox[{1222, 133}], LineBox[{1223, 134}], LineBox[{1224, 135}], 
       LineBox[{1225, 136}], LineBox[{1226, 137}], LineBox[{1227, 138}], 
       LineBox[{1228, 139}], LineBox[{1229, 140}], LineBox[{1231, 142}], 
       LineBox[{1232, 143}], LineBox[{1234, 145}], LineBox[{1238, 149}], 
       LineBox[{1242, 153}], LineBox[{1243, 154}], LineBox[{1244, 155}], 
       LineBox[{1245, 156}], LineBox[{1246, 157}], LineBox[{1248, 159}], 
       LineBox[{1249, 160}], LineBox[{1250, 161}], LineBox[{1251, 162}], 
       LineBox[{1253, 164}], LineBox[{1254, 165}], LineBox[{1255, 166}], 
       LineBox[{1256, 167}], LineBox[{1257, 168}], LineBox[{1258, 169}], 
       LineBox[{1261, 172}], LineBox[{1263, 174}], LineBox[{1264, 175}], 
       LineBox[{1266, 177}], LineBox[{1268, 179}], LineBox[{1270, 181}], 
       LineBox[{1271, 182}], LineBox[{1274, 185}], LineBox[{1275, 186}], 
       LineBox[{1276, 187}], LineBox[{1277, 188}], LineBox[{1278, 189}], 
       LineBox[{1279, 190}], LineBox[{1280, 191}], LineBox[{1281, 192}], 
       LineBox[{1282, 193}], LineBox[{1283, 194}], LineBox[{1285, 196}], 
       LineBox[{1286, 197}], LineBox[{1287, 198}], LineBox[{1288, 199}], 
       LineBox[{1289, 200}], LineBox[{1290, 201}], LineBox[{1291, 202}], 
       LineBox[{1292, 203}], LineBox[{1295, 206}], LineBox[{1299, 210}], 
       LineBox[{1300, 211}], LineBox[{1301, 212}], LineBox[{1302, 213}], 
       LineBox[{1303, 214}], LineBox[{1304, 215}], LineBox[{1309, 220}], 
       LineBox[{1310, 221}], LineBox[{1313, 224}], LineBox[{1314, 225}], 
       LineBox[{1315, 226}], LineBox[{1316, 227}], LineBox[{1318, 229}], 
       LineBox[{1320, 231}], LineBox[{1321, 232}], LineBox[{1322, 233}], 
       LineBox[{1323, 234}], LineBox[{1324, 235}], LineBox[{1327, 238}], 
       LineBox[{1328, 239}], LineBox[{1332, 243}], LineBox[{1333, 244}], 
       LineBox[{1343, 254}], LineBox[{1344, 255}], LineBox[{1348, 259}], 
       LineBox[{1354, 265}], LineBox[{1355, 266}], LineBox[{1364, 275}], 
       LineBox[{1368, 279}], LineBox[{1369, 280}], LineBox[{1374, 285}], 
       LineBox[{1379, 290}], LineBox[{1381, 292}], LineBox[{1382, 293}], 
       LineBox[{1384, 295}], LineBox[{1385, 296}], LineBox[{1389, 300}], 
       LineBox[{1390, 301}], LineBox[{1395, 306}], LineBox[{1397, 308}], 
       LineBox[{1398, 309}], LineBox[{1416, 327}], LineBox[{1419, 330}], 
       LineBox[{1430, 341}], LineBox[{1446, 357}], LineBox[{1447, 358}], 
       LineBox[{1453, 364}], LineBox[{1454, 365}], LineBox[{1455, 366}], 
       LineBox[{1456, 367}], LineBox[{1457, 368}], LineBox[{1458, 369}], 
       LineBox[{1460, 371}], LineBox[{1470, 381}], LineBox[{1489, 400}], 
       LineBox[{1490, 401}], LineBox[{1497, 408}], LineBox[{1505, 416}], 
       LineBox[{1513, 424}], LineBox[{1514, 425}], LineBox[{1535, 446}], 
       LineBox[{1569, 480}], LineBox[{1570, 481}], LineBox[{1586, 497}], 
       LineBox[{1587, 498}], LineBox[{1588, 499}], LineBox[{1589, 500}], 
       LineBox[{1597, 508}], LineBox[{1598, 509}], LineBox[{1605, 516}], 
       LineBox[{1606, 517}], LineBox[{1607, 518}], LineBox[{1610, 521}], 
       LineBox[{1613, 524}], LineBox[{1616, 527}], LineBox[{1617, 528}], 
       LineBox[{1618, 529}], LineBox[{1621, 532}], LineBox[{1623, 534}], 
       LineBox[{1628, 539}], LineBox[{1629, 540}], LineBox[{1630, 541}], 
       LineBox[{1634, 545}], LineBox[{1636, 547}], LineBox[{1637, 548}], 
       LineBox[{1639, 550}], LineBox[{1641, 552}], LineBox[{1643, 554}], 
       LineBox[{1644, 555}], LineBox[{1645, 556}], LineBox[{1649, 560}], 
       LineBox[{1651, 562}], LineBox[{1653, 564}], LineBox[{1656, 567}], 
       LineBox[{1658, 569}], LineBox[{1659, 570}], LineBox[{1664, 575}], 
       LineBox[{1671, 582}], LineBox[{1672, 583}], LineBox[{1673, 584}], 
       LineBox[{1674, 585}], LineBox[{1675, 586}], LineBox[{1677, 588}], 
       LineBox[{1681, 592}], LineBox[{1685, 596}], LineBox[{1686, 597}], 
       LineBox[{1690, 601}], LineBox[{1692, 603}], LineBox[{1694, 605}], 
       LineBox[{1701, 612}], LineBox[{1711, 622}], LineBox[{1714, 625}], 
       LineBox[{1720, 631}], LineBox[{1727, 638}], LineBox[{1729, 640}], 
       LineBox[{1733, 644}], LineBox[{1736, 647}], LineBox[{1738, 649}], 
       LineBox[{1739, 650}], LineBox[{1740, 651}], LineBox[{1741, 652}], 
       LineBox[{1750, 661}], LineBox[{1757, 668}], LineBox[{1764, 675}], 
       LineBox[{1769, 680}], LineBox[{1770, 681}], LineBox[{1772, 683}], 
       LineBox[{1778, 689}], LineBox[{1779, 690}], LineBox[{1780, 691}], 
       LineBox[{1782, 693}], LineBox[{1785, 696}], LineBox[{1787, 698}], 
       LineBox[{1788, 699}], LineBox[{1789, 700}], LineBox[{1790, 701}], 
       LineBox[{1792, 703}], LineBox[{1793, 704}], LineBox[{1794, 705}], 
       LineBox[{1795, 706}], LineBox[{1796, 707}], LineBox[{1802, 713}], 
       LineBox[{1803, 714}], LineBox[{1804, 715}], LineBox[{1807, 718}], 
       LineBox[{1810, 721}], LineBox[{1814, 725}], LineBox[{1815, 726}], 
       LineBox[{1816, 727}], LineBox[{1817, 728}], LineBox[{1818, 729}], 
       LineBox[{1819, 730}], LineBox[{1820, 731}], LineBox[{1821, 732}], 
       LineBox[{1824, 735}], LineBox[{1826, 737}], LineBox[{1827, 738}], 
       LineBox[{1828, 739}], LineBox[{1830, 741}], LineBox[{1831, 742}], 
       LineBox[{1832, 743}], LineBox[{1833, 744}], LineBox[{1835, 746}], 
       LineBox[{1836, 747}], LineBox[{1842, 753}], LineBox[{1855, 766}], 
       LineBox[{1856, 767}], LineBox[{1857, 768}], LineBox[{1859, 770}], 
       LineBox[{1860, 771}], LineBox[{1861, 772}], LineBox[{1862, 773}], 
       LineBox[{1867, 778}], LineBox[{1870, 781}], LineBox[{1871, 782}], 
       LineBox[{1872, 783}], LineBox[{1873, 784}], LineBox[{1874, 785}], 
       LineBox[{1876, 787}], LineBox[{1877, 788}], LineBox[{1882, 793}], 
       LineBox[{1885, 796}], LineBox[{1887, 798}], LineBox[{1899, 810}], 
       LineBox[{1900, 811}], LineBox[{1903, 814}], LineBox[{1904, 815}], 
       LineBox[{1905, 816}], LineBox[{1907, 818}], LineBox[{1909, 820}], 
       LineBox[{1910, 821}], LineBox[{1912, 823}], LineBox[{1915, 826}], 
       LineBox[{1929, 840}], LineBox[{1930, 841}], LineBox[{1931, 842}], 
       LineBox[{1935, 846}], LineBox[{1940, 851}], LineBox[{1943, 854}], 
       LineBox[{1945, 856}], LineBox[{1948, 859}], LineBox[{1955, 866}], 
       LineBox[{1958, 869}], LineBox[{1959, 870}], LineBox[{1962, 873}], 
       LineBox[{1963, 874}], LineBox[{1967, 878}], LineBox[{1968, 879}], 
       LineBox[{1969, 880}], LineBox[{1972, 883}], LineBox[{1973, 884}], 
       LineBox[{1974, 885}], LineBox[{1976, 887}], LineBox[{1977, 888}], 
       LineBox[{1979, 890}], LineBox[{1980, 891}], LineBox[{1981, 892}], 
       LineBox[{1982, 893}], LineBox[{1983, 894}], LineBox[{1984, 895}], 
       LineBox[{1989, 900}], LineBox[{1990, 901}], LineBox[{1992, 903}], 
       LineBox[{1993, 904}], LineBox[{1994, 905}], LineBox[{1995, 906}], 
       LineBox[{1996, 907}], LineBox[{1997, 908}], LineBox[{1998, 909}], 
       LineBox[{2001, 912}], LineBox[{2002, 913}], LineBox[{2003, 914}], 
       LineBox[{2004, 915}], LineBox[{2006, 917}], LineBox[{2008, 919}], 
       LineBox[{2013, 924}], LineBox[{2014, 925}], LineBox[{2016, 927}], 
       LineBox[{2017, 928}], LineBox[{2021, 932}], LineBox[{2022, 933}], 
       LineBox[{2023, 934}], LineBox[{2024, 935}], LineBox[{2025, 936}], 
       LineBox[{2026, 937}], LineBox[{2027, 938}], LineBox[{2029, 940}], 
       LineBox[{2038, 949}], LineBox[{2043, 954}], LineBox[{2050, 961}], 
       LineBox[{2051, 962}], LineBox[{2055, 966}], LineBox[{2056, 967}], 
       LineBox[{2057, 968}], LineBox[{2064, 975}], LineBox[{2065, 976}], 
       LineBox[{2070, 981}], LineBox[{2071, 982}], LineBox[{2081, 992}], 
       LineBox[{2111, 1022}], LineBox[{2119, 1030}], LineBox[{2122, 1033}], 
       LineBox[{2126, 1037}], LineBox[{2127, 1038}], LineBox[{2130, 1041}], 
       LineBox[{2131, 1042}], LineBox[{2134, 1045}], LineBox[{2135, 1046}], 
       LineBox[{2137, 1048}], LineBox[{2138, 1049}], LineBox[{2148, 1059}], 
       LineBox[{2149, 1060}], LineBox[{2150, 1061}], LineBox[{2151, 1062}], 
       LineBox[{2153, 1064}], LineBox[{2154, 1065}], LineBox[{2155, 1066}], 
       LineBox[{2158, 1069}], LineBox[{2159, 1070}], LineBox[{2160, 1071}], 
       LineBox[{2161, 1072}], LineBox[{2162, 1073}], LineBox[{2164, 1075}], 
       LineBox[{2165, 1076}], LineBox[{2170, 1081}], LineBox[{2174, 1085}], 
       LineBox[{2175, 1086}], LineBox[{2177, 1088}]}}, {{}, 
      {RGBColor[0.368417, 0.506779, 0.709798], PointSize[
       0.004583333333333334], AbsoluteThickness[1.6], PointBox[CompressedData["
1:eJwN00OiGAoCALA3tW3btm3btm392rZt27Zt27Y7WeQISdiofaV2/wsICCgY
JCBgUIiAgMEMYSjDGM4IRjKK0YxhLOMYzwQmMonJTGEq05jODGYyi9nMYS7z
mM8CFrKIxSxhKctYzgpWsorVrGEt61jPBjayic1sYSvb2M4OdrKL3exhL/vY
zwEOcojDHOEoxzjOCU5yitOc4SznOM8FLnKJy1zhKte4zg1ucovb3OEu97jP
Ax7yiMc84SnPeM4LXvKK17zhLe94zwc+8onPfOEr3/jOD37yi9/84S//CAgZ
EPA/AhGYIAQlGMEJQUhCEZowhCUc4YlARCIRmShEJRrRiUFMYhGbOMQlHvFJ
QEISkZgkJCUZyUlBSlKRmjSkJR3pyUBGMpGZLGQlG9nJQU5ykZs85CUf+SlA
QQpRmCIUpRjFKUFJSlGaMpSlHOWpQEUqUZkqVKUa1alBTWpRmzrUpR71aUBD
GtGYJjSlGc1pQUta0Zo2tKUd7elARzrRmS50pRvd6UFPetGbPvSlH//RnwEM
ZBCDGcJQhjGcEYxkFKMZw1jGMZ4JTGQSk5nCVKYxnRnMZBazmcNc5jGfBSxk
EYtZwlKWsZwVrGQVq1nDWtaxng1sZBOb2cJWtrGdHexkF7vZw172sZ8DHOQQ
hznCUY5xnBOc5BSnOcNZznGeC1zkEpe5wlWucZ0b3OQWt7nDXe5xnwc85BGP
ecJTnvGcF7zkFa95w1ve8Z4PfOQTn/nCV77xnR/85Be/+cNf/hEQyn8CEZgg
BCUYwQlBSEIRmjCEJRzhiUBEIhGZKEQlGtGJQUxiEZs4xCUe8UlAQhKRmCQk
JRnJSUFKUpGaNKQlHenJQEYykZksZCUb2clBTnKRmzzkJR/5KUBBClGYIhSl
GMUpQUlKUZoylKUc5alARSpRmSpUpRrVqUFNalGbOtSlHvVpQEMa0ZgmNKUZ
zWlBS1rRmja0pR3t6UBHOtGZLnSlG93pQU960Zs+9KUf/9GfAQxkEIMZwlCG
MZwRjGQUoxnDWMYxnglMZBKTmcJUpjGdGcxkFrOZw1zmMZ8FLGQRi1nCUpax
nBWsZBWrWcNa1rGeDWxkE5vZwla2sZ0d7GQXu9nDXvaxnwMc5BCHOcJRjnGc
E5zkFKc5w1nOcZ4LXOQSl7nCVa5xnRvc5Ba3ucNd7nGfBzzkEY95wlOe8ZwX
vOQVr3nDW97xng985BOf+cJXvvGdH/zkF7/5w1/+ERDafwIRmCAEJRjBCUFI
QhGaMIQlHOGJQEQiEZkoRCUa0YlBTGIRmzjEJR7xSUBCEpGYJCQlGclJQUpS
kZo0pCUd6clARjKRmSxkJRvZyUFOcpGbPOQlH/kpQEEKUZgiFKUYxSlBSUpR
mjKUpRzlqUBFKlGZKlSlGtWpQU1qUZs61KUe9WlAQxrRmCY0pRnNaUFLWtGa
NrSlHe3pQEc60ZkudKUb3elBT3rRmz70pR//0Z8BDGQQgxnCUIYxnBGMZBSj
GcNYxjGeCUxkEpOZwlSmMZ0ZzGQWs5nDXOYxnwUsZBGLWcJSlrGcFaxkFatZ
w1rWsZ4NbGQTm9nCVraxnR3sZBe72cNe9rGfAxzkEIc5wlGOcZwTnOQUpznD
Wc5xngtc5BKXucJVrnGdG9zkFre5w13ucZ8HPOQRj3nCU57xnBe85BWvecNb
3vGeD3zkE5/5wle+8Z0f/OQXv/nDX/4REMZ/AhGYIAQlGMEJQUhCEZowhCUc
4YlARCIRmShEJRrRiUFMYhGbOMQlHvFJQEISkZgkJCUZyUlBSlKRmjSkJR3p
yUBGMpGZLGQlG9nJQU5ykZs85CUf+SlAQQpRmCIUpRjFKUFJSlGaMpSlHOWp
QEUqUZkqVKUa1alBTWpRmzrUpR71aUBDGtGYJjSlGc1pQUta0Zo2tKUd7elA
RzrRmS50pRvd6UFPetGbPvSlH//RnwEMZBCDGcJQhjGcEYxkFKMZw1jGMZ4J
TGQSk5nCVKYxnRnMZBazmcNc5jGfBSxkEYtZwlKWsZwVrGQVq1nDWtaxng1s
ZBOb2cJWtrGdHexkF7vZw172sZ8DHOQQ/wfgGlSS
        "]]}, {}}}], {}, {}, {{}, {}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, False},
  AxesLabel->{None, None},
  AxesOrigin->{-3.873949931618249, 0.},
  DisplayFunction->Identity,
  Frame->{{True, False}, {True, False}},
  FrameLabel->{{
     FormBox["\"actual value - predicted value\"", TraditionalForm], None}, {
     FormBox["\"predicted value\"", TraditionalForm], None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  Method->{"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Part[{{Identity, Identity}, {Identity, Identity}}, 1, 2][#]& )[
         Part[#, 1]], 
        (Part[{{Identity, Identity}, {Identity, Identity}}, 2, 2][#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Part[{{Identity, Identity}, {Identity, Identity}}, 1, 2][#]& )[
         Part[#, 1]], 
        (Part[{{Identity, Identity}, {Identity, Identity}}, 2, 2][#]& )[
         Part[#, 2]]}& )}},
  PlotRange->{{-4.970176907027693, -3.890814962009163}, {-3.806496067679378, 
   3.806496067679378}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {0, 0}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellChangeTimes->{3.7099378897542114`*^9, 3.709938267647977*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"p", "=", 
  RowBox[{"Predict", "[", 
   RowBox[{
    RowBox[{"trainingset", "[", 
     RowBox[{"[", 
      RowBox[{"All", ",", 
       RowBox[{"{", 
        RowBox[{"3", ",", "5", ",", "6", ",", "7", ",", "8"}], "}"}]}], "]"}],
      "]"}], "\[Rule]", 
    RowBox[{"trainingset", "[", 
     RowBox[{"[", 
      RowBox[{"All", ",", "9"}], "]"}], "]"}]}], "]"}]}]], "Input",
 CellChangeTimes->{{3.709938311722932*^9, 3.709938323528329*^9}, {
   3.7099383939406323`*^9, 3.709938396706202*^9}, {3.7099384786168337`*^9, 
   3.7099384822875795`*^9}, {3.7099385224777436`*^9, 3.7099385275187683`*^9}, 
   3.709947964195163*^9, 3.7099482788205357`*^9}],

Cell[BoxData[
 TagBox[
  TemplateBox[{RowBox[{
      StyleBox[
       TagBox["PredictorFunction", "SummaryHead"], "NonInterpretableSummary"], 
      StyleBox["[", "NonInterpretableSummary"], 
      DynamicModuleBox[{Typeset`open$$ = False}, 
       PanelBox[
        PaneSelectorBox[{False -> GridBox[{{
              PaneBox[
               ButtonBox[
                DynamicBox[
                 FEPrivate`FrontEndResource[
                 "FEBitmaps", "SquarePlusIconMedium"]], 
                ButtonFunction :> (Typeset`open$$ = True), Appearance -> None,
                 Evaluator -> Automatic, Method -> "Preemptive"], 
               Alignment -> {Center, Center}, ImageSize -> 
               Dynamic[{
                 Automatic, 3.5 CurrentValue["FontCapHeight"]/
                  AbsoluteCurrentValue[Magnification]}]], 
              GraphicsBox[{{}, {{}, {
                  PointSize[0.125], 
                  GrayLevel[0.55], 
                  
                  PointBox[{{-1, 1.5}, {0, 2.3}, {1, 0.8}, {2, 2}, {3, 1.3}, {
                    4, 4.}}]}, {
                  GrayLevel[0.7], 
                  AbsoluteThickness[1.5], 
                  
                  BSplineCurveBox[{{-1, 2}, {0, 2}, {1, 1}, {2, 1}, {4, 2}, {
                   5, 4}}]}}, {}}, Axes -> {False, False}, 
               AxesLabel -> {None, None}, AxesOrigin -> {0, 0}, 
               BaseStyle -> {FontFamily -> "Arial", 
                 AbsoluteThickness[1.5]}, DisplayFunction -> Identity, 
               Frame -> {{True, True}, {True, True}}, 
               FrameLabel -> {{None, None}, {None, None}}, FrameStyle -> 
               Directive[
                 Thickness[Tiny], 
                 GrayLevel[0.7]], FrameTicks -> {{None, None}, {None, None}}, 
               GridLines -> {None, None}, 
               LabelStyle -> {FontFamily -> "Arial"}, 
               Method -> {"ScalingFunctions" -> None}, 
               PlotRange -> {All, All}, PlotRangeClipping -> True, 
               PlotRangePadding -> {{1, 1}, {1, 1}}, Ticks -> {None, None}, 
               Axes -> False, AspectRatio -> 1, ImageSize -> 
               Dynamic[{
                 Automatic, 3.5 CurrentValue["FontCapHeight"]/
                  AbsoluteCurrentValue[Magnification]}], Frame -> True, 
               FrameTicks -> None, FrameStyle -> Directive[
                 Opacity[0.5], 
                 Thickness[Tiny], 
                 RGBColor[0.368417, 0.506779, 0.709798]]], 
              GridBox[{{
                 RowBox[{
                   TagBox["\"Method: \"", "SummaryItemAnnotation"], 
                   "\[InvisibleSpace]", 
                   TagBox["\"NearestNeighbors\"", "SummaryItem"]}]}, {
                 RowBox[{
                   TagBox[
                   "\"Number of features: \"", "SummaryItemAnnotation"], 
                   "\[InvisibleSpace]", 
                   TagBox["5", "SummaryItem"]}]}}, 
               GridBoxAlignment -> {
                "Columns" -> {{Left}}, "Rows" -> {{Automatic}}}, AutoDelete -> 
               False, GridBoxItemSize -> {
                "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
               GridBoxSpacings -> {
                "Columns" -> {{2}}, "Rows" -> {{Automatic}}}, 
               BaseStyle -> {
                ShowStringCharacters -> False, NumberMarks -> False, 
                 PrintPrecision -> 3, ShowSyntaxStyles -> False}]}}, 
            GridBoxAlignment -> {"Rows" -> {{Top}}}, AutoDelete -> False, 
            GridBoxItemSize -> {
             "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
            BaselinePosition -> {1, 1}], True -> GridBox[{{
              PaneBox[
               ButtonBox[
                DynamicBox[
                 FEPrivate`FrontEndResource[
                 "FEBitmaps", "SquareMinusIconMedium"]], 
                ButtonFunction :> (Typeset`open$$ = False), Appearance -> 
                None, Evaluator -> Automatic, Method -> "Preemptive"], 
               Alignment -> {Center, Center}, ImageSize -> 
               Dynamic[{
                 Automatic, 3.5 CurrentValue["FontCapHeight"]/
                  AbsoluteCurrentValue[Magnification]}]], 
              GraphicsBox[{{}, {{}, {
                  PointSize[0.125], 
                  GrayLevel[0.55], 
                  
                  PointBox[{{-1, 1.5}, {0, 2.3}, {1, 0.8}, {2, 2}, {3, 1.3}, {
                    4, 4.}}]}, {
                  GrayLevel[0.7], 
                  AbsoluteThickness[1.5], 
                  
                  BSplineCurveBox[{{-1, 2}, {0, 2}, {1, 1}, {2, 1}, {4, 2}, {
                   5, 4}}]}}, {}}, Axes -> {False, False}, 
               AxesLabel -> {None, None}, AxesOrigin -> {0, 0}, 
               BaseStyle -> {FontFamily -> "Arial", 
                 AbsoluteThickness[1.5]}, DisplayFunction -> Identity, 
               Frame -> {{True, True}, {True, True}}, 
               FrameLabel -> {{None, None}, {None, None}}, FrameStyle -> 
               Directive[
                 Thickness[Tiny], 
                 GrayLevel[0.7]], FrameTicks -> {{None, None}, {None, None}}, 
               GridLines -> {None, None}, 
               LabelStyle -> {FontFamily -> "Arial"}, 
               Method -> {"ScalingFunctions" -> None}, 
               PlotRange -> {All, All}, PlotRangeClipping -> True, 
               PlotRangePadding -> {{1, 1}, {1, 1}}, Ticks -> {None, None}, 
               Axes -> False, AspectRatio -> 1, ImageSize -> 
               Dynamic[{
                 Automatic, 3.5 CurrentValue["FontCapHeight"]/
                  AbsoluteCurrentValue[Magnification]}], Frame -> True, 
               FrameTicks -> None, FrameStyle -> Directive[
                 Opacity[0.5], 
                 Thickness[Tiny], 
                 RGBColor[0.368417, 0.506779, 0.709798]]], 
              GridBox[{{
                 RowBox[{
                   TagBox["\"Method: \"", "SummaryItemAnnotation"], 
                   "\[InvisibleSpace]", 
                   TagBox["\"NearestNeighbors\"", "SummaryItem"]}]}, {
                 RowBox[{
                   TagBox[
                   "\"Number of features: \"", "SummaryItemAnnotation"], 
                   "\[InvisibleSpace]", 
                   TagBox["5", "SummaryItem"]}]}, {
                 RowBox[{
                   TagBox[
                   "\"Number of training examples: \"", 
                    "SummaryItemAnnotation"], "\[InvisibleSpace]", 
                   TagBox["8073", "SummaryItem"]}]}}, 
               GridBoxAlignment -> {
                "Columns" -> {{Left}}, "Rows" -> {{Automatic}}}, AutoDelete -> 
               False, GridBoxItemSize -> {
                "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
               GridBoxSpacings -> {
                "Columns" -> {{2}}, "Rows" -> {{Automatic}}}, 
               BaseStyle -> {
                ShowStringCharacters -> False, NumberMarks -> False, 
                 PrintPrecision -> 3, ShowSyntaxStyles -> False}]}}, 
            GridBoxAlignment -> {"Rows" -> {{Top}}}, AutoDelete -> False, 
            GridBoxItemSize -> {
             "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
            BaselinePosition -> {1, 1}]}, 
         Dynamic[Typeset`open$$], ImageSize -> Automatic], BaselinePosition -> 
        Baseline], DynamicModuleValues :> {}], 
      StyleBox["]", "NonInterpretableSummary"]}]},
   "CopyTag",
   DisplayFunction->(#& ),
   InterpretationFunction->("PredictorFunction[\[Ellipsis]]"& )],
  False,
  Editable->False,
  SelectWithContents->True,
  Selectable->False]], "Output",
 CellChangeTimes->{3.709938338273324*^9, 3.7099384107090387`*^9, 
  3.7099384945470705`*^9, 3.7099479350071907`*^9, 3.709948259435571*^9, 
  3.7099482929864345`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"pm", "=", 
  RowBox[{"PredictorMeasurements", "[", 
   RowBox[{"p", ",", 
    RowBox[{
     RowBox[{"testset", "[", 
      RowBox[{"[", 
       RowBox[{"All", ",", 
        RowBox[{"{", 
         RowBox[{"3", ",", "5", ",", "6", ",", "7", ",", "8"}], "}"}]}], 
       "]"}], "]"}], "\[Rule]", 
     RowBox[{"testset", "[", 
      RowBox[{"[", 
       RowBox[{"All", ",", "9"}], "]"}], "]"}]}]}], "]"}]}]], "Input",
 CellChangeTimes->{{3.7099479414545097`*^9, 3.7099479532639265`*^9}}],

Cell[BoxData[
 TagBox[
  TemplateBox[{RowBox[{
      StyleBox[
       TagBox["PredictorMeasurementsObject", "SummaryHead"], 
       "NonInterpretableSummary"], 
      StyleBox["[", "NonInterpretableSummary"], 
      DynamicModuleBox[{Typeset`open$$ = False}, 
       PanelBox[
        PaneSelectorBox[{False -> GridBox[{{
              PaneBox[
               ButtonBox[
                DynamicBox[
                 FEPrivate`FrontEndResource[
                 "FEBitmaps", "SquarePlusIconMedium"]], 
                ButtonFunction :> (Typeset`open$$ = True), Appearance -> None,
                 Evaluator -> Automatic, Method -> "Preemptive"], 
               Alignment -> {Center, Center}, ImageSize -> 
               Dynamic[{
                 Automatic, 3.5 CurrentValue["FontCapHeight"]/
                  AbsoluteCurrentValue[Magnification]}]], 
              GraphicsBox[{{{}, {}, {
                  GrayLevel[0.6], 
                  Thickness[0.03], 
                  Opacity[1.], 
                  Dashing[{Small, Small}], 
                  
                  LineBox[{{2.409616047529911*^-7, 2.409616047529911*^-7}, {
                   11.803066020732206`, 11.803066020732206`}}]}}, {{}, {{}, {
                   GrayLevel[0.4], 
                   PointSize[0.09], 
                   AbsoluteThickness[1.6], 
                   
                   PointBox[{{1.6948167795276383`, 2.9052679959834418`}, {
                    2.227816320451859, 2.584653237430766}, {3.043099335090081,
                     4.798822972025658}, {3.5728355469237116`, 
                    5.9507424155697155`}, {4.158566334344331, 
                    5.2097676165465385`}, {4.824808988689111, 
                    7.23346088027902}, {6.88649660338492, 
                    5.297021421229134}, {7.819072150835878, 
                    6.533166043611269}, {8.437306856915493, 
                    8.81724006216815}, {8.604907881861761, 
                    11.302704526196452`}}]}, {}}, {}}}, FrameStyle -> 
               Directive[
                 Thickness[Tiny], 
                 GrayLevel[0.7]], Axes -> False, AspectRatio -> 1, ImageSize -> 
               Dynamic[{
                 Automatic, 3.5 CurrentValue["FontCapHeight"]/
                  AbsoluteCurrentValue[Magnification]}], Frame -> True, 
               FrameTicks -> None, FrameStyle -> Directive[
                 Opacity[0.5], 
                 Thickness[Tiny], 
                 RGBColor[0.368417, 0.506779, 0.709798]]], 
              GridBox[{{
                 RowBox[{
                   TagBox["\"Predictor: \"", "SummaryItemAnnotation"], 
                   "\[InvisibleSpace]", 
                   TagBox["\"NearestNeighbors\"", "SummaryItem"]}]}, {
                 RowBox[{
                   TagBox[
                   "\"Number of test examples: \"", "SummaryItemAnnotation"], 
                   "\[InvisibleSpace]", 
                   TagBox["1089", "SummaryItem"]}]}}, 
               GridBoxAlignment -> {
                "Columns" -> {{Left}}, "Rows" -> {{Automatic}}}, AutoDelete -> 
               False, GridBoxItemSize -> {
                "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
               GridBoxSpacings -> {
                "Columns" -> {{2}}, "Rows" -> {{Automatic}}}, 
               BaseStyle -> {
                ShowStringCharacters -> False, NumberMarks -> False, 
                 PrintPrecision -> 3, ShowSyntaxStyles -> False}]}}, 
            GridBoxAlignment -> {"Rows" -> {{Top}}}, AutoDelete -> False, 
            GridBoxItemSize -> {
             "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
            BaselinePosition -> {1, 1}], True -> GridBox[{{
              PaneBox[
               ButtonBox[
                DynamicBox[
                 FEPrivate`FrontEndResource[
                 "FEBitmaps", "SquareMinusIconMedium"]], 
                ButtonFunction :> (Typeset`open$$ = False), Appearance -> 
                None, Evaluator -> Automatic, Method -> "Preemptive"], 
               Alignment -> {Center, Center}, ImageSize -> 
               Dynamic[{
                 Automatic, 3.5 CurrentValue["FontCapHeight"]/
                  AbsoluteCurrentValue[Magnification]}]], 
              GraphicsBox[{{{}, {}, {
                  GrayLevel[0.6], 
                  Thickness[0.03], 
                  Opacity[1.], 
                  Dashing[{Small, Small}], 
                  
                  LineBox[{{2.409616047529911*^-7, 2.409616047529911*^-7}, {
                   11.803066020732206`, 11.803066020732206`}}]}}, {{}, {{}, {
                   GrayLevel[0.4], 
                   PointSize[0.09], 
                   AbsoluteThickness[1.6], 
                   
                   PointBox[{{1.6948167795276383`, 2.9052679959834418`}, {
                    2.227816320451859, 2.584653237430766}, {3.043099335090081,
                     4.798822972025658}, {3.5728355469237116`, 
                    5.9507424155697155`}, {4.158566334344331, 
                    5.2097676165465385`}, {4.824808988689111, 
                    7.23346088027902}, {6.88649660338492, 
                    5.297021421229134}, {7.819072150835878, 
                    6.533166043611269}, {8.437306856915493, 
                    8.81724006216815}, {8.604907881861761, 
                    11.302704526196452`}}]}, {}}, {}}}, FrameStyle -> 
               Directive[
                 Thickness[Tiny], 
                 GrayLevel[0.7]], Axes -> False, AspectRatio -> 1, ImageSize -> 
               Dynamic[{
                 Automatic, 3.5 CurrentValue["FontCapHeight"]/
                  AbsoluteCurrentValue[Magnification]}], Frame -> True, 
               FrameTicks -> None, FrameStyle -> Directive[
                 Opacity[0.5], 
                 Thickness[Tiny], 
                 RGBColor[0.368417, 0.506779, 0.709798]]], 
              GridBox[{{
                 RowBox[{
                   TagBox["\"Predictor: \"", "SummaryItemAnnotation"], 
                   "\[InvisibleSpace]", 
                   TagBox["\"NearestNeighbors\"", "SummaryItem"]}]}, {
                 RowBox[{
                   TagBox[
                   "\"Number of test examples: \"", "SummaryItemAnnotation"], 
                   "\[InvisibleSpace]", 
                   TagBox["1089", "SummaryItem"]}]}, {
                 RowBox[{
                   TagBox["\"StandardDeviation: \"", "SummaryItemAnnotation"],
                    "\[InvisibleSpace]", 
                   TagBox["0.8610984725476599`", "SummaryItem"]}]}}, 
               GridBoxAlignment -> {
                "Columns" -> {{Left}}, "Rows" -> {{Automatic}}}, AutoDelete -> 
               False, GridBoxItemSize -> {
                "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
               GridBoxSpacings -> {
                "Columns" -> {{2}}, "Rows" -> {{Automatic}}}, 
               BaseStyle -> {
                ShowStringCharacters -> False, NumberMarks -> False, 
                 PrintPrecision -> 3, ShowSyntaxStyles -> False}]}}, 
            GridBoxAlignment -> {"Rows" -> {{Top}}}, AutoDelete -> False, 
            GridBoxItemSize -> {
             "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
            BaselinePosition -> {1, 1}]}, 
         Dynamic[Typeset`open$$], ImageSize -> Automatic], BaselinePosition -> 
        Baseline], DynamicModuleValues :> {}], 
      StyleBox["]", "NonInterpretableSummary"]}]},
   "CopyTag",
   DisplayFunction->(#& ),
   InterpretationFunction->("PredictorMeasurementsObject[\[Ellipsis]]"& )],
  False,
  Editable->False,
  SelectWithContents->True,
  Selectable->False]], "Output",
 CellChangeTimes->{3.7099482935415487`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"pm", "[", "\"\<ComparisonPlot\>\"", "]"}]], "Input"],

Cell[BoxData[
 TemplateBox[{GraphicsBox[{{{}, {{{}, {
         Hue[0.67, 0.6, 0.6], 
         Directive[
          PointSize[0.004583333333333334], 
          RGBColor[0.368417, 0.506779, 0.709798], 
          AbsoluteThickness[1.6]], 
         PointBox[CompressedData["
1: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
Mkpnzpr/AXwDxnc=
          "]]}, {}}}, {}, {}, {{}, {}}}, {{{{}, {}, 
        TagBox[{
          Directive[
           Opacity[1.], 
           AbsoluteThickness[1.6], 
           GrayLevel[0.5], 
           Dashing[{Small, Small}], 
           Thickness[0.002]], 
          LineBox[CompressedData["
1:eJxFxX0w03EcAOCfmUrKiHmbeSt60/ya3FUuDWE5RNOVnAvn5bgL4bwkWZhT
E7sWt9LWHOfl6sh5yVs2rymUc846Jm23c21tnFTqRC9/+Hz/eO5xjE29GE/A
MCz4n/+vfqFWnAi2l25vkr2QKAlE4wQhI5CJTrOy/XrNF71yzuYS9xRaJ7Sg
KJ3R6gukhootO1jRhkk0LWhtcu1mvAGaweHvpCVQ4Zzj60LyW1t4fMLGd9AB
nTjObestpMB23X30mzIbuOdkjNcVN7SIwiIXPbBG64gb6Z+t4CUn4vOW82gz
TZbaqNkSjhQ3eRwzQGu7DwdXJ1rAgsGkjHd9ZPhQFNXFkYzWi7Srk+aYw98D
FnHn92YwXaArncXRXFnvShBnHzzWuKlUyk3hkIWympGz6BVMnnK90gRuJa0a
D2tJcJC3aYS23Ri2D2uVimL3woUHtf0alz0wVV4/J53aDRe0M0mzbEM4g8WZ
Kw7YBQunvIdere2AI8wf+fA6DeCFPNlcTQERFgxU8s7Q9OGlyWV5+poenNz1
2p8uwuA/01nlFpItyfa9t1wH/EN+wyqlgsZt/AXjsxNvCPg6rOG8fFpe+A32
yE9rEChWYT/9/q5n88vwRvFjQcg9NbzuoJy+zFfBRwRlip7kRZjyiWVoOT8D
493K8QJsFBYRSNP5jSOwUZDnh7xQ9NJHvipbPAxXE/02UxlD8I7QBlo0Wwp3
Tcqc7mCdMD8ad8sP7YBT1ko9c8Xt8H7r0+E3GG1wedwTTgz7BTz2Y2CqCKuH
b9tmqPPEdbC7zwFCJqMWFt0vcY9ji2E1s8r1LlYFhz/8GZXL4MOSxasVSWwe
fFTnpeJjJbBesX5AJpsNN3vwWE1YFtwxSqfPYAkwMb2IGZbK6d/+L/NredM=

           "]]}, 
         Annotation[#, "Charting`Private`Tag$50461#1"]& ]}}, {}, {}}}, {
    DisplayFunction -> Identity, PlotRangePadding -> {{0, 0}, {0, 0}}, 
     AxesOrigin -> {0, 0}, 
     PlotRange -> {{-7.825395969067491, 0}, {-7.825395969067491, 0}}, 
     PlotRangeClipping -> True, ImagePadding -> All, DisplayFunction -> 
     Identity, Axes -> {False, False}, AxesLabel -> {None, None}, 
     AxesOrigin -> {0, 0}, DisplayFunction :> Identity, 
     Frame -> {{True, False}, {True, False}}, FrameLabel -> {{
        FormBox["\"actual value\"", TraditionalForm], None}, {
        FormBox["\"predicted value\"", TraditionalForm], None}}, 
     FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
     GridLines -> {None, None}, GridLinesStyle -> Directive[
       GrayLevel[0.5, 0.4]], 
     Method -> {"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
           (Part[{{Identity, Identity}, {Identity, Identity}}, 1, 2][#]& )[
            Part[#, 1]], 
           (Part[{{Identity, Identity}, {Identity, Identity}}, 2, 2][#]& )[
            Part[#, 2]]}& ), "CopiedValueFunction" -> ({
           (Part[{{Identity, Identity}, {Identity, Identity}}, 1, 2][#]& )[
            Part[#, 1]], 
           (Part[{{Identity, Identity}, {Identity, Identity}}, 2, 2][#]& )[
            Part[#, 2]]}& )}}, 
     PlotRange -> {{-7.825395969067491, 0}, {-7.825395969067491, 0}}, 
     PlotRangeClipping -> True, PlotRangePadding -> {{0, 0}, {0, 0}}, 
     Ticks -> {Automatic, Automatic}}],FormBox[
    TagBox[
     GridBox[{{
        FormBox[
         TemplateBox[{"\"predictions\""}, "PointLegend", 
          DisplayFunction -> (StyleBox[
            StyleBox[
             PaneBox[
              TagBox[
               GridBox[{{
                  TagBox[
                   GridBox[{{
                    GraphicsBox[{{}, {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.16500000000000004`], 
                    RGBColor[0.368417, 0.506779, 0.709798], 
                    AbsoluteThickness[1.6]], {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.16500000000000004`], 
                    RGBColor[0.368417, 0.506779, 0.709798], 
                    AbsoluteThickness[1.6]], 
                    PointBox[
                    NCache[{
                    Scaled[{
                    Rational[1, 2], 
                    Rational[1, 2]}]}, {
                    Scaled[{0.5, 0.5}]}]]}}}, AspectRatio -> Full, 
                    ImageSize -> {10, 10}, PlotRangePadding -> None, 
                    ImagePadding -> Automatic, 
                    BaselinePosition -> (Scaled[0.1] -> Baseline)], #}}, 
                    GridBoxAlignment -> {
                    "Columns" -> {Center, Left}, "Rows" -> {{Baseline}}}, 
                    AutoDelete -> False, 
                    GridBoxDividers -> {
                    "Columns" -> {{False}}, "Rows" -> {{False}}}, 
                    GridBoxItemSize -> {
                    "Columns" -> {{All}}, "Rows" -> {{All}}}, 
                    GridBoxSpacings -> {
                    "Columns" -> {{0.5}}, "Rows" -> {{0.8}}}], "Grid"]}}, 
                GridBoxAlignment -> {
                 "Columns" -> {{Left}}, "Rows" -> {{Top}}}, AutoDelete -> 
                False, GridBoxItemSize -> {
                 "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
                GridBoxSpacings -> {"Columns" -> {{1}}, "Rows" -> {{0}}}], 
               "Grid"], Alignment -> Left, AppearanceElements -> None, 
              ImageMargins -> {{5, 5}, {5, 5}}, ImageSizeAction -> 
              "ResizeToFit"], LineIndent -> 0, StripOnInput -> False], {
            FontFamily -> "Arial"}, Background -> Automatic, StripOnInput -> 
            False]& ), InterpretationFunction :> (RowBox[{"PointLegend", "[", 
             RowBox[{
               RowBox[{"{", 
                 RowBox[{"Directive", "[", 
                   RowBox[{
                    RowBox[{"PointSize", "[", "0.004583333333333334`", "]"}], 
                    ",", 
                    InterpretationBox[
                    ButtonBox[
                    TooltipBox[
                    GraphicsBox[{{
                    GrayLevel[0], 
                    RectangleBox[{0, 0}]}, {
                    GrayLevel[0], 
                    RectangleBox[{1, -1}]}, {
                    RGBColor[0.368417, 0.506779, 0.709798], 
                    RectangleBox[{0, -1}, {2, 1}]}}, AspectRatio -> 1, Frame -> 
                    True, FrameStyle -> 
                    RGBColor[
                    0.24561133333333335`, 0.3378526666666667, 
                    0.4731986666666667], FrameTicks -> None, PlotRangePadding -> 
                    None, ImageSize -> 
                    Dynamic[{
                    Automatic, 1.35 CurrentValue["FontCapHeight"]/
                    AbsoluteCurrentValue[Magnification]}]], 
                    "RGBColor[0.368417, 0.506779, 0.709798]"], Appearance -> 
                    None, BaseStyle -> {}, BaselinePosition -> Baseline, 
                    DefaultBaseStyle -> {}, ButtonFunction :> 
                    With[{Typeset`box$ = EvaluationBox[]}, 
                    If[
                    Not[
                    AbsoluteCurrentValue["Deployed"]], 
                    SelectionMove[Typeset`box$, All, Expression]; 
                    FrontEnd`Private`$ColorSelectorInitialAlpha = 1; 
                    FrontEnd`Private`$ColorSelectorInitialColor = 
                    RGBColor[0.368417, 0.506779, 0.709798]; 
                    FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
                    MathLink`CallFrontEnd[
                    FrontEnd`AttachCell[Typeset`box$, 
                    FrontEndResource["RGBColorValueSelector"], {
                    0, {Left, Bottom}}, {Left, Top}, 
                    "ClosingActions" -> {
                    "SelectionDeparture", "ParentChanged", 
                    "EvaluatorQuit"}]]]], BaseStyle -> Inherited, Evaluator -> 
                    Automatic, Method -> "Preemptive"], 
                    RGBColor[0.368417, 0.506779, 0.709798], Editable -> False,
                     Selectable -> False], ",", 
                    RowBox[{"AbsoluteThickness", "[", "1.6`", "]"}]}], "]"}], 
                 "}"}], ",", 
               RowBox[{"{", #, "}"}], ",", 
               RowBox[{"LegendMarkers", "\[Rule]", 
                 RowBox[{"{", 
                   RowBox[{"{", 
                    RowBox[{"False", ",", "Automatic"}], "}"}], "}"}]}], ",", 
               RowBox[{"Joined", "\[Rule]", 
                 RowBox[{"{", "False", "}"}]}], ",", 
               RowBox[{"LabelStyle", "\[Rule]", 
                 RowBox[{"{", "}"}]}], ",", 
               RowBox[{"LegendLayout", "\[Rule]", "\"Column\""}]}], "]"}]& ), 
          Editable -> True], TraditionalForm]}, {
        FormBox[
         TemplateBox[{"\"perfect prediction line\""}, "LineLegend", 
          DisplayFunction -> (StyleBox[
            StyleBox[
             PaneBox[
              TagBox[
               GridBox[{{
                  TagBox[
                   GridBox[{{
                    GraphicsBox[{{
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.5], 
                    Opacity[1.], 
                    AbsoluteThickness[1.6], 
                    GrayLevel[0.5], 
                    Dashing[{Small, Small}], 
                    Thickness[0.018000000000000002`]], {
                    LineBox[{{0, 10}, {40, 10}}]}}, {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.5], 
                    Opacity[1.], 
                    AbsoluteThickness[1.6], 
                    GrayLevel[0.5], 
                    Dashing[{Small, Small}], 
                    Thickness[0.018000000000000002`]], {}}}, AspectRatio -> 
                    Full, ImageSize -> {40, 10}, PlotRangePadding -> None, 
                    ImagePadding -> Automatic, 
                    BaselinePosition -> (Scaled[0.1] -> Baseline)], #}}, 
                    GridBoxAlignment -> {
                    "Columns" -> {Center, Left}, "Rows" -> {{Baseline}}}, 
                    AutoDelete -> False, 
                    GridBoxDividers -> {
                    "Columns" -> {{False}}, "Rows" -> {{False}}}, 
                    GridBoxItemSize -> {
                    "Columns" -> {{All}}, "Rows" -> {{All}}}, 
                    GridBoxSpacings -> {
                    "Columns" -> {{0.5}}, "Rows" -> {{0.8}}}], "Grid"]}}, 
                GridBoxAlignment -> {
                 "Columns" -> {{Left}}, "Rows" -> {{Top}}}, AutoDelete -> 
                False, GridBoxItemSize -> {
                 "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
                GridBoxSpacings -> {"Columns" -> {{1}}, "Rows" -> {{0}}}], 
               "Grid"], Alignment -> Left, AppearanceElements -> None, 
              ImageMargins -> {{5, 5}, {5, 5}}, ImageSizeAction -> 
              "ResizeToFit"], LineIndent -> 0, StripOnInput -> False], {
            FontFamily -> "Arial"}, Background -> Automatic, StripOnInput -> 
            False]& ), InterpretationFunction :> (RowBox[{"LineLegend", "[", 
             RowBox[{
               RowBox[{"{", 
                 RowBox[{"Directive", "[", 
                   RowBox[{
                    RowBox[{"Opacity", "[", "1.`", "]"}], ",", 
                    RowBox[{"AbsoluteThickness", "[", "1.6`", "]"}], ",", 
                    InterpretationBox[
                    ButtonBox[
                    TooltipBox[
                    GraphicsBox[{{
                    GrayLevel[0], 
                    RectangleBox[{0, 0}]}, {
                    GrayLevel[0], 
                    RectangleBox[{1, -1}]}, {
                    GrayLevel[0.5], 
                    RectangleBox[{0, -1}, {2, 1}]}}, AspectRatio -> 1, Frame -> 
                    True, FrameStyle -> GrayLevel[0.33333333333333337`], 
                    FrameTicks -> None, PlotRangePadding -> None, ImageSize -> 
                    Dynamic[{
                    Automatic, 1.35 CurrentValue["FontCapHeight"]/
                    AbsoluteCurrentValue[Magnification]}]], "GrayLevel[0.5]"],
                     Appearance -> None, BaseStyle -> {}, BaselinePosition -> 
                    Baseline, DefaultBaseStyle -> {}, ButtonFunction :> 
                    With[{Typeset`box$ = EvaluationBox[]}, 
                    If[
                    Not[
                    AbsoluteCurrentValue["Deployed"]], 
                    SelectionMove[Typeset`box$, All, Expression]; 
                    FrontEnd`Private`$ColorSelectorInitialAlpha = 1; 
                    FrontEnd`Private`$ColorSelectorInitialColor = 
                    GrayLevel[0.5]; 
                    FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
                    MathLink`CallFrontEnd[
                    FrontEnd`AttachCell[Typeset`box$, 
                    FrontEndResource["GrayLevelColorValueSelector"], {
                    0, {Left, Bottom}}, {Left, Top}, 
                    "ClosingActions" -> {
                    "SelectionDeparture", "ParentChanged", 
                    "EvaluatorQuit"}]]]], BaseStyle -> Inherited, Evaluator -> 
                    Automatic, Method -> "Preemptive"], 
                    GrayLevel[0.5], Editable -> False, Selectable -> False], 
                    ",", 
                    RowBox[{"Dashing", "[", 
                    RowBox[{"{", 
                    RowBox[{"Small", ",", "Small"}], "}"}], "]"}], ",", 
                    RowBox[{"Thickness", "[", "0.002`", "]"}]}], "]"}], "}"}],
                ",", 
               RowBox[{"{", #, "}"}], ",", 
               RowBox[{"LegendMarkers", "\[Rule]", "None"}], ",", 
               RowBox[{"LabelStyle", "\[Rule]", 
                 RowBox[{"{", "}"}]}], ",", 
               RowBox[{"LegendLayout", "\[Rule]", "\"Column\""}]}], "]"}]& ), 
          Editable -> True], TraditionalForm]}}, 
      GridBoxAlignment -> {"Columns" -> {{Left}}}, AutoDelete -> False, 
      GridBoxItemSize -> {
       "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
      GridBoxSpacings -> {"Columns" -> {{0}}}], "Grid"], TraditionalForm]},
  "Legended",
  DisplayFunction->(GridBox[{{
      TagBox[
       ItemBox[
        PaneBox[
         TagBox[#, "SkipImageSizeLevel"], Alignment -> {Center, Baseline}, 
         BaselinePosition -> Baseline], DefaultBaseStyle -> "Labeled"], 
       "SkipImageSizeLevel"], 
      ItemBox[#2, DefaultBaseStyle -> "LabeledLabel"]}}, 
    GridBoxAlignment -> {"Columns" -> {{Center}}, "Rows" -> {{Center}}}, 
    AutoDelete -> False, GridBoxItemSize -> Automatic, 
    BaselinePosition -> {1, 1}]& ),
  Editable->True,
  InterpretationFunction->(RowBox[{"Legended", "[", 
     RowBox[{#, ",", 
       RowBox[{"Placed", "[", 
         RowBox[{#2, ",", "After"}], "]"}]}], "]"}]& )]], "Output",
 CellChangeTimes->{3.7099482937986*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"pm", "[", "\"\<StandardDeviation\>\"", "]"}]], "Input"],

Cell[BoxData["0.8610984725476599`"], "Output",
 CellChangeTimes->{3.709948293897621*^9}]
}, Open  ]]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["\<\
Ok, those results aren\[CloseCurlyQuote]t great. What would happen if we use \
a more sophisticated algorithm AND restrict ourselves to just including those \
retrogressions with strong differences?\
\>", "Chapter",
 CellChangeTimes->{{3.709948052372204*^9, 3.7099481229266396`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"p", "=", 
  RowBox[{"Predict", "[", 
   RowBox[{
    RowBox[{
     RowBox[{"trainingset", "[", 
      RowBox[{"[", 
       RowBox[{"All", ",", 
        RowBox[{"{", 
         RowBox[{"3", ",", "5", ",", "6", ",", "7", ",", "8"}], "}"}]}], 
       "]"}], "]"}], "\[Rule]", 
     RowBox[{"trainingset", "[", 
      RowBox[{"[", 
       RowBox[{"All", ",", "9"}], "]"}], "]"}]}], ",", 
    RowBox[{"Method", "\[Rule]", "\"\<GaussianProcess\>\""}]}], 
   "]"}]}]], "Input",
 CellChangeTimes->{{3.709938311722932*^9, 3.709938323528329*^9}, {
   3.7099383939406323`*^9, 3.709938396706202*^9}, {3.7099384786168337`*^9, 
   3.7099384822875795`*^9}, {3.7099385224777436`*^9, 3.7099385275187683`*^9}, 
   3.709947964195163*^9}],

Cell[BoxData["$Aborted"], "Output",
 CellChangeTimes->{3.709938338273324*^9, 3.7099384107090387`*^9, 
  3.7099384945470705`*^9, 3.7099479350071907`*^9, 3.709948259435571*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{"pm", "=", 
  RowBox[{"PredictorMeasurements", "[", 
   RowBox[{"p", ",", 
    RowBox[{
     RowBox[{"testset", "[", 
      RowBox[{"[", 
       RowBox[{"All", ",", 
        RowBox[{"{", 
         RowBox[{"3", ",", "5", ",", "6", ",", "7", ",", "8"}], "}"}]}], 
       "]"}], "]"}], "\[Rule]", 
     RowBox[{"testset", "[", 
      RowBox[{"[", 
       RowBox[{"All", ",", "9"}], "]"}], "]"}]}]}], "]"}]}]], "Input",
 CellChangeTimes->{{3.7099479414545097`*^9, 3.7099479532639265`*^9}}],

Cell[BoxData[
 RowBox[{"pm", "[", "\"\<ComparisonPlot\>\"", "]"}]], "Input"],

Cell[BoxData[
 RowBox[{"pm", "[", "\"\<StandardDeviation\>\"", "]"}]], "Input"]
}, Open  ]],

Cell["\<\
Let\[CloseCurlyQuote]s recap what just happened. We found out that during \
retrogressions of most planets (Mars, Saturn, Uranus, Neptune, and Pluto) a \
CHANGE of up to 37 percent happened! This is sufficient discernment ability \
to have hope in building a predictor of flight cancellations. 

When the predictor is applied to two years of FUTURE, unconnected dates, the \
difference from actual flight cancellations is . To see more on this kind of \
thing, go to AyurAstro.com.\
\>", "Chapter",
 CellChangeTimes->{{3.7099371635626907`*^9, 3.709937350648697*^9}, {
  3.709937888954048*^9, 3.7099379571398993`*^9}, {3.709941916268335*^9, 
  3.709941959472111*^9}, {3.7099420247683754`*^9, 3.7099420255845423`*^9}, {
  3.709944936614012*^9, 3.70994493690407*^9}}]
}, Open  ]]
},
WindowSize->{2560, 1357},
WindowMargins->{{-8, Automatic}, {Automatic, -8}},
Magnification->2.,
FrontEndVersion->"11.0 for Microsoft Windows (64-bit) (September 21, 2016)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1486, 35, 595, 10, 286, "Title"],
Cell[2084, 47, 388, 5, 272, "Text"],
Cell[2475, 54, 605, 14, 212, "Text"],
Cell[3083, 70, 330, 9, 101, "Input"],
Cell[CellGroupData[{
Cell[3438, 83, 2624, 62, 296, "Input"],
Cell[6065, 147, 344, 9, 61, "Output"]
}, Open  ]],
Cell[6424, 159, 355, 6, 60, "Text"],
Cell[CellGroupData[{
Cell[6804, 169, 608, 10, 378, "Chapter"],
Cell[7415, 181, 11451, 270, 1388, "Input"]
}, Open  ]],
Cell[CellGroupData[{
Cell[18903, 456, 264, 5, 210, "Chapter"],
Cell[CellGroupData[{
Cell[19192, 465, 169, 3, 61, "Input"],
Cell[19364, 470, 15574, 391, 453, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[34975, 866, 318, 6, 61, "Input"],
Cell[35296, 874, 14450, 373, 413, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[49783, 1252, 152, 3, 61, "Input"],
Cell[49938, 1257, 257, 7, 61, "Output"]
}, Open  ]],
Cell[50210, 1267, 876, 23, 61, "Input"],
Cell[CellGroupData[{
Cell[51111, 1294, 257, 5, 61, "Input"],
Cell[51371, 1301, 39123, 857, 613, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[90531, 2163, 131, 2, 61, "Input"],
Cell[90665, 2167, 294, 4, 61, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[90996, 2176, 746, 18, 84, "Input"],
Cell[91745, 2196, 277, 6, 46, "Message"],
Cell[92025, 2204, 275, 6, 46, "Message"],
Cell[92303, 2212, 275, 6, 46, "Message"],
Cell[92581, 2220, 371, 7, 46, "Message"]
}, Open  ]],
Cell[CellGroupData[{
Cell[92989, 2232, 303, 5, 61, "Input"],
Cell[93295, 2239, 94, 1, 122, "Output"]
}, Open  ]],
Cell[93404, 2243, 203, 4, 122, "Input"],
Cell[CellGroupData[{
Cell[93632, 2251, 139, 2, 122, "Input"],
Cell[93774, 2255, 73, 1, 122, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[93884, 2261, 654, 17, 122, "Input"],
Cell[94541, 2280, 140148, 2457, 970, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[234726, 4742, 246, 5, 122, "Input"],
Cell[234975, 4749, 453, 12, 122, "Output"]
}, Open  ]],
Cell[235443, 4764, 203, 3, 122, "Input"],
Cell[CellGroupData[{
Cell[235671, 4771, 447, 12, 122, "Input"],
Cell[236121, 4785, 674, 16, 158, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[236832, 4806, 544, 13, 122, "Input"],
Cell[237379, 4821, 349, 7, 122, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[237765, 4833, 206, 5, 122, "Input"],
Cell[237974, 4840, 709, 17, 162, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[238720, 4862, 433, 13, 122, "Input"],
Cell[239156, 4877, 172, 4, 122, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[239365, 4886, 435, 13, 122, "Input"],
Cell[239803, 4901, 144, 3, 122, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[239984, 4909, 433, 13, 122, "Input"],
Cell[240420, 4924, 120, 3, 122, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[240577, 4932, 421, 8, 122, "Input"],
Cell[241001, 4942, 623, 16, 122, "Output"]
}, Open  ]],
Cell[241639, 4961, 598, 16, 122, "Input"],
Cell[CellGroupData[{
Cell[242262, 4981, 931, 20, 122, "Input"],
Cell[243196, 5003, 27019, 603, 1262, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[270252, 5611, 250, 5, 122, "Input"],
Cell[270505, 5618, 140260, 2459, 970, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[410802, 8082, 137, 2, 122, "Input"],
Cell[410942, 8086, 73, 1, 122, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[411052, 8092, 132, 2, 122, "Input"],
Cell[411187, 8096, 73, 1, 122, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[411297, 8102, 538, 14, 122, "Input"],
Cell[411838, 8118, 12327, 310, 750, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[424202, 8433, 124, 2, 122, "Input"],
Cell[424329, 8437, 4688, 109, 286, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[429054, 8551, 130, 2, 122, "Input"],
Cell[429187, 8555, 75, 1, 122, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[429299, 8561, 414, 8, 122, "Input"],
Cell[429716, 8571, 214, 3, 122, "Output"]
}, Open  ]],
Cell[429945, 8577, 336, 9, 122, "Input"],
Cell[CellGroupData[{
Cell[430306, 8590, 1184, 31, 202, "Input"],
Cell[431493, 8623, 893, 19, 194, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[432423, 8647, 247, 6, 122, "Input"],
Cell[432673, 8655, 7604, 130, 946, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[440314, 8790, 267, 6, 122, "Input"],
Cell[440584, 8798, 530, 14, 122, "Output"]
}, Open  ]],
Cell[441129, 8815, 704, 15, 122, "Input"],
Cell[CellGroupData[{
Cell[441858, 8834, 269, 6, 122, "Input"],
Cell[442130, 8842, 244, 3, 122, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[442411, 8850, 185, 3, 122, "Input"],
Cell[442599, 8855, 260, 4, 122, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[442896, 8864, 151, 2, 122, "Input"],
Cell[443050, 8868, 220, 3, 122, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[443307, 8876, 241, 4, 122, "Input"],
Cell[443551, 8882, 10445, 297, 932, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[454033, 9184, 253, 4, 122, "Input"],
Cell[454289, 9190, 153121, 2526, 1056, "Output"]
}, Open  ]],
Cell[607425, 11719, 71, 1, 61, "Input"],
Cell[CellGroupData[{
Cell[607521, 11724, 140, 2, 61, "Input"],
Cell[607664, 11728, 99, 1, 61, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[607800, 11734, 220, 5, 61, "Input"],
Cell[608023, 11741, 99, 1, 61, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[608159, 11747, 911, 18, 61, "Input"],
Cell[609073, 11767, 3343, 77, 154, "Output"]
}, Open  ]],
Cell[612431, 11847, 120, 2, 61, "Input"]
}, Open  ]],
Cell[CellGroupData[{
Cell[612588, 11854, 468, 7, 210, "Chapter"],
Cell[CellGroupData[{
Cell[613081, 11865, 635, 16, 61, "Input"],
Cell[613719, 11883, 254, 6, 46, "Message"],
Cell[613976, 11891, 254, 6, 46, "Message"],
Cell[614233, 11899, 254, 6, 46, "Message"],
Cell[614490, 11907, 348, 7, 46, "Message"]
}, Open  ]],
Cell[614853, 11917, 303, 7, 61, "Input"],
Cell[CellGroupData[{
Cell[615181, 11928, 682, 17, 84, "Input"],
Cell[615866, 11947, 252, 6, 46, "Message"]
}, Open  ]],
Cell[616133, 11956, 305, 7, 61, "Input"],
Cell[CellGroupData[{
Cell[616463, 11967, 693, 17, 84, "Input"],
Cell[617159, 11986, 254, 6, 46, "Message"],
Cell[617416, 11994, 254, 6, 46, "Message"],
Cell[617673, 12002, 254, 6, 46, "Message"],
Cell[617930, 12010, 348, 7, 46, "Message"]
}, Open  ]],
Cell[618293, 12020, 256, 6, 61, "Input"],
Cell[CellGroupData[{
Cell[618574, 12030, 741, 18, 84, "Input"],
Cell[619318, 12050, 254, 6, 46, "Message"],
Cell[619575, 12058, 254, 6, 46, "Message"]
}, Open  ]],
Cell[619844, 12067, 256, 6, 61, "Input"],
Cell[CellGroupData[{
Cell[620125, 12077, 692, 17, 84, "Input"],
Cell[620820, 12096, 254, 6, 46, "Message"],
Cell[621077, 12104, 252, 6, 46, "Message"],
Cell[621332, 12112, 252, 6, 46, "Message"],
Cell[621587, 12120, 348, 7, 46, "Message"]
}, Open  ]],
Cell[621950, 12130, 254, 6, 61, "Input"],
Cell[CellGroupData[{
Cell[622229, 12140, 695, 17, 84, "Input"],
Cell[622927, 12159, 250, 6, 46, "Message"],
Cell[623180, 12167, 252, 6, 46, "Message"],
Cell[623435, 12175, 252, 6, 46, "Message"],
Cell[623690, 12183, 346, 7, 46, "Message"]
}, Open  ]],
Cell[624051, 12193, 201, 5, 61, "Input"],
Cell[CellGroupData[{
Cell[624277, 12202, 723, 18, 84, "Input"],
Cell[625003, 12222, 252, 6, 46, "Message"],
Cell[625258, 12230, 252, 6, 46, "Message"],
Cell[625513, 12238, 251, 6, 46, "Message"],
Cell[625767, 12246, 348, 7, 46, "Message"]
}, Open  ]],
Cell[626130, 12256, 254, 6, 61, "Input"],
Cell[626387, 12264, 229, 5, 61, "Input"],
Cell[626619, 12271, 227, 5, 61, "Input"],
Cell[626849, 12278, 228, 5, 61, "Input"],
Cell[627080, 12285, 224, 5, 61, "Input"],
Cell[627307, 12292, 230, 5, 61, "Input"],
Cell[627540, 12299, 227, 5, 61, "Input"],
Cell[627770, 12306, 228, 5, 61, "Input"],
Cell[628001, 12313, 228, 5, 61, "Input"],
Cell[628232, 12320, 1365, 34, 101, "Input"],
Cell[CellGroupData[{
Cell[629622, 12358, 131, 2, 61, "Input"],
Cell[629756, 12362, 884, 19, 101, "Output"]
}, Open  ]],
Cell[630655, 12384, 528, 15, 61, "Input"],
Cell[CellGroupData[{
Cell[631208, 12403, 363, 7, 61, "Input"],
Cell[631574, 12412, 215, 2, 61, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[631826, 12419, 805, 18, 101, "Input"],
Cell[632634, 12439, 2176, 59, 140, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[634847, 12503, 138, 2, 61, "Input"],
Cell[634988, 12507, 122, 2, 61, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[635147, 12514, 172, 3, 61, "Input"],
Cell[635322, 12519, 1805, 41, 474, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[637164, 12565, 890, 23, 61, "Input"],
Cell[638057, 12590, 241, 3, 61, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[638335, 12598, 180, 4, 61, "Input"],
Cell[638518, 12604, 88, 1, 61, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[638643, 12610, 830, 23, 61, "Input"],
Cell[639476, 12635, 90, 1, 61, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[639603, 12641, 180, 4, 61, "Input"],
Cell[639786, 12647, 91, 1, 61, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[639914, 12653, 790, 22, 61, "Input"],
Cell[640707, 12677, 188, 2, 61, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[640932, 12684, 180, 4, 61, "Input"],
Cell[641115, 12690, 91, 1, 61, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[641243, 12696, 758, 21, 61, "Input"],
Cell[642004, 12719, 134, 2, 61, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[642175, 12726, 178, 4, 61, "Input"],
Cell[642356, 12732, 91, 1, 61, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[642484, 12738, 788, 22, 61, "Input"],
Cell[643275, 12762, 166, 2, 61, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[643478, 12769, 180, 4, 61, "Input"],
Cell[643661, 12775, 91, 1, 61, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[643789, 12781, 797, 23, 61, "Input"],
Cell[644589, 12806, 167, 3, 61, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[644793, 12814, 178, 4, 61, "Input"],
Cell[644974, 12820, 89, 1, 61, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[645100, 12826, 825, 23, 61, "Input"],
Cell[645928, 12851, 138, 2, 61, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[646103, 12858, 178, 4, 61, "Input"],
Cell[646284, 12864, 91, 1, 61, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[646412, 12870, 795, 23, 61, "Input"],
Cell[647210, 12895, 136, 2, 61, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[647383, 12902, 180, 4, 61, "Input"],
Cell[647566, 12908, 89, 1, 61, "Output"]
}, Open  ]],
Cell[647670, 12912, 139, 2, 61, "Input"],
Cell[CellGroupData[{
Cell[647834, 12918, 781, 17, 101, "Input"],
Cell[648618, 12937, 528, 10, 85, "Message"],
Cell[649149, 12949, 445, 9, 46, "Message"],
Cell[649597, 12960, 33913, 676, 3136, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[683547, 13641, 1538, 41, 140, "Input"],
Cell[685088, 13684, 381, 6, 61, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[685506, 13695, 1447, 40, 140, "Input"],
Cell[686956, 13737, 282, 4, 61, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[687275, 13746, 1396, 39, 140, "Input"],
Cell[688674, 13787, 252, 4, 61, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[688963, 13796, 1389, 39, 140, "Input"],
Cell[690355, 13837, 222, 3, 61, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[690614, 13845, 1394, 39, 140, "Input"],
Cell[692011, 13886, 211, 3, 61, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[692259, 13894, 1348, 39, 140, "Input"],
Cell[693610, 13935, 208, 4, 61, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[693855, 13944, 224, 3, 122, "Subchapter"],
Cell[694082, 13949, 6780, 169, 920, "Input"],
Cell[CellGroupData[{
Cell[700887, 14122, 97, 1, 61, "Input"],
Cell[700987, 14125, 11239, 279, 219, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[712263, 14409, 318, 6, 61, "Input"],
Cell[712584, 14417, 9319, 241, 219, "Output"]
}, Open  ]],
Cell[721918, 14661, 930, 24, 61, "Input"],
Cell[CellGroupData[{
Cell[722873, 14689, 104, 1, 61, "Input"],
Cell[722980, 14692, 14616, 347, 259, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[737633, 15044, 803, 19, 84, "Input"],
Cell[738439, 15065, 255, 6, 46, "Message"]
}, Open  ]],
Cell[738709, 15074, 404, 8, 61, "Input"],
Cell[CellGroupData[{
Cell[739138, 15086, 740, 17, 61, "Input"],
Cell[739881, 15105, 255, 6, 46, "Message"],
Cell[740139, 15113, 253, 6, 46, "Message"]
}, Open  ]],
Cell[740407, 15122, 353, 7, 61, "Input"],
Cell[740763, 15131, 787, 19, 84, "Input"],
Cell[741553, 15152, 357, 7, 61, "Input"],
Cell[741913, 15161, 799, 19, 84, "Input"],
Cell[742715, 15182, 311, 7, 61, "Input"],
Cell[CellGroupData[{
Cell[743051, 15193, 846, 19, 84, "Input"],
Cell[743900, 15214, 253, 6, 46, "Message"]
}, Open  ]],
Cell[744168, 15223, 309, 7, 61, "Input"],
Cell[CellGroupData[{
Cell[744502, 15234, 795, 19, 84, "Input"],
Cell[745300, 15255, 253, 6, 46, "Message"]
}, Open  ]],
Cell[745568, 15264, 307, 7, 61, "Input"],
Cell[CellGroupData[{
Cell[745900, 15275, 801, 19, 84, "Input"],
Cell[746704, 15296, 255, 6, 46, "Message"],
Cell[746962, 15304, 253, 6, 46, "Message"]
}, Open  ]],
Cell[747230, 15313, 256, 6, 61, "Input"],
Cell[747489, 15321, 829, 20, 84, "Input"],
Cell[748321, 15343, 205, 5, 61, "Input"],
Cell[748529, 15350, 1172, 31, 101, "Input"],
Cell[CellGroupData[{
Cell[749726, 15385, 909, 20, 140, "Input"],
Cell[750638, 15407, 348, 10, 61, "Output"]
}, Open  ]],
Cell[751001, 15420, 441, 12, 61, "Input"],
Cell[CellGroupData[{
Cell[751467, 15436, 132, 2, 61, "Input"],
Cell[751602, 15440, 73, 1, 61, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[751712, 15446, 182, 3, 61, "Input"],
Cell[751897, 15451, 8561, 216, 219, "Output"]
}, Open  ]],
Cell[760473, 15670, 277, 7, 61, "Input"],
Cell[760753, 15679, 2315, 60, 140, "Input"],
Cell[763071, 15741, 224, 5, 61, "Input"],
Cell[CellGroupData[{
Cell[763320, 15750, 130, 2, 61, "Input"],
Cell[763453, 15754, 125, 2, 86, "Output"]
}, Open  ]],
Cell[763593, 15759, 220, 5, 61, "Input"],
Cell[CellGroupData[{
Cell[763838, 15768, 113, 3, 61, "Input"],
Cell[763954, 15773, 8511, 214, 200, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[772502, 15992, 548, 13, 61, "Input"],
Cell[773053, 16007, 7851, 162, 130, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[780941, 16174, 593, 14, 61, "Input"],
Cell[781537, 16190, 7875, 162, 130, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[789449, 16357, 76, 1, 61, "Input"],
Cell[789528, 16360, 27217, 505, 757, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[816782, 16870, 147, 2, 61, "Input"],
Cell[816932, 16874, 138, 2, 61, "Output"]
}, Open  ]],
Cell[817085, 16879, 207, 5, 61, "Input"],
Cell[CellGroupData[{
Cell[817317, 16888, 317, 7, 61, "Input"],
Cell[817637, 16897, 2797, 54, 473, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[820471, 16956, 79, 1, 61, "Input"],
Cell[820553, 16959, 2994, 58, 493, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[823584, 17022, 74, 1, 61, "Input"],
Cell[823661, 17025, 56780, 865, 498, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[880478, 17895, 668, 16, 61, "Input"],
Cell[881149, 17913, 7792, 158, 155, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[888978, 18076, 508, 14, 61, "Input"],
Cell[889489, 18092, 7698, 156, 155, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[897224, 18253, 76, 1, 61, "Input"],
Cell[897303, 18256, 26864, 499, 782, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[924204, 18760, 79, 1, 61, "Input"],
Cell[924286, 18763, 88, 1, 86, "Output"]
}, Open  ]]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[924435, 18771, 293, 5, 294, "Chapter"],
Cell[CellGroupData[{
Cell[924753, 18780, 741, 19, 61, "Input"],
Cell[925497, 18801, 174, 2, 86, "Output"]
}, Open  ]],
Cell[925686, 18806, 508, 14, 61, "Input"],
Cell[926197, 18822, 76, 1, 61, "Input"],
Cell[926276, 18825, 79, 1, 61, "Input"]
}, Open  ]],
Cell[926370, 18829, 774, 13, 714, "Chapter"]
}, Open  ]]
}
]
*)

(* NotebookSignature BxTalzsS4pB4gAKBqFomWKrw *)
