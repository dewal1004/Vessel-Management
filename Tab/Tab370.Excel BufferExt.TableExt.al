tableextension 50271 tableextension50271 extends "Excel Buffer"
{

    //Unsupported feature: Code Modification on "CreateBook(PROCEDURE 1)".

    //procedure CreateBook();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
    /*
    if SheetName = '' then
      Error(Text002);

    if FileName = '' then
      FileNameServer := FileManagement.ServerTempFileName('xlsx')
    else begin
      if Exists(FileName) then
        Erase(FileName);
    #9..15
    XlWrkShtWriter := XlWrkBkWriter.FirstWorksheet;
    if SheetName <> '' then
      XlWrkShtWriter.Name := SheetName;

    OpenXMLManagement.SetupWorksheetHelper(XlWrkBkWriter);
    */
    //end;
    //>>>> MODIFIED CODE:
    //begin
    /*
    #1..4
     FileNameServer := FileManagement.ServerTempFileName('xlsx')
    #6..18
    OpenXMLManagement.SetupWorksheetHelper(XlWrkBkWriter);
    */
    //end;
}

