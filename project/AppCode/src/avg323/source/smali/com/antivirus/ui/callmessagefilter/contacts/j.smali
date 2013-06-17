.class Lcom/antivirus/ui/callmessagefilter/contacts/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;

.field final synthetic b:Lcom/antivirus/ui/callmessagefilter/contacts/ContactsViewActivity;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/callmessagefilter/contacts/ContactsViewActivity;Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/callmessagefilter/contacts/j;->b:Lcom/antivirus/ui/callmessagefilter/contacts/ContactsViewActivity;

    iput-object p2, p0, Lcom/antivirus/ui/callmessagefilter/contacts/j;->a:Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/contacts/j;->b:Lcom/antivirus/ui/callmessagefilter/contacts/ContactsViewActivity;

    invoke-static {v0}, Lcom/antivirus/ui/callmessagefilter/contacts/ContactsViewActivity;->c(Lcom/antivirus/ui/callmessagefilter/contacts/ContactsViewActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/ui/callmessagefilter/contacts/j;->b:Lcom/antivirus/ui/callmessagefilter/contacts/ContactsViewActivity;

    invoke-static {v1}, Lcom/antivirus/ui/callmessagefilter/contacts/ContactsViewActivity;->b(Lcom/antivirus/ui/callmessagefilter/contacts/ContactsViewActivity;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/contacts/j;->b:Lcom/antivirus/ui/callmessagefilter/contacts/ContactsViewActivity;

    invoke-static {v0}, Lcom/antivirus/ui/callmessagefilter/contacts/ContactsViewActivity;->c(Lcom/antivirus/ui/callmessagefilter/contacts/ContactsViewActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/contacts/j;->b:Lcom/antivirus/ui/callmessagefilter/contacts/ContactsViewActivity;

    invoke-static {v0}, Lcom/antivirus/ui/callmessagefilter/contacts/ContactsViewActivity;->c(Lcom/antivirus/ui/callmessagefilter/contacts/ContactsViewActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/ui/callmessagefilter/contacts/j;->b:Lcom/antivirus/ui/callmessagefilter/contacts/ContactsViewActivity;

    invoke-static {v1}, Lcom/antivirus/ui/callmessagefilter/contacts/ContactsViewActivity;->b(Lcom/antivirus/ui/callmessagefilter/contacts/ContactsViewActivity;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/contacts/j;->a:Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;

    invoke-virtual {v0, p2}, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->b(I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
