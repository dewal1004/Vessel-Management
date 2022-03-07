pageextension 50276 pageextension50276 extends "Inventory Setup"
{
    layout
    {
        addafter(Numbering)
        {
            group(Other)
            {
                Caption = 'Other';
                field("FA Acquisition"; "FA Acquisition")
                {
                }
                field("FA Acquisition Template"; "FA Acquisition Template")
                {
                }
                field("FA Maintenance"; "FA Maintenance")
                {
                }
                field("FA Maintenance Template"; "FA Maintenance Template")
                {
                }
            }
        }
    }
}

