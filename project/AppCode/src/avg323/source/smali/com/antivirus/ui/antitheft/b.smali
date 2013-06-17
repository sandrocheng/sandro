.class public Lcom/antivirus/ui/antitheft/b;
.super Lcom/antivirus/ui/a/a/b;

# interfaces
.implements Lcom/antivirus/ui/antitheft/x;


# instance fields
.field private Y:Lcom/antivirus/ui/antitheft/h;

.field private Z:Landroid/app/AlertDialog;

.field private aa:Ljava/lang/String;

.field private ab:Landroid/app/ProgressDialog;

.field private ac:Lcom/antivirus/ui/antitheft/r;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/antivirus/ui/a/a/b;-><init>()V

    return-void
.end method

.method private G()Ljava/util/ArrayList;
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/b;->ad:Lcom/avg/ui/general/a/a;

    invoke-static {v0}, Lcom/antivirus/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    new-instance v2, Lcom/avg/ui/general/b/c;

    iget-object v3, p0, Lcom/antivirus/ui/antitheft/b;->ad:Lcom/avg/ui/general/a/a;

    const v4, 0x7f0901d1

    invoke-static {v3, v4}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f020047

    invoke-direct {v2, v3, v0, v4}, Lcom/avg/ui/general/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/avg/ui/general/b/c;

    iget-object v2, p0, Lcom/antivirus/ui/antitheft/b;->ad:Lcom/avg/ui/general/a/a;

    const v3, 0x7f0901c3

    invoke-static {v2, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/antivirus/ui/antitheft/b;->ad:Lcom/avg/ui/general/a/a;

    const v4, 0x7f0901c4

    invoke-static {v3, v4}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f020046

    invoke-direct {v0, v2, v3, v4}, Lcom/avg/ui/general/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method private H()V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/b;->Y:Lcom/antivirus/ui/antitheft/h;

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/antitheft/b;->a(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/antivirus/ui/antitheft/b;->a()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/antivirus/ui/antitheft/c;

    invoke-direct {v1, p0}, Lcom/antivirus/ui/antitheft/c;-><init>(Lcom/antivirus/ui/antitheft/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private I()V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/b;->ad:Lcom/avg/ui/general/a/a;

    iget-object v1, p0, Lcom/antivirus/ui/antitheft/b;->i:Lcom/antivirus/core/b;

    invoke-static {v0, v1}, Lcom/antivirus/antitheft/w;->b(Landroid/content/Context;Lcom/antivirus/core/b;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/b;->ad:Lcom/avg/ui/general/a/a;

    iget-object v1, p0, Lcom/antivirus/ui/antitheft/b;->ad:Lcom/avg/ui/general/a/a;

    const v2, 0x7f090155

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/antivirus/c;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v4}, Lcom/antivirus/c;->c(Z)V

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/b;->ad:Lcom/avg/ui/general/a/a;

    const-string v1, "anti_theft"

    const-string v2, "device_locator"

    const-string v3, "off"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_1
    invoke-static {}, Lcom/antivirus/c;->n()V

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/b;->Y:Lcom/antivirus/ui/antitheft/h;

    invoke-virtual {v0}, Lcom/antivirus/ui/antitheft/h;->notifyDataSetChanged()V

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lcom/antivirus/c;->c(Z)V

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/b;->ad:Lcom/avg/ui/general/a/a;

    const-string v1, "anti_theft"

    const-string v2, "device_locator"

    const-string v3, "on"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1
.end method

.method private J()V
    .locals 4

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/b;->ad:Lcom/avg/ui/general/a/a;

    invoke-static {v0}, Lcom/avg/toolkit/b/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/b;->ad:Lcom/avg/ui/general/a/a;

    const v1, 0x7f0901d3

    invoke-static {v0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/ui/antitheft/b;->ad:Lcom/avg/ui/general/a/a;

    const v2, 0x7f090005

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/antivirus/ui/antitheft/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/b;->ad:Lcom/avg/ui/general/a/a;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/b;->ad:Lcom/avg/ui/general/a/a;

    const v2, 0x7f090104

    invoke-static {v0, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0200d8

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/b;->ad:Lcom/avg/ui/general/a/a;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030022

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f080091

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/antivirus/ui/antitheft/b;->ac:Lcom/antivirus/ui/antitheft/r;

    invoke-virtual {v2}, Lcom/antivirus/ui/antitheft/r;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v2, p0, Lcom/antivirus/ui/antitheft/b;->ad:Lcom/avg/ui/general/a/a;

    const v3, 0x7f09000d

    invoke-static {v2, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/antivirus/ui/antitheft/e;

    invoke-direct {v3, p0, v0}, Lcom/antivirus/ui/antitheft/e;-><init>(Lcom/antivirus/ui/antitheft/b;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/b;->ad:Lcom/avg/ui/general/a/a;

    const v2, 0x7f09000e

    invoke-static {v0, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/antivirus/ui/antitheft/f;

    invoke-direct {v2, p0}, Lcom/antivirus/ui/antitheft/f;-><init>(Lcom/antivirus/ui/antitheft/b;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/antitheft/b;->Z:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/b;->Z:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/b;->Z:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/antivirus/ui/antitheft/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/antivirus/ui/antitheft/b;->J()V

    return-void
.end method

.method static synthetic a(Lcom/antivirus/ui/antitheft/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/antivirus/ui/antitheft/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/antivirus/ui/antitheft/b;->ad:Lcom/avg/ui/general/a/a;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0200d7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/antivirus/ui/antitheft/b;->ad:Lcom/avg/ui/general/a/a;

    const v2, 0x7f09000d

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/antivirus/ui/antitheft/g;

    invoke-direct {v2, p0}, Lcom/antivirus/ui/antitheft/g;-><init>(Lcom/antivirus/ui/antitheft/b;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/antitheft/b;->Z:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/b;->Z:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/b;->Z:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic b(Lcom/antivirus/ui/antitheft/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/antivirus/ui/antitheft/b;->I()V

    return-void
.end method

.method static synthetic c(Lcom/antivirus/ui/antitheft/b;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/b;->ad:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic d(Lcom/antivirus/ui/antitheft/b;)Lcom/antivirus/core/b;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/b;->i:Lcom/antivirus/core/b;

    return-object v0
.end method

.method static synthetic e(Lcom/antivirus/ui/antitheft/b;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/b;->ad:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic f(Lcom/antivirus/ui/antitheft/b;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/b;->ad:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic g(Lcom/antivirus/ui/antitheft/b;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/b;->ad:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic h(Lcom/antivirus/ui/antitheft/b;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/b;->ad:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic i(Lcom/antivirus/ui/antitheft/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/b;->aa:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/antivirus/ui/antitheft/b;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/b;->ad:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic k(Lcom/antivirus/ui/antitheft/b;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/b;->ad:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic l(Lcom/antivirus/ui/antitheft/b;)Lcom/antivirus/ui/antitheft/r;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/b;->ac:Lcom/antivirus/ui/antitheft/r;

    return-object v0
.end method

.method static synthetic m(Lcom/antivirus/ui/antitheft/b;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/b;->ad:Lcom/avg/ui/general/a/a;

    return-object v0
.end method

.method static synthetic n(Lcom/antivirus/ui/antitheft/b;)Lcom/avg/ui/general/a/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/b;->ad:Lcom/avg/ui/general/a/a;

    return-object v0
.end method


# virtual methods
.method protected F()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/b;->ad:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/antivirus/ui/antitheft/b;->ad:Lcom/avg/ui/general/a/a;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/antivirus/ui/antitheft/b;->ad:Lcom/avg/ui/general/a/a;

    const v2, 0x7f0901c3

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0200e0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/antivirus/ui/antitheft/b;->ad:Lcom/avg/ui/general/a/a;

    invoke-virtual {v1}, Lcom/avg/ui/general/a/a;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030005

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/antivirus/ui/antitheft/b;->ad:Lcom/avg/ui/general/a/a;

    invoke-static {v2}, Lcom/avg/ui/general/c/i;->a(Landroid/content/Context;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x14

    div-int/lit16 v2, v2, 0xa0

    iget-object v3, p0, Lcom/antivirus/ui/antitheft/b;->ad:Lcom/avg/ui/general/a/a;

    invoke-virtual {v3}, Lcom/avg/ui/general/a/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/antivirus/ui/antitheft/y;->a(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v1, p0, Lcom/antivirus/ui/antitheft/b;->ad:Lcom/avg/ui/general/a/a;

    const v2, 0x7f09000d

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/antivirus/ui/antitheft/d;

    invoke-direct {v2, p0}, Lcom/antivirus/ui/antitheft/d;-><init>(Lcom/antivirus/ui/antitheft/b;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_0
    iget-object v0, p0, Lcom/antivirus/ui/antitheft/b;->ad:Lcom/avg/ui/general/a/a;

    const-string v1, "anti_theft"

    const-string v2, "how_to"

    invoke-static {v0, v1, v2, v5, v4}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/antivirus/ui/antitheft/b;->ad:Lcom/avg/ui/general/a/a;

    const-class v2, Lcom/antivirus/ui/antitheft/AntiTheftSMSCommandsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/antitheft/b;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 4

    const v3, 0x7f0901d8

    const/16 v2, 0x11

    const/4 v1, 0x0

    instance-of v0, p1, Landroid/view/Menu;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/view/Menu;

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/b;->ad:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0, v3}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    instance-of v0, p1, Lcom/avg/ui/general/c/f;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/avg/ui/general/c/f;

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/b;->ad:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0, v3}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v2, v1, v0}, Lcom/avg/ui/general/c/f;->a(IIILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/antivirus/ui/a/a/b;->a(Landroid/os/Bundle;)V

    new-instance v0, Lcom/antivirus/ui/antitheft/r;

    iget-object v1, p0, Lcom/antivirus/ui/antitheft/b;->ad:Lcom/avg/ui/general/a/a;

    invoke-direct {v0, v1, p0}, Lcom/antivirus/ui/antitheft/r;-><init>(Lcom/avg/ui/general/a/a;Lcom/antivirus/ui/antitheft/x;)V

    iput-object v0, p0, Lcom/antivirus/ui/antitheft/b;->ac:Lcom/antivirus/ui/antitheft/r;

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/b;->ad:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/antitheft/b;->d(Z)V

    :cond_0
    new-instance v0, Lcom/antivirus/ui/antitheft/h;

    iget-object v1, p0, Lcom/antivirus/ui/antitheft/b;->ad:Lcom/avg/ui/general/a/a;

    invoke-direct {p0}, Lcom/antivirus/ui/antitheft/b;->G()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/antivirus/ui/antitheft/h;-><init>(Lcom/antivirus/ui/antitheft/b;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/antivirus/ui/antitheft/b;->Y:Lcom/antivirus/ui/antitheft/h;

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/b;->ad:Lcom/avg/ui/general/a/a;

    invoke-static {v0}, Lcom/antivirus/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/antitheft/b;->aa:Ljava/lang/String;

    return-void
.end method

.method public a(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/b;->ad:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    invoke-virtual {p0, p1}, Lcom/antivirus/ui/antitheft/b;->a(Ljava/lang/Object;)Ljava/util/ArrayList;

    :cond_0
    invoke-super {p0, p1}, Lcom/antivirus/ui/a/a/b;->a(Landroid/view/Menu;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/b;->Y:Lcom/antivirus/ui/antitheft/h;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/b;->Y:Lcom/antivirus/ui/antitheft/h;

    invoke-direct {p0}, Lcom/antivirus/ui/antitheft/b;->G()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/antitheft/h;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/b;->Y:Lcom/antivirus/ui/antitheft/h;

    invoke-virtual {v0}, Lcom/antivirus/ui/antitheft/h;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public a_(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/antivirus/ui/antitheft/b;->e(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public b(I)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/antivirus/ui/antitheft/b;->ac:Lcom/antivirus/ui/antitheft/r;

    invoke-virtual {v0}, Lcom/antivirus/ui/antitheft/r;->a()V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method public b(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/antitheft/b;->b(I)Z

    move-result v0

    return v0
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/antivirus/ui/a/a/b;->d(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/antivirus/ui/antitheft/b;->H()V

    return-void
.end method

.method public e(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/b;->ad:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/b;->ad:Lcom/avg/ui/general/a/a;

    check-cast v0, Lcom/antivirus/ui/tablet/DualPaneActivity;

    invoke-virtual {v0}, Lcom/antivirus/ui/tablet/DualPaneActivity;->m()V

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/b;->ad:Lcom/avg/ui/general/a/a;

    new-instance v1, Lcom/antivirus/ui/antitheft/z;

    invoke-direct {v1}, Lcom/antivirus/ui/antitheft/z;-><init>()V

    const v2, 0x7f0800bc

    const-string v3, "AntitheftRegisterFragment"

    invoke-virtual {v0, v1, v2, v3}, Lcom/avg/ui/general/a/a;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/antivirus/ui/antitheft/b;->h()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->finish()V

    goto :goto_0
.end method

.method public e(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/b;->ad:Lcom/avg/ui/general/a/a;

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->closeOptionsMenu()V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/antitheft/b;->b(I)Z

    move-result v0

    return v0
.end method

.method public t()V
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/b;->Z:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/b;->Z:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/antivirus/ui/antitheft/b;->ab:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/ui/antitheft/b;->ab:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/antivirus/ui/antitheft/b;->ab:Landroid/app/ProgressDialog;

    :cond_1
    invoke-super {p0}, Lcom/antivirus/ui/a/a/b;->t()V

    return-void
.end method
