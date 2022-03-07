pageextension 50230 pageextension50230 extends "Sales Comment Sheet"
{
    layout
    {
        addafter("Code")
        {
            field(Quantity; Quantity)
            {
                Visible = false;
            }
        }
    }
}

