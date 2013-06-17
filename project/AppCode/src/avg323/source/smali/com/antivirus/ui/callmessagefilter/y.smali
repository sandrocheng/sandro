.class public Lcom/antivirus/ui/callmessagefilter/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private a:I

.field protected b:[Landroid/widget/CheckBox;

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method varargs constructor <init>(Ljava/lang/String;III[Landroid/widget/CheckBox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/antivirus/ui/callmessagefilter/y;->c:I

    iput p4, p0, Lcom/antivirus/ui/callmessagefilter/y;->d:I

    iput p3, p0, Lcom/antivirus/ui/callmessagefilter/y;->a:I

    iput-object p5, p0, Lcom/antivirus/ui/callmessagefilter/y;->b:[Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/antivirus/ui/callmessagefilter/y;->e:Ljava/lang/String;

    return-void
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/y;->b:[Landroid/widget/CheckBox;

    array-length v0, v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/y;->b:[Landroid/widget/CheckBox;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f03001f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget v2, p0, Lcom/antivirus/ui/callmessagefilter/y;->a:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    iget v2, p0, Lcom/antivirus/ui/callmessagefilter/y;->c:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget v2, p0, Lcom/antivirus/ui/callmessagefilter/y;->d:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0800b8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const v2, 0x7f09000d

    new-instance v3, Lcom/antivirus/ui/callmessagefilter/z;

    invoke-direct {v3, p0, v0}, Lcom/antivirus/ui/callmessagefilter/z;-><init>(Lcom/antivirus/ui/callmessagefilter/y;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method protected a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected b()V
    .locals 0

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "call_message_blocker"

    iget-object v3, p0, Lcom/antivirus/ui/callmessagefilter/y;->e:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v2, v3, v4, v5}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, p0, Lcom/antivirus/ui/callmessagefilter/y;->b:[Landroid/widget/CheckBox;

    array-length v3, v2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v0, "Couldn\'t send analytics - null context"

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/antivirus/ui/callmessagefilter/y;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/antivirus/ui/callmessagefilter/y;->c()V

    :cond_1
    return-void
.end method
