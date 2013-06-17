.class public Lcom/antivirus/ui/callmessagefilter/contacts/ContactsViewActivity;
.super Lcom/antivirus/ui/a;


# instance fields
.field private n:Landroid/widget/EditText;

.field private o:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/antivirus/ui/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/antivirus/ui/callmessagefilter/contacts/ContactsViewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/antivirus/ui/callmessagefilter/contacts/ContactsViewActivity;->m()V

    return-void
.end method

.method static synthetic b(Lcom/antivirus/ui/callmessagefilter/contacts/ContactsViewActivity;)Landroid/text/TextWatcher;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/contacts/ContactsViewActivity;->o:Landroid/text/TextWatcher;

    return-object v0
.end method

.method static synthetic c(Lcom/antivirus/ui/callmessagefilter/contacts/ContactsViewActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/contacts/ContactsViewActivity;->n:Landroid/widget/EditText;

    return-object v0
.end method

.method private l()V
    .locals 4

    const v0, 0x7f080012

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/callmessagefilter/contacts/ContactsViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v1, 0x7f080013

    invoke-virtual {p0, v1}, Lcom/antivirus/ui/callmessagefilter/contacts/ContactsViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Landroid/widget/Button;

    const/4 v2, 0x0

    const v3, 0x7f060044

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v2, 0x7f0200c5

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    new-instance v2, Lcom/antivirus/ui/callmessagefilter/contacts/i;

    invoke-direct {v2, p0}, Lcom/antivirus/ui/callmessagefilter/contacts/i;-><init>(Lcom/antivirus/ui/callmessagefilter/contacts/ContactsViewActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private m()V
    .locals 5

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0901f0

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/callmessagefilter/contacts/ContactsViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0200d4

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/contacts/ContactsViewActivity;->k()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/contacts/ContactsViewActivity;->f()Landroid/support/v4/app/o;

    move-result-object v0

    const v1, 0x7f080092

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;

    invoke-virtual {v0}, Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;->H()Lcom/antivirus/ui/callmessagefilter/w;

    move-result-object v1

    check-cast v1, Lcom/antivirus/ui/callmessagefilter/fragment/r;

    invoke-virtual {v1}, Lcom/antivirus/ui/callmessagefilter/fragment/r;->a()I

    move-result v1

    new-instance v4, Lcom/avg/ui/general/b/e;

    invoke-direct {v4, p0, v1, v3}, Lcom/avg/ui/general/b/e;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    new-instance v3, Lcom/antivirus/ui/callmessagefilter/contacts/j;

    invoke-direct {v3, p0, v0}, Lcom/antivirus/ui/callmessagefilter/contacts/j;-><init>(Lcom/antivirus/ui/callmessagefilter/contacts/ContactsViewActivity;Lcom/antivirus/ui/callmessagefilter/fragment/ContactsFragment;)V

    invoke-virtual {v2, v4, v1, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public k()[Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/contacts/ContactsViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/antivirus/ui/a;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030017

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/callmessagefilter/contacts/ContactsViewActivity;->setContentView(I)V

    const/4 v1, 0x1

    const v2, 0x7f020024

    const v3, 0x7f020025

    const-string v4, "Contacts"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/antivirus/ui/callmessagefilter/contacts/ContactsViewActivity;->a(ZIILjava/lang/String;Z)V

    const v0, 0x7f080091

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/callmessagefilter/contacts/ContactsViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/antivirus/ui/callmessagefilter/contacts/ContactsViewActivity;->n:Landroid/widget/EditText;

    const v0, 0x40000001

    iget-object v1, p0, Lcom/antivirus/ui/callmessagefilter/contacts/ContactsViewActivity;->n:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/contacts/ContactsViewActivity;->n:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    new-instance v0, Lcom/antivirus/ui/callmessagefilter/contacts/h;

    invoke-direct {v0, p0}, Lcom/antivirus/ui/callmessagefilter/contacts/h;-><init>(Lcom/antivirus/ui/callmessagefilter/contacts/ContactsViewActivity;)V

    iput-object v0, p0, Lcom/antivirus/ui/callmessagefilter/contacts/ContactsViewActivity;->o:Landroid/text/TextWatcher;

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/contacts/ContactsViewActivity;->n:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/antivirus/ui/callmessagefilter/contacts/ContactsViewActivity;->o:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-direct {p0}, Lcom/antivirus/ui/callmessagefilter/contacts/ContactsViewActivity;->l()V

    return-void
.end method
