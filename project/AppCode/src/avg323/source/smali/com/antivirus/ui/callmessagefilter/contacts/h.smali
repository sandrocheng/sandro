.class Lcom/antivirus/ui/callmessagefilter/contacts/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/callmessagefilter/contacts/ContactsViewActivity;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/callmessagefilter/contacts/ContactsViewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/callmessagefilter/contacts/h;->a:Lcom/antivirus/ui/callmessagefilter/contacts/ContactsViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/contacts/h;->a:Lcom/antivirus/ui/callmessagefilter/contacts/ContactsViewActivity;

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/contacts/ContactsViewActivity;->f()Landroid/support/v4/app/o;

    move-result-object v0

    const v2, 0x7f080092

    invoke-virtual {v0, v2}, Landroid/support/v4/app/o;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->c(Ljava/lang/String;)V

    return-void
.end method
