.class public Lcom/antivirus/ui/scan/results/d;
.super Landroid/widget/BaseExpandableListAdapter;


# instance fields
.field a:Lcom/antivirus/core/b;

.field private b:I

.field private c:I

.field private d:Lcom/antivirus/ui/scan/results/i;

.field private e:Ljava/lang/Object;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Lcom/antivirus/ui/scan/results/m;

.field private k:Landroid/content/Context;

.field private l:Ljava/util/ArrayList;

.field private m:Ljava/util/ArrayList;

.field private n:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/antivirus/ui/scan/results/m;Lcom/antivirus/core/b;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/antivirus/ui/scan/results/d;->e:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/antivirus/ui/scan/results/d;->g:Z

    iput-boolean v1, p0, Lcom/antivirus/ui/scan/results/d;->h:Z

    iput-boolean v1, p0, Lcom/antivirus/ui/scan/results/d;->i:Z

    iput-object p1, p0, Lcom/antivirus/ui/scan/results/d;->j:Lcom/antivirus/ui/scan/results/m;

    iput-object p2, p0, Lcom/antivirus/ui/scan/results/d;->a:Lcom/antivirus/core/b;

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/d;->j:Lcom/antivirus/ui/scan/results/m;

    invoke-virtual {v0}, Lcom/antivirus/ui/scan/results/m;->h()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/antivirus/ui/scan/results/d;->k:Landroid/content/Context;

    iput-object p3, p0, Lcom/antivirus/ui/scan/results/d;->l:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/antivirus/ui/scan/results/d;->m:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/antivirus/ui/scan/results/d;->f:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/antivirus/ui/scan/results/d;->n:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/antivirus/ui/scan/results/d;)I
    .locals 1

    iget v0, p0, Lcom/antivirus/ui/scan/results/d;->b:I

    return v0
.end method

.method static synthetic a(Lcom/antivirus/ui/scan/results/d;I)I
    .locals 0

    iput p1, p0, Lcom/antivirus/ui/scan/results/d;->b:I

    return p1
.end method

.method static synthetic a(Lcom/antivirus/ui/scan/results/d;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/scan/results/d;->e:Ljava/lang/Object;

    return-object p1
.end method

.method private a(Landroid/content/Context;Lcom/antivirus/ui/scan/results/s;)V
    .locals 5

    const/high16 v4, 0x1000

    sget-object v0, Lcom/antivirus/ui/scan/results/h;->c:[I

    invoke-virtual {p2}, Lcom/antivirus/ui/scan/results/s;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/avg/toolkit/f/a;->a()V

    :goto_0
    iget-object v0, p0, Lcom/antivirus/ui/scan/results/d;->j:Lcom/antivirus/ui/scan/results/m;

    invoke-virtual {v0}, Lcom/antivirus/ui/scan/results/m;->h()Landroid/support/v4/app/i;

    move-result-object v0

    const/16 v1, 0x61a8

    const/16 v2, 0x8

    invoke-static {}, Lcom/antivirus/widget/protection/ProtectionWidgetPlugin;->k()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/antivirus/AVService;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    return-void

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.DevelopmentSettings"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SECURITY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/antivirus/ui/scan/results/d;->k:Landroid/content/Context;

    const v1, 0x7f0900e2

    invoke-static {v0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/antivirus/ui/scan/results/d;Landroid/content/Context;Lcom/antivirus/ui/scan/results/s;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/antivirus/ui/scan/results/d;->a(Landroid/content/Context;Lcom/antivirus/ui/scan/results/s;)V

    return-void
.end method

.method static synthetic a(Lcom/antivirus/ui/scan/results/d;Lcom/antivirus/ui/scan/results/s;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/antivirus/ui/scan/results/d;->a(Lcom/antivirus/ui/scan/results/s;)V

    return-void
.end method

.method static synthetic a(Lcom/antivirus/ui/scan/results/d;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/antivirus/ui/scan/results/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/antivirus/ui/scan/results/s;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/d;->a:Lcom/antivirus/core/b;

    invoke-virtual {v0}, Lcom/antivirus/core/b;->j()I

    move-result v0

    sget-object v1, Lcom/antivirus/ui/scan/results/h;->c:[I

    invoke-virtual {p1}, Lcom/antivirus/ui/scan/results/s;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    invoke-static {}, Lcom/avg/toolkit/f/a;->a()V

    :goto_0
    iget-object v0, p0, Lcom/antivirus/ui/scan/results/d;->j:Lcom/antivirus/ui/scan/results/m;

    invoke-virtual {v0}, Lcom/antivirus/ui/scan/results/m;->h()Landroid/support/v4/app/i;

    move-result-object v0

    const/16 v1, 0x61a8

    const/16 v2, 0x8

    invoke-static {}, Lcom/antivirus/widget/protection/ProtectionWidgetPlugin;->k()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/antivirus/AVService;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/antivirus/ui/scan/results/d;->a:Lcom/antivirus/core/b;

    or-int/lit8 v0, v0, 0x4

    invoke-virtual {v1, v0}, Lcom/antivirus/core/b;->a(I)V

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/d;->j:Lcom/antivirus/ui/scan/results/m;

    iget-object v0, v0, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    iget-object v0, v0, Lcom/antivirus/core/scanners/h;->d:Lcom/antivirus/core/scanners/ag;

    invoke-virtual {v0, v3}, Lcom/antivirus/core/scanners/ag;->c(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/antivirus/ui/scan/results/d;->a:Lcom/antivirus/core/b;

    or-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v0}, Lcom/antivirus/core/b;->a(I)V

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/d;->j:Lcom/antivirus/ui/scan/results/m;

    iget-object v0, v0, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    iget-object v0, v0, Lcom/antivirus/core/scanners/h;->d:Lcom/antivirus/core/scanners/ag;

    invoke-virtual {v0, v3}, Lcom/antivirus/core/scanners/ag;->b(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/antivirus/ui/scan/results/d;->a:Lcom/antivirus/core/b;

    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/antivirus/core/b;->a(I)V

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/d;->j:Lcom/antivirus/ui/scan/results/m;

    iget-object v0, v0, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    iget-object v0, v0, Lcom/antivirus/core/scanners/h;->d:Lcom/antivirus/core/scanners/ag;

    invoke-virtual {v0, v3}, Lcom/antivirus/core/scanners/ag;->a(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x4

    new-instance v0, Lcom/antivirus/core/scanners/ScannerFilesResult;

    invoke-direct {v0}, Lcom/antivirus/core/scanners/ScannerFilesResult;-><init>()V

    iget-object v1, v0, Lcom/antivirus/core/scanners/ScannerFilesResult;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ScannerClient"

    sget-object v3, Lcom/antivirus/core/scanners/c;->a:Lcom/antivirus/core/scanners/c;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v2, "__SAD"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "ScannerResult"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/d;->j:Lcom/antivirus/ui/scan/results/m;

    invoke-virtual {v0}, Lcom/antivirus/ui/scan/results/m;->h()Landroid/support/v4/app/i;

    move-result-object v0

    const/16 v2, 0x7d0

    invoke-static {v0, v2, v4, v1}, Lcom/antivirus/AVService;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/d;->j:Lcom/antivirus/ui/scan/results/m;

    iget-object v0, v0, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    iget-object v0, v0, Lcom/antivirus/core/scanners/h;->f:Lcom/antivirus/core/scanners/ScannerFilesResult;

    invoke-virtual {v0, p1}, Lcom/antivirus/core/scanners/ScannerFilesResult;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/d;->j:Lcom/antivirus/ui/scan/results/m;

    invoke-virtual {v0}, Lcom/antivirus/ui/scan/results/m;->h()Landroid/support/v4/app/i;

    move-result-object v0

    const/16 v1, 0x61a8

    const/16 v2, 0x8

    invoke-static {}, Lcom/antivirus/widget/protection/ProtectionWidgetPlugin;->k()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/antivirus/AVService;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/antivirus/ui/scan/results/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/antivirus/ui/scan/results/d;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/antivirus/ui/scan/results/d;)I
    .locals 1

    iget v0, p0, Lcom/antivirus/ui/scan/results/d;->c:I

    return v0
.end method

.method static synthetic b(Lcom/antivirus/ui/scan/results/d;I)I
    .locals 0

    iput p1, p0, Lcom/antivirus/ui/scan/results/d;->c:I

    return p1
.end method

.method static synthetic b(Lcom/antivirus/ui/scan/results/d;Lcom/antivirus/ui/scan/results/s;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/antivirus/ui/scan/results/d;->b(Lcom/antivirus/ui/scan/results/s;)V

    return-void
.end method

.method static synthetic b(Lcom/antivirus/ui/scan/results/d;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/antivirus/ui/scan/results/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/antivirus/ui/scan/results/s;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/d;->a:Lcom/antivirus/core/b;

    invoke-virtual {v0}, Lcom/antivirus/core/b;->j()I

    move-result v0

    sget-object v1, Lcom/antivirus/ui/scan/results/h;->c:[I

    invoke-virtual {p1}, Lcom/antivirus/ui/scan/results/s;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    invoke-static {}, Lcom/avg/toolkit/f/a;->a()V

    :goto_0
    iget-object v0, p0, Lcom/antivirus/ui/scan/results/d;->j:Lcom/antivirus/ui/scan/results/m;

    invoke-virtual {v0}, Lcom/antivirus/ui/scan/results/m;->h()Landroid/support/v4/app/i;

    move-result-object v0

    const/16 v1, 0x61a8

    const/16 v2, 0x8

    invoke-static {}, Lcom/antivirus/widget/protection/ProtectionWidgetPlugin;->k()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/antivirus/AVService;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/antivirus/ui/scan/results/d;->a:Lcom/antivirus/core/b;

    and-int/lit8 v0, v0, -0x5

    invoke-virtual {v1, v0}, Lcom/antivirus/core/b;->a(I)V

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/d;->j:Lcom/antivirus/ui/scan/results/m;

    iget-object v0, v0, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    iget-object v0, v0, Lcom/antivirus/core/scanners/h;->d:Lcom/antivirus/core/scanners/ag;

    invoke-virtual {v0, v3}, Lcom/antivirus/core/scanners/ag;->c(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/antivirus/ui/scan/results/d;->a:Lcom/antivirus/core/b;

    and-int/lit8 v0, v0, -0x3

    invoke-virtual {v1, v0}, Lcom/antivirus/core/b;->a(I)V

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/d;->j:Lcom/antivirus/ui/scan/results/m;

    iget-object v0, v0, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    iget-object v0, v0, Lcom/antivirus/core/scanners/h;->d:Lcom/antivirus/core/scanners/ag;

    invoke-virtual {v0, v3}, Lcom/antivirus/core/scanners/ag;->b(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/antivirus/ui/scan/results/d;->a:Lcom/antivirus/core/b;

    and-int/lit8 v0, v0, -0x2

    invoke-virtual {v1, v0}, Lcom/antivirus/core/b;->a(I)V

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/d;->j:Lcom/antivirus/ui/scan/results/m;

    iget-object v0, v0, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    iget-object v0, v0, Lcom/antivirus/core/scanners/h;->d:Lcom/antivirus/core/scanners/ag;

    invoke-virtual {v0, v3}, Lcom/antivirus/core/scanners/ag;->a(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/antivirus/core/scanners/ScannerPackagesResult;

    invoke-direct {v0}, Lcom/antivirus/core/scanners/ScannerPackagesResult;-><init>()V

    iget-object v1, v0, Lcom/antivirus/core/scanners/ScannerPackagesResult;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ScannerClient"

    sget-object v3, Lcom/antivirus/core/scanners/c;->a:Lcom/antivirus/core/scanners/c;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v2, "__SAD"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "ScannerResult"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/d;->j:Lcom/antivirus/ui/scan/results/m;

    invoke-virtual {v0}, Lcom/antivirus/ui/scan/results/m;->h()Landroid/support/v4/app/i;

    move-result-object v0

    const/16 v2, 0x7d0

    const/4 v3, 0x4

    invoke-static {v0, v2, v3, v1}, Lcom/antivirus/AVService;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/d;->j:Lcom/antivirus/ui/scan/results/m;

    invoke-virtual {v0}, Lcom/antivirus/ui/scan/results/m;->h()Landroid/support/v4/app/i;

    move-result-object v0

    const/16 v1, 0x61a8

    const/16 v2, 0x8

    invoke-static {}, Lcom/antivirus/widget/protection/ProtectionWidgetPlugin;->k()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/antivirus/AVService;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic c(Lcom/antivirus/ui/scan/results/d;)Lcom/antivirus/ui/scan/results/m;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/d;->j:Lcom/antivirus/ui/scan/results/m;

    return-object v0
.end method

.method static synthetic d(Lcom/antivirus/ui/scan/results/d;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/d;->n:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e(Lcom/antivirus/ui/scan/results/d;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/d;->k:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/antivirus/ui/scan/results/i;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/d;->d:Lcom/antivirus/ui/scan/results/i;

    return-object v0
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/d;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/d;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/d;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/d;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/antivirus/ui/scan/results/d;->b(I)V

    :cond_1
    return-void
.end method

.method public a(II)V
    .locals 3

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/d;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index problem, Size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/antivirus/ui/scan/results/d;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/d;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/antivirus/ui/scan/results/d;->b(I)V

    goto :goto_0
.end method

.method public a(Landroid/widget/ExpandableListView;)V
    .locals 5

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/antivirus/ui/scan/results/i;->values()[Lcom/antivirus/ui/scan/results/i;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/antivirus/ui/scan/results/i;->ordinal()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/antivirus/ui/scan/results/i;->ordinal()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a(Lcom/antivirus/ui/scan/results/i;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/scan/results/d;->d:Lcom/antivirus/ui/scan/results/i;

    return-void
.end method

.method public a(Lcom/antivirus/ui/scan/results/k;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/d;->l:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/antivirus/ui/scan/results/k;->e()Lcom/antivirus/ui/scan/results/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/d;->l:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/antivirus/ui/scan/results/k;->e()Lcom/antivirus/ui/scan/results/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/antivirus/ui/scan/results/d;->l:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/antivirus/ui/scan/results/k;->e()Lcom/antivirus/ui/scan/results/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/d;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v1, 0x1

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/d;->m:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/d;->n:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/antivirus/ui/scan/results/d;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/d;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    instance-of v0, p1, Lcom/antivirus/ui/scan/results/a;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/antivirus/ui/scan/results/k;->d()Z

    move-result v0

    if-nez v0, :cond_2

    iput-boolean v3, p0, Lcom/antivirus/ui/scan/results/d;->g:Z

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/antivirus/ui/scan/results/d;->notifyDataSetChanged()V

    return-void

    :cond_3
    instance-of v0, p1, Lcom/antivirus/ui/scan/results/r;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/antivirus/ui/scan/results/k;->d()Z

    move-result v0

    if-nez v0, :cond_2

    iput-boolean v3, p0, Lcom/antivirus/ui/scan/results/d;->h:Z

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lcom/antivirus/ui/scan/results/b;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/antivirus/ui/scan/results/k;->d()Z

    move-result v0

    if-nez v0, :cond_2

    iput-boolean v3, p0, Lcom/antivirus/ui/scan/results/d;->i:Z

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/antivirus/ui/scan/results/d;->f:Z

    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(Lcom/antivirus/ui/scan/results/i;)Lcom/antivirus/ui/scan/results/k;
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x1

    sget-object v0, Lcom/antivirus/ui/scan/results/h;->b:[I

    invoke-virtual {p1}, Lcom/antivirus/ui/scan/results/i;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    move-object v0, v5

    invoke-static {}, Lcom/avg/toolkit/f/a;->a()V

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/antivirus/ui/scan/results/d;->k:Landroid/content/Context;

    const v1, 0x7f0900f4

    invoke-static {v0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/antivirus/ui/scan/results/a;

    iget-object v2, p0, Lcom/antivirus/ui/scan/results/d;->k:Landroid/content/Context;

    const-string v3, ""

    invoke-direct {v0, v2, v1, v3}, Lcom/antivirus/ui/scan/results/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/antivirus/ui/scan/results/k;->a(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/antivirus/ui/scan/results/d;->k:Landroid/content/Context;

    const v1, 0x7f0900f5

    invoke-static {v0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/antivirus/ui/scan/results/r;

    iget-object v2, p0, Lcom/antivirus/ui/scan/results/d;->k:Landroid/content/Context;

    sget-object v3, Lcom/antivirus/ui/scan/results/s;->a:Lcom/antivirus/ui/scan/results/s;

    invoke-direct {v0, v2, v1, v3}, Lcom/antivirus/ui/scan/results/r;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/antivirus/ui/scan/results/s;)V

    invoke-virtual {v0, v6}, Lcom/antivirus/ui/scan/results/k;->a(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/antivirus/ui/scan/results/d;->k:Landroid/content/Context;

    const v1, 0x7f0900de

    invoke-static {v0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/antivirus/ui/scan/results/b;

    iget-object v1, p0, Lcom/antivirus/ui/scan/results/d;->k:Landroid/content/Context;

    sget-object v3, Lcom/antivirus/ui/scan/results/c;->a:Lcom/antivirus/ui/scan/results/c;

    const-string v4, ""

    invoke-direct/range {v0 .. v5}, Lcom/antivirus/ui/scan/results/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/antivirus/ui/scan/results/c;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v6}, Lcom/antivirus/ui/scan/results/k;->a(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/d;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public b(I)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/d;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/antivirus/ui/scan/results/i;->values()[Lcom/antivirus/ui/scan/results/i;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/antivirus/ui/scan/results/d;->c(Lcom/antivirus/ui/scan/results/i;)Lcom/antivirus/ui/scan/results/k;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    instance-of v0, v1, Lcom/antivirus/ui/scan/results/a;

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lcom/antivirus/ui/scan/results/d;->g:Z

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/antivirus/ui/scan/results/d;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/d;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p0}, Lcom/antivirus/ui/scan/results/d;->notifyDataSetChanged()V

    goto :goto_0

    :cond_3
    instance-of v0, v1, Lcom/antivirus/ui/scan/results/r;

    if-eqz v0, :cond_4

    iput-boolean v2, p0, Lcom/antivirus/ui/scan/results/d;->h:Z

    goto :goto_1

    :cond_4
    instance-of v0, v1, Lcom/antivirus/ui/scan/results/b;

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/antivirus/ui/scan/results/d;->i:Z

    goto :goto_1
.end method

.method public c(Lcom/antivirus/ui/scan/results/i;)Lcom/antivirus/ui/scan/results/k;
    .locals 4

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/d;->k:Landroid/content/Context;

    const v1, 0x7f090186

    invoke-static {v0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/antivirus/ui/scan/results/h;->b:[I

    invoke-virtual {p1}, Lcom/antivirus/ui/scan/results/i;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/avg/toolkit/f/a;->a()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/antivirus/ui/scan/results/a;

    iget-object v2, p0, Lcom/antivirus/ui/scan/results/d;->k:Landroid/content/Context;

    const-string v3, ""

    invoke-direct {v0, v2, v1, v3}, Lcom/antivirus/ui/scan/results/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/antivirus/ui/scan/results/k;->a(Z)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/antivirus/ui/scan/results/r;

    iget-object v2, p0, Lcom/antivirus/ui/scan/results/d;->k:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/antivirus/ui/scan/results/r;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    new-instance v0, Lcom/antivirus/ui/scan/results/b;

    iget-object v2, p0, Lcom/antivirus/ui/scan/results/d;->k:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/antivirus/ui/scan/results/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public c()V
    .locals 2

    iget v0, p0, Lcom/antivirus/ui/scan/results/d;->b:I

    iget v1, p0, Lcom/antivirus/ui/scan/results/d;->c:I

    invoke-virtual {p0, v0, v1}, Lcom/antivirus/ui/scan/results/d;->a(II)V

    return-void
.end method

.method public d()V
    .locals 4

    invoke-static {}, Lcom/antivirus/ui/scan/results/i;->values()[Lcom/antivirus/ui/scan/results/i;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/antivirus/ui/scan/results/i;->ordinal()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/antivirus/ui/scan/results/d;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/antivirus/ui/scan/results/d;->f:Z

    return v0
.end method

.method public f()V
    .locals 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/d;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/antivirus/core/b/a/b;->a(Landroid/content/Context;)Lcom/antivirus/core/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/antivirus/core/b/a/b;->c()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/ui/scan/results/d;->j:Lcom/antivirus/ui/scan/results/m;

    iget-object v1, v1, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    iget-object v1, v1, Lcom/antivirus/core/scanners/h;->g:Lcom/antivirus/core/scanners/ScannerSmsResult;

    iget-object v1, v1, Lcom/antivirus/core/scanners/ScannerSmsResult;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/d;->m:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/antivirus/ui/scan/results/d;->m:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/scan/results/b;

    iget-object v1, p0, Lcom/antivirus/ui/scan/results/d;->j:Lcom/antivirus/ui/scan/results/m;

    iget-object v1, v1, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    iget-object v1, v1, Lcom/antivirus/core/scanners/h;->g:Lcom/antivirus/core/scanners/ScannerSmsResult;

    iget-object v1, v1, Lcom/antivirus/core/scanners/ScannerSmsResult;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/antivirus/ui/scan/results/d;->j:Lcom/antivirus/ui/scan/results/m;

    iget-object v1, v1, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    iget-object v1, v1, Lcom/antivirus/core/scanners/h;->g:Lcom/antivirus/core/scanners/ScannerSmsResult;

    iget-object v1, v1, Lcom/antivirus/core/scanners/ScannerSmsResult;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v2, v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/antivirus/ui/scan/results/d;->k:Landroid/content/Context;

    const v3, 0x7f0900ee

    invoke-static {v2, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/antivirus/ui/scan/results/b;->b(Ljava/lang/String;)V

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/antivirus/ui/scan/results/d;->notifyDataSetChanged()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/antivirus/core/scanners/ad;->a(Z)Z

    return-void

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/antivirus/ui/scan/results/d;->k:Landroid/content/Context;

    const v3, 0x7f0900ef

    invoke-static {v2, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/antivirus/ui/scan/results/d;->j:Lcom/antivirus/ui/scan/results/m;

    iget-object v1, v1, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    iget-object v1, v1, Lcom/antivirus/core/scanners/h;->g:Lcom/antivirus/core/scanners/ScannerSmsResult;

    iput-boolean v2, v1, Lcom/antivirus/core/scanners/ScannerSmsResult;->a:Z

    invoke-virtual {v0, v2}, Lcom/antivirus/ui/scan/results/b;->a(Z)V

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/d;->j:Lcom/antivirus/ui/scan/results/m;

    iget-object v0, v0, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    iget-object v0, v0, Lcom/antivirus/core/scanners/h;->f:Lcom/antivirus/core/scanners/ScannerFilesResult;

    iget-boolean v0, v0, Lcom/antivirus/core/scanners/ScannerFilesResult;->a:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/antivirus/ui/scan/results/d;->i:Z

    goto :goto_1
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/d;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2

    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13

    invoke-virtual {p0, p1, p2}, Lcom/antivirus/ui/scan/results/d;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/scan/results/k;

    iget-object v1, p0, Lcom/antivirus/ui/scan/results/d;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iget-object v1, p0, Lcom/antivirus/ui/scan/results/d;->k:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f03003b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    const v1, 0x7f08011a

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/16 v1, 0x8

    invoke-virtual {v10, v1}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f080119

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f08011c

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f08011d

    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f08011b

    invoke-virtual {v9, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f08011e

    invoke-virtual {v9, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    const v6, 0x7f08011f

    invoke-virtual {v9, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    const v7, 0x7f080120

    invoke-virtual {v9, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/antivirus/ui/scan/results/k;->f()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/antivirus/ui/scan/results/k;->d()Z

    move-result v8

    if-eqz v8, :cond_9

    const/16 v2, 0x8

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {v6, v2}, Landroid/widget/Button;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {v7, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v2, p0, Lcom/antivirus/ui/scan/results/d;->k:Landroid/content/Context;

    const v4, 0x7f0900ec

    invoke-static {v2, v4}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/antivirus/ui/scan/results/d;->k:Landroid/content/Context;

    const v8, 0x7f090040

    invoke-static {v4, v8}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    iget-object v8, p0, Lcom/antivirus/ui/scan/results/d;->k:Landroid/content/Context;

    const v10, 0x7f0900ed

    invoke-static {v8, v10}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, p1}, Lcom/antivirus/ui/scan/results/d;->getChildrenCount(I)I

    move-result v10

    invoke-virtual {p0, p1}, Lcom/antivirus/ui/scan/results/d;->getGroup(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v10, :cond_4

    iget-object v2, p0, Lcom/antivirus/ui/scan/results/d;->k:Landroid/content/Context;

    const v4, 0x7f090186

    invoke-static {v2, v4}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_1
    if-eqz v5, :cond_d

    new-instance v1, Lcom/antivirus/ui/scan/results/e;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/antivirus/ui/scan/results/e;-><init>(Lcom/antivirus/ui/scan/results/d;IILcom/antivirus/ui/scan/results/k;)V

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    new-instance v1, Lcom/antivirus/ui/scan/results/f;

    invoke-direct {v1, p0, p1, p2}, Lcom/antivirus/ui/scan/results/f;-><init>(Lcom/antivirus/ui/scan/results/d;II)V

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/antivirus/ui/scan/results/g;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/antivirus/ui/scan/results/g;-><init>(Lcom/antivirus/ui/scan/results/d;IILcom/antivirus/ui/scan/results/k;)V

    invoke-virtual {v7, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    if-nez v5, :cond_2

    if-eqz v7, :cond_3

    :cond_2
    instance-of v1, v0, Lcom/antivirus/ui/scan/results/a;

    if-eqz v1, :cond_e

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/d;->j:Lcom/antivirus/ui/scan/results/m;

    invoke-virtual {v0}, Lcom/antivirus/ui/scan/results/m;->h()Landroid/support/v4/app/i;

    move-result-object v0

    const v1, 0x7f09017d

    invoke-static {v0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/d;->j:Lcom/antivirus/ui/scan/results/m;

    invoke-virtual {v0}, Lcom/antivirus/ui/scan/results/m;->h()Landroid/support/v4/app/i;

    move-result-object v0

    const v1, 0x7f090183

    invoke-static {v0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_3
    return-object v9

    :cond_4
    iget-boolean v2, p0, Lcom/antivirus/ui/scan/results/d;->g:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/antivirus/ui/scan/results/d;->k:Landroid/content/Context;

    const v4, 0x7f090186

    invoke-static {v2, v4}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v11, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-nez v10, :cond_6

    iget-object v2, p0, Lcom/antivirus/ui/scan/results/d;->k:Landroid/content/Context;

    const v4, 0x7f090186

    invoke-static {v2, v4}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    iget-boolean v2, p0, Lcom/antivirus/ui/scan/results/d;->h:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/antivirus/ui/scan/results/d;->k:Landroid/content/Context;

    const v4, 0x7f090186

    invoke-static {v2, v4}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_7
    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v10, :cond_8

    iget-object v2, p0, Lcom/antivirus/ui/scan/results/d;->k:Landroid/content/Context;

    const v4, 0x7f090186

    invoke-static {v2, v4}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_8
    iget-boolean v2, p0, Lcom/antivirus/ui/scan/results/d;->i:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/antivirus/ui/scan/results/d;->k:Landroid/content/Context;

    const v4, 0x7f090186

    invoke-static {v2, v4}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_9
    instance-of v8, v0, Lcom/antivirus/ui/scan/results/a;

    if-eqz v8, :cond_a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/antivirus/ui/scan/results/d;->k:Landroid/content/Context;

    const v12, 0x7f090198

    invoke-static {v11, v12}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/antivirus/ui/scan/results/k;->c()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/antivirus/ui/scan/results/d;->k:Landroid/content/Context;

    const v8, 0x7f090189

    invoke-static {v1, v8}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/view/View;->setVisibility(I)V

    move-object v1, v0

    check-cast v1, Lcom/antivirus/ui/scan/results/a;

    invoke-virtual {v1}, Lcom/antivirus/ui/scan/results/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v1, v0

    check-cast v1, Lcom/antivirus/ui/scan/results/a;

    check-cast v1, Lcom/antivirus/ui/scan/results/a;

    invoke-virtual {v1}, Lcom/antivirus/ui/scan/results/a;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_a
    instance-of v8, v0, Lcom/antivirus/ui/scan/results/b;

    if-eqz v8, :cond_1

    move-object v8, v0

    check-cast v8, Lcom/antivirus/ui/scan/results/b;

    sget-object v11, Lcom/antivirus/ui/scan/results/h;->a:[I

    invoke-virtual {v8}, Lcom/antivirus/ui/scan/results/b;->b()Lcom/antivirus/ui/scan/results/c;

    move-result-object v12

    invoke-virtual {v12}, Lcom/antivirus/ui/scan/results/c;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    invoke-static {}, Lcom/avg/toolkit/f/a;->a()V

    goto/16 :goto_1

    :pswitch_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/antivirus/ui/scan/results/d;->k:Landroid/content/Context;

    const v12, 0x7f090199

    invoke-static {v11, v12}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/antivirus/ui/scan/results/k;->c()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v11, p0, Lcom/antivirus/ui/scan/results/d;->k:Landroid/content/Context;

    const v12, 0x7f09018a

    invoke-static {v11, v12}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/antivirus/ui/scan/results/k;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x8

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {v8}, Lcom/antivirus/ui/scan/results/b;->d()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/antivirus/ui/scan/results/d;->j:Lcom/antivirus/ui/scan/results/m;

    iget-object v2, v2, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    iget-object v2, v2, Lcom/antivirus/core/scanners/h;->f:Lcom/antivirus/core/scanners/ScannerFilesResult;

    iget-boolean v2, v2, Lcom/antivirus/core/scanners/ScannerFilesResult;->a:Z

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/antivirus/ui/scan/results/d;->k:Landroid/content/Context;

    const v3, 0x7f090204

    invoke-static {v2, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    const/16 v1, 0x8

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/antivirus/ui/scan/results/k;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/antivirus/ui/scan/results/d;->k:Landroid/content/Context;

    const v4, 0x7f09018d

    invoke-static {v3, v4}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_d
    const-string v1, "No fix button"

    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_e
    instance-of v1, v0, Lcom/antivirus/ui/scan/results/r;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/antivirus/ui/scan/results/d;->j:Lcom/antivirus/ui/scan/results/m;

    invoke-virtual {v1}, Lcom/antivirus/ui/scan/results/m;->h()Landroid/support/v4/app/i;

    move-result-object v1

    const v2, 0x7f090191

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/antivirus/ui/scan/results/d;->k:Landroid/content/Context;

    const v2, 0x7f0900f6

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/antivirus/ui/scan/results/k;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x8

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_f
    iget-object v0, p0, Lcom/antivirus/ui/scan/results/d;->j:Lcom/antivirus/ui/scan/results/m;

    invoke-virtual {v0}, Lcom/antivirus/ui/scan/results/m;->h()Landroid/support/v4/app/i;

    move-result-object v0

    const v1, 0x7f090183

    invoke-static {v0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_10
    instance-of v1, v0, Lcom/antivirus/ui/scan/results/b;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/antivirus/ui/scan/results/b;

    sget-object v1, Lcom/antivirus/ui/scan/results/c;->a:Lcom/antivirus/ui/scan/results/c;

    invoke-virtual {v0}, Lcom/antivirus/ui/scan/results/b;->b()Lcom/antivirus/ui/scan/results/c;

    move-result-object v0

    if-ne v1, v0, :cond_11

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/d;->j:Lcom/antivirus/ui/scan/results/m;

    invoke-virtual {v0}, Lcom/antivirus/ui/scan/results/m;->h()Landroid/support/v4/app/i;

    move-result-object v0

    const v1, 0x7f09017e

    invoke-static {v0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/d;->j:Lcom/antivirus/ui/scan/results/m;

    invoke-virtual {v0}, Lcom/antivirus/ui/scan/results/m;->h()Landroid/support/v4/app/i;

    move-result-object v0

    const v1, 0x7f090183

    invoke-static {v0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_11
    iget-object v0, p0, Lcom/antivirus/ui/scan/results/d;->j:Lcom/antivirus/ui/scan/results/m;

    invoke-virtual {v0}, Lcom/antivirus/ui/scan/results/m;->h()Landroid/support/v4/app/i;

    move-result-object v0

    const v1, 0x7f090180

    invoke-static {v0, v1}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getChildrenCount(I)I
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/d;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/d;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/d;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    invoke-virtual {p0, p1}, Lcom/antivirus/ui/scan/results/d;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/scan/results/l;

    invoke-virtual {p0, p1}, Lcom/antivirus/ui/scan/results/d;->getChildrenCount(I)I

    move-result v5

    iget-object v1, p0, Lcom/antivirus/ui/scan/results/d;->k:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f03003c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iget-object v1, p0, Lcom/antivirus/ui/scan/results/d;->k:Landroid/content/Context;

    const v2, 0x7f0900ec

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/antivirus/ui/scan/results/d;->k:Landroid/content/Context;

    const v2, 0x7f090040

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/antivirus/ui/scan/results/d;->k:Landroid/content/Context;

    const v2, 0x7f0900ed

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    const v1, 0x7f080121

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f080122

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/antivirus/ui/scan/results/d;->g:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/antivirus/ui/scan/results/d;->h:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/antivirus/ui/scan/results/d;->i:Z

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/avg/ui/general/o;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/antivirus/ui/scan/results/d;->j:Lcom/antivirus/ui/scan/results/m;

    invoke-virtual {v3}, Lcom/antivirus/ui/scan/results/m;->h()Landroid/support/v4/app/i;

    move-result-object v3

    check-cast v3, Lcom/antivirus/ui/tablet/DualPaneActivity;

    check-cast v3, Lcom/antivirus/ui/tablet/DualPaneActivity;

    sget-object v9, Lcom/antivirus/ui/tablet/e;->b:Lcom/antivirus/ui/tablet/e;

    invoke-virtual {v3, v9}, Lcom/antivirus/ui/tablet/DualPaneActivity;->a(Lcom/antivirus/ui/tablet/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const v3, 0x7f08010e

    invoke-virtual {p4, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    if-nez v3, :cond_1

    const-string v0, "Can\'t get Header View"

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const v9, 0x7f08010f

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_2

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f07003a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v9, p0, Lcom/antivirus/ui/scan/results/d;->k:Landroid/content/Context;

    const v10, 0x7f090192

    invoke-static {v9, v10}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const v3, 0x7f080110

    invoke-virtual {p4, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_3

    const/16 v9, 0x8

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0, p1}, Lcom/antivirus/ui/scan/results/d;->getGroup(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    if-nez v5, :cond_5

    const v3, 0x7f020108

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4
    :goto_2
    invoke-virtual {v0}, Lcom/antivirus/ui/scan/results/l;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v4

    goto :goto_1

    :cond_5
    iget-boolean v3, p0, Lcom/antivirus/ui/scan/results/d;->g:Z

    if-nez v3, :cond_6

    const v3, 0x7f020109

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_6
    const v3, 0x7f020108

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_7
    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    if-nez v5, :cond_8

    const v3, 0x7f020108

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_8
    iget-boolean v3, p0, Lcom/antivirus/ui/scan/results/d;->h:Z

    if-nez v3, :cond_9

    const v3, 0x7f020109

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_9
    const v3, 0x7f020108

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_a
    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v5, :cond_b

    const v3, 0x7f020108

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_b
    iget-boolean v3, p0, Lcom/antivirus/ui/scan/results/d;->i:Z

    if-nez v3, :cond_c

    const v3, 0x7f020109

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_c
    const v3, 0x7f020108

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
