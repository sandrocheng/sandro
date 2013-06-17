.class public Lcom/antivirus/ui/callmessagefilter/r;
.super Lcom/antivirus/ui/callmessagefilter/y;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/callmessagefilter/j;


# direct methods
.method public constructor <init>(Lcom/antivirus/ui/callmessagefilter/j;)V
    .locals 6

    const/4 v2, -0x1

    iput-object p1, p0, Lcom/antivirus/ui/callmessagefilter/r;->a:Lcom/antivirus/ui/callmessagefilter/j;

    const-string v1, "call_message_blocker_spam_message"

    const/4 v0, 0x0

    new-array v5, v0, [Landroid/widget/CheckBox;

    move-object v0, p0

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/antivirus/ui/callmessagefilter/y;-><init>(Ljava/lang/String;III[Landroid/widget/CheckBox;)V

    return-void
.end method

.method static synthetic a(Lcom/antivirus/ui/callmessagefilter/r;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/antivirus/ui/callmessagefilter/r;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/antivirus/c;->b(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()V
    .locals 5

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/r;->a:Lcom/antivirus/ui/callmessagefilter/j;

    iget-object v0, v0, Lcom/antivirus/ui/callmessagefilter/j;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03001f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0200d2

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0901e8

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0901fa

    invoke-static {v0, v4}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0901f8

    invoke-static {v0, v4}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0800b8

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const v2, 0x7f0901fd

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setText(I)V

    const v2, 0x7f0901a0

    new-instance v3, Lcom/antivirus/ui/callmessagefilter/s;

    invoke-direct {v3, p0, v0}, Lcom/antivirus/ui/callmessagefilter/s;-><init>(Lcom/antivirus/ui/callmessagefilter/r;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0901a1

    new-instance v3, Lcom/antivirus/ui/callmessagefilter/t;

    invoke-direct {v3, p0, v0}, Lcom/antivirus/ui/callmessagefilter/t;-><init>(Lcom/antivirus/ui/callmessagefilter/r;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/r;->a:Lcom/antivirus/ui/callmessagefilter/j;

    iget-object v0, v0, Lcom/antivirus/ui/callmessagefilter/j;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/antivirus/c;->t()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/antivirus/ui/callmessagefilter/r;->a:Lcom/antivirus/ui/callmessagefilter/j;

    iget-object v2, v2, Lcom/antivirus/ui/callmessagefilter/j;->a:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/r;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/antivirus/ui/callmessagefilter/r;->c()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/antivirus/ui/callmessagefilter/r;->a:Lcom/antivirus/ui/callmessagefilter/j;

    iget-object v2, v2, Lcom/antivirus/ui/callmessagefilter/j;->b:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/antivirus/ui/callmessagefilter/r;->a:Lcom/antivirus/ui/callmessagefilter/j;

    iget-object v2, v2, Lcom/antivirus/ui/callmessagefilter/j;->b:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/antivirus/c;->t()I

    move-result v3

    if-ne v3, v0, :cond_2

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method
