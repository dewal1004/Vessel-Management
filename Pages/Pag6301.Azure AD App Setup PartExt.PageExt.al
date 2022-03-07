pageextension 50337 pageextension50337 extends "Azure AD App Setup Part"
{
    layout
    {
        modify(AppId)
        {
            ToolTip = 'Specifies the ID that is assigned to the application when it is registered in Azure AD.Ù The ID is used for authenticating with Azure AD. This is also referred to as the client ID.';
        }
    }
}

