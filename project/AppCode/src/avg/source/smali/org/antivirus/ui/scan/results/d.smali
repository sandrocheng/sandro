.class public final Lorg/antivirus/ui/scan/results/d;
.super Landroid/widget/BaseExpandableListAdapter;


# instance fields
.field a:Lorg/antivirus/core/EngineSettings;

.field private b:I

.field private c:I

.field private d:Lorg/antivirus/ui/scan/results/i;

.field private e:Ljava/lang/Object;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Lorg/antivirus/ui/scan/results/ScanResultsExpandable;

.field private l:Landroid/view/View;

.field private m:Landroid/content/Context;

.field private n:Ljava/util/ArrayList;

.field private o:Ljava/util/ArrayList;

.field private p:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lorg/antivirus/ui/scan/results/ScanResultsExpandable;Lorg/antivirus/core/EngineSettings;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    iput-object v1, p0, Lorg/antivirus/ui/scan/results/d;->e:Ljava/lang/Object;

    iput-boolean v0, p0, Lorg/antivirus/ui/scan/results/d;->g:Z

    iput-boolean v0, p0, Lorg/antivirus/ui/scan/results/d;->h:Z

    iput-boolean v0, p0, Lorg/antivirus/ui/scan/results/d;->i:Z

    iput-boolean v0, p0, Lorg/antivirus/ui/scan/results/d;->j:Z

    iput-object v1, p0, Lorg/antivirus/ui/scan/results/d;->l:Landroid/view/View;

    iput-object p1, p0, Lorg/antivirus/ui/scan/results/d;->k:Lorg/antivirus/ui/scan/results/ScanResultsExpandable;

    iput-object p2, p0, Lorg/antivirus/ui/scan/results/d;->a:Lorg/antivirus/core/EngineSettings;

    invoke-virtual {p1}, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/ui/scan/results/d;->m:Landroid/content/Context;

    iput-object p3, p0, Lorg/antivirus/ui/scan/results/d;->n:Ljava/util/ArrayList;

    iput-object p4, p0, Lorg/antivirus/ui/scan/results/d;->o:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/antivirus/ui/scan/results/d;->f:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/antivirus/ui/scan/results/d;->p:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lorg/antivirus/ui/scan/results/d;I)I
    .locals 0

    iput p1, p0, Lorg/antivirus/ui/scan/results/d;->b:I

    return p1
.end method

.method static synthetic a(Lorg/antivirus/ui/scan/results/d;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/scan/results/d;->l:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lorg/antivirus/ui/scan/results/d;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/scan/results/d;->e:Ljava/lang/Object;

    return-object p1
.end method

.method private a(I)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/d;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lorg/antivirus/ui/scan/results/i;->values()[Lorg/antivirus/ui/scan/results/i;

    move-result-object v0

    aget-object v0, v0, p1

    const v1, 0x7f0900bf

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/antivirus/ui/scan/results/h;->b:[I

    invoke-virtual {v0}, Lorg/antivirus/ui/scan/results/i;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lorg/antivirus/core/Logger;->errorBadAgrument()V

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_0

    :goto_1
    return-void

    :pswitch_0
    new-instance v0, Lorg/antivirus/ui/scan/results/a;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lorg/antivirus/ui/scan/results/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iput-boolean v3, v0, Lorg/antivirus/ui/scan/results/j;->f:Z

    move-object v1, v0

    goto :goto_0

    :pswitch_1
    new-instance v0, Lorg/antivirus/ui/scan/results/q;

    invoke-direct {v0, v1}, Lorg/antivirus/ui/scan/results/q;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_2
    new-instance v0, Lorg/antivirus/ui/scan/results/b;

    invoke-direct {v0, v1}, Lorg/antivirus/ui/scan/results/b;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    instance-of v0, v1, Lorg/antivirus/ui/scan/results/a;

    if-eqz v0, :cond_2

    iput-boolean v3, p0, Lorg/antivirus/ui/scan/results/d;->g:Z

    :goto_3
    iget-object v0, p0, Lorg/antivirus/ui/scan/results/d;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/d;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Lorg/antivirus/ui/scan/results/d;->notifyDataSetChanged()V

    goto :goto_1

    :cond_2
    instance-of v0, v1, Lorg/antivirus/ui/scan/results/q;

    if-eqz v0, :cond_3

    iput-boolean v3, p0, Lorg/antivirus/ui/scan/results/d;->h:Z

    goto :goto_3

    :cond_3
    iput-boolean v3, p0, Lorg/antivirus/ui/scan/results/d;->i:Z

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Landroid/widget/ExpandableListView;)V
    .locals 5

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lorg/antivirus/ui/scan/results/i;->values()[Lorg/antivirus/ui/scan/results/i;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lorg/antivirus/ui/scan/results/i;->ordinal()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lorg/antivirus/ui/scan/results/i;->ordinal()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lorg/antivirus/ui/scan/results/d;Landroid/content/Context;Lorg/antivirus/ui/scan/results/r;)V
    .locals 6

    const/high16 v5, 0x1000

    const/4 v4, 0x0

    sget-object v0, Lorg/antivirus/ui/scan/results/h;->c:[I

    invoke-virtual {p2}, Lorg/antivirus/ui/scan/results/r;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lorg/antivirus/core/Logger;->errorBadAgrument()V

    :goto_0
    invoke-virtual {p0}, Lorg/antivirus/ui/scan/results/d;->g()V

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

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/d;->k:Lorg/antivirus/ui/scan/results/ScanResultsExpandable;

    iget-object v0, v0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    iget-object v0, v0, Lorg/antivirus/core/scanners/g;->d:Lorg/antivirus/core/scanners/ad;

    invoke-virtual {v0, v4}, Lorg/antivirus/core/scanners/ad;->c(Z)V

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
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/d;->k:Lorg/antivirus/ui/scan/results/ScanResultsExpandable;

    iget-object v0, v0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    iget-object v0, v0, Lorg/antivirus/core/scanners/g;->d:Lorg/antivirus/core/scanners/ad;

    invoke-virtual {v0, v4}, Lorg/antivirus/core/scanners/ad;->b(Z)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    const v0, 0x7f090011

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/d;->k:Lorg/antivirus/ui/scan/results/ScanResultsExpandable;

    iget-object v0, v0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    iget-object v0, v0, Lorg/antivirus/core/scanners/g;->d:Lorg/antivirus/core/scanners/ad;

    invoke-virtual {v0, v4}, Lorg/antivirus/core/scanners/ad;->a(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lorg/antivirus/ui/scan/results/d;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lorg/antivirus/core/scanners/ScannerPackagesResult;

    invoke-direct {v0}, Lorg/antivirus/core/scanners/ScannerPackagesResult;-><init>()V

    iget-object v1, v0, Lorg/antivirus/core/scanners/ScannerPackagesResult;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/antivirus/ui/scan/results/d;->k:Lorg/antivirus/ui/scan/results/ScanResultsExpandable;

    const-class v3, Lorg/antivirus/AVService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "__SAC"

    const/16 v3, 0x19

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "ScannerClient"

    sget-object v3, Lorg/antivirus/core/scanners/c;->a:Lorg/antivirus/core/scanners/c;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v2, "__SAD"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "ScannerResult"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/d;->k:Lorg/antivirus/ui/scan/results/ScanResultsExpandable;

    invoke-virtual {v0, v1}, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual {p0}, Lorg/antivirus/ui/scan/results/d;->g()V

    return-void
.end method

.method static synthetic a(Lorg/antivirus/ui/scan/results/d;Lorg/antivirus/ui/scan/results/r;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/d;->a:Lorg/antivirus/core/EngineSettings;

    invoke-virtual {v0}, Lorg/antivirus/core/EngineSettings;->getIgnoreSettings()I

    move-result v0

    sget-object v1, Lorg/antivirus/ui/scan/results/h;->c:[I

    invoke-virtual {p1}, Lorg/antivirus/ui/scan/results/r;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    invoke-static {}, Lorg/antivirus/core/Logger;->errorBadAgrument()V

    :goto_0
    invoke-virtual {p0}, Lorg/antivirus/ui/scan/results/d;->g()V

    return-void

    :pswitch_0
    iget-object v1, p0, Lorg/antivirus/ui/scan/results/d;->a:Lorg/antivirus/core/EngineSettings;

    or-int/lit8 v0, v0, 0x4

    invoke-virtual {v1, v0}, Lorg/antivirus/core/EngineSettings;->setIgnoreSettings(I)V

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/d;->k:Lorg/antivirus/ui/scan/results/ScanResultsExpandable;

    iget-object v0, v0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    iget-object v0, v0, Lorg/antivirus/core/scanners/g;->d:Lorg/antivirus/core/scanners/ad;

    invoke-virtual {v0, v3}, Lorg/antivirus/core/scanners/ad;->c(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lorg/antivirus/ui/scan/results/d;->a:Lorg/antivirus/core/EngineSettings;

    or-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v0}, Lorg/antivirus/core/EngineSettings;->setIgnoreSettings(I)V

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/d;->k:Lorg/antivirus/ui/scan/results/ScanResultsExpandable;

    iget-object v0, v0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    iget-object v0, v0, Lorg/antivirus/core/scanners/g;->d:Lorg/antivirus/core/scanners/ad;

    invoke-virtual {v0, v3}, Lorg/antivirus/core/scanners/ad;->b(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lorg/antivirus/ui/scan/results/d;->a:Lorg/antivirus/core/EngineSettings;

    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lorg/antivirus/core/EngineSettings;->setIgnoreSettings(I)V

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/d;->k:Lorg/antivirus/ui/scan/results/ScanResultsExpandable;

    iget-object v0, v0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    iget-object v0, v0, Lorg/antivirus/core/scanners/g;->d:Lorg/antivirus/core/scanners/ad;

    invoke-virtual {v0, v3}, Lorg/antivirus/core/scanners/ad;->a(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lorg/antivirus/ui/scan/results/d;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/antivirus/ui/scan/results/d;->f:Z

    return v0
.end method

.method static synthetic b(Lorg/antivirus/ui/scan/results/d;)I
    .locals 1

    iget v0, p0, Lorg/antivirus/ui/scan/results/d;->b:I

    return v0
.end method

.method static synthetic b(Lorg/antivirus/ui/scan/results/d;I)I
    .locals 0

    iput p1, p0, Lorg/antivirus/ui/scan/results/d;->c:I

    return p1
.end method

.method public static b(Lorg/antivirus/ui/scan/results/i;)Lorg/antivirus/ui/scan/results/j;
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x1

    sget-object v0, Lorg/antivirus/ui/scan/results/h;->b:[I

    invoke-virtual {p0}, Lorg/antivirus/ui/scan/results/i;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    invoke-static {}, Lorg/antivirus/core/Logger;->errorBadAgrument()V

    :goto_0
    return-object v0

    :pswitch_0
    const v0, 0x7f090022

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lorg/antivirus/ui/scan/results/a;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lorg/antivirus/ui/scan/results/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v5, v0, Lorg/antivirus/ui/scan/results/j;->f:Z

    goto :goto_0

    :pswitch_1
    const v0, 0x7f090023

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lorg/antivirus/ui/scan/results/q;

    sget-object v2, Lorg/antivirus/ui/scan/results/r;->a:Lorg/antivirus/ui/scan/results/r;

    invoke-direct {v0, v1, v2}, Lorg/antivirus/ui/scan/results/q;-><init>(Ljava/lang/String;Lorg/antivirus/ui/scan/results/r;)V

    iput-boolean v5, v0, Lorg/antivirus/ui/scan/results/j;->f:Z

    goto :goto_0

    :pswitch_2
    const v0, 0x7f09000c

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lorg/antivirus/ui/scan/results/b;

    sget-object v3, Lorg/antivirus/ui/scan/results/c;->a:Lorg/antivirus/ui/scan/results/c;

    const-string v4, ""

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/antivirus/ui/scan/results/b;-><init>(Ljava/lang/String;Lorg/antivirus/ui/scan/results/c;Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-boolean v5, v0, Lorg/antivirus/ui/scan/results/j;->f:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic b(Lorg/antivirus/ui/scan/results/d;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lorg/antivirus/core/scanners/ScannerFilesResult;

    invoke-direct {v0}, Lorg/antivirus/core/scanners/ScannerFilesResult;-><init>()V

    iget-object v1, v0, Lorg/antivirus/core/scanners/ScannerFilesResult;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/antivirus/ui/scan/results/d;->k:Lorg/antivirus/ui/scan/results/ScanResultsExpandable;

    const-class v3, Lorg/antivirus/AVService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "__SAC"

    const/16 v3, 0x19

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "ScannerClient"

    sget-object v3, Lorg/antivirus/core/scanners/c;->a:Lorg/antivirus/core/scanners/c;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v2, "__SAD"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "ScannerResult"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/d;->k:Lorg/antivirus/ui/scan/results/ScanResultsExpandable;

    invoke-virtual {v0, v1}, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/d;->k:Lorg/antivirus/ui/scan/results/ScanResultsExpandable;

    iget-object v0, v0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    iget-object v0, v0, Lorg/antivirus/core/scanners/g;->f:Lorg/antivirus/core/scanners/ScannerFilesResult;

    invoke-virtual {v0, p1}, Lorg/antivirus/core/scanners/ScannerFilesResult;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/antivirus/ui/scan/results/d;->g()V

    return-void
.end method

.method static synthetic b(Lorg/antivirus/ui/scan/results/d;Lorg/antivirus/ui/scan/results/r;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/d;->a:Lorg/antivirus/core/EngineSettings;

    invoke-virtual {v0}, Lorg/antivirus/core/EngineSettings;->getIgnoreSettings()I

    move-result v0

    sget-object v1, Lorg/antivirus/ui/scan/results/h;->c:[I

    invoke-virtual {p1}, Lorg/antivirus/ui/scan/results/r;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    invoke-static {}, Lorg/antivirus/core/Logger;->errorBadAgrument()V

    :goto_0
    invoke-virtual {p0}, Lorg/antivirus/ui/scan/results/d;->g()V

    return-void

    :pswitch_0
    iget-object v1, p0, Lorg/antivirus/ui/scan/results/d;->a:Lorg/antivirus/core/EngineSettings;

    and-int/lit8 v0, v0, -0x5

    invoke-virtual {v1, v0}, Lorg/antivirus/core/EngineSettings;->setIgnoreSettings(I)V

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/d;->k:Lorg/antivirus/ui/scan/results/ScanResultsExpandable;

    iget-object v0, v0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    iget-object v0, v0, Lorg/antivirus/core/scanners/g;->d:Lorg/antivirus/core/scanners/ad;

    invoke-virtual {v0, v3}, Lorg/antivirus/core/scanners/ad;->c(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lorg/antivirus/ui/scan/results/d;->a:Lorg/antivirus/core/EngineSettings;

    and-int/lit8 v0, v0, -0x3

    invoke-virtual {v1, v0}, Lorg/antivirus/core/EngineSettings;->setIgnoreSettings(I)V

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/d;->k:Lorg/antivirus/ui/scan/results/ScanResultsExpandable;

    iget-object v0, v0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    iget-object v0, v0, Lorg/antivirus/core/scanners/g;->d:Lorg/antivirus/core/scanners/ad;

    invoke-virtual {v0, v3}, Lorg/antivirus/core/scanners/ad;->b(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lorg/antivirus/ui/scan/results/d;->a:Lorg/antivirus/core/EngineSettings;

    and-int/lit8 v0, v0, -0x2

    invoke-virtual {v1, v0}, Lorg/antivirus/core/EngineSettings;->setIgnoreSettings(I)V

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/d;->k:Lorg/antivirus/ui/scan/results/ScanResultsExpandable;

    iget-object v0, v0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    iget-object v0, v0, Lorg/antivirus/core/scanners/g;->d:Lorg/antivirus/core/scanners/ad;

    invoke-virtual {v0, v3}, Lorg/antivirus/core/scanners/ad;->a(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic c(Lorg/antivirus/ui/scan/results/d;)I
    .locals 1

    iget v0, p0, Lorg/antivirus/ui/scan/results/d;->c:I

    return v0
.end method

.method static synthetic d(Lorg/antivirus/ui/scan/results/d;)Lorg/antivirus/ui/scan/results/ScanResultsExpandable;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/d;->k:Lorg/antivirus/ui/scan/results/ScanResultsExpandable;

    return-object v0
.end method

.method static synthetic e(Lorg/antivirus/ui/scan/results/d;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/d;->p:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public final a()Lorg/antivirus/ui/scan/results/i;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/d;->d:Lorg/antivirus/ui/scan/results/i;

    return-object v0
.end method

.method public final a(II)V
    .locals 3

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/d;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Index problem, Size = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/antivirus/ui/scan/results/d;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/d;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lorg/antivirus/ui/scan/results/d;->a(I)V

    goto :goto_0
.end method

.method public final a(Lorg/antivirus/ui/scan/results/i;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/scan/results/d;->d:Lorg/antivirus/ui/scan/results/i;

    return-void
.end method

.method public final a(Lorg/antivirus/ui/scan/results/j;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/d;->n:Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/antivirus/ui/scan/results/j;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/d;->n:Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/antivirus/ui/scan/results/j;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lorg/antivirus/ui/scan/results/d;->n:Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/antivirus/ui/scan/results/j;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/d;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v1, 0x1

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/d;->o:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/d;->p:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lorg/antivirus/ui/scan/results/d;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/d;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    instance-of v0, p1, Lorg/antivirus/ui/scan/results/a;

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lorg/antivirus/ui/scan/results/j;->f:Z

    if-nez v0, :cond_2

    iput-boolean v3, p0, Lorg/antivirus/ui/scan/results/d;->g:Z

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/antivirus/ui/scan/results/d;->notifyDataSetChanged()V

    return-void

    :cond_3
    instance-of v0, p1, Lorg/antivirus/ui/scan/results/q;

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Lorg/antivirus/ui/scan/results/j;->f:Z

    if-nez v0, :cond_2

    iput-boolean v3, p0, Lorg/antivirus/ui/scan/results/d;->h:Z

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lorg/antivirus/ui/scan/results/b;

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lorg/antivirus/ui/scan/results/j;->f:Z

    if-nez v0, :cond_2

    iput-boolean v3, p0, Lorg/antivirus/ui/scan/results/d;->i:Z

    goto :goto_0
.end method

.method public final areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/d;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final c()V
    .locals 2

    iget v0, p0, Lorg/antivirus/ui/scan/results/d;->b:I

    iget v1, p0, Lorg/antivirus/ui/scan/results/d;->c:I

    invoke-virtual {p0, v0, v1}, Lorg/antivirus/ui/scan/results/d;->a(II)V

    return-void
.end method

.method public final d()V
    .locals 5

    invoke-static {}, Lorg/antivirus/ui/scan/results/i;->values()[Lorg/antivirus/ui/scan/results/i;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lorg/antivirus/ui/scan/results/i;->ordinal()I

    move-result v4

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/d;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v4, :cond_1

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/d;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/d;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v4, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/d;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    invoke-direct {p0, v4}, Lorg/antivirus/ui/scan/results/d;->a(I)V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lorg/antivirus/ui/scan/results/d;->f:Z

    return v0
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/antivirus/ui/scan/results/d;->f:Z

    return-void
.end method

.method public final g()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "firstScan"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "threatFound"

    iget-object v2, p0, Lorg/antivirus/ui/scan/results/d;->k:Lorg/antivirus/ui/scan/results/ScanResultsExpandable;

    iget-object v2, v2, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    invoke-virtual {v2}, Lorg/antivirus/core/scanners/g;->a()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "threatCount"

    iget-object v2, p0, Lorg/antivirus/ui/scan/results/d;->k:Lorg/antivirus/ui/scan/results/ScanResultsExpandable;

    iget-object v2, v2, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    invoke-virtual {v2}, Lorg/antivirus/core/scanners/g;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ScannerClient"

    sget-object v2, Lorg/antivirus/core/scanners/c;->a:Lorg/antivirus/core/scanners/c;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v1, p0, Lorg/antivirus/ui/scan/results/d;->k:Lorg/antivirus/ui/scan/results/ScanResultsExpandable;

    invoke-static {v1}, Lorg/antivirus/widget/a/k;->a(Landroid/content/Context;)Lorg/antivirus/widget/a/k;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/antivirus/widget/a/k;->a(Landroid/os/Bundle;)Z

    return-void
.end method

.method public final getChild(II)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/d;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getChildId(II)J
    .locals 2

    int-to-long v0, p2

    return-wide v0
.end method

.method public final getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    invoke-virtual {p0, p1, p2}, Lorg/antivirus/ui/scan/results/d;->getChild(II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/antivirus/ui/scan/results/j;

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/d;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/d;->m:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f03002e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v0, 0x7f0800d8

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/16 v0, 0x8

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0800d7

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0800da

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0800db

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0800d9

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v6, 0x7f0800dc

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    const v7, 0x7f0800dd

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    const v8, 0x7f0800de

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/16 v9, 0x8

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v9, v4, Lorg/antivirus/ui/scan/results/j;->d:Ljava/lang/String;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v9, v4, Lorg/antivirus/ui/scan/results/j;->f:Z

    if-eqz v9, :cond_3

    const/16 v1, 0x8

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setVisibility(I)V

    const/16 v1, 0x8

    invoke-virtual {v7, v1}, Landroid/widget/Button;->setVisibility(I)V

    const/16 v1, 0x8

    invoke-virtual {v8, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    const v1, 0x7f0900bf

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    if-eqz v6, :cond_5

    new-instance v0, Lorg/antivirus/ui/scan/results/e;

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/antivirus/ui/scan/results/e;-><init>(Lorg/antivirus/ui/scan/results/d;IILorg/antivirus/ui/scan/results/j;Landroid/view/View;)V

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    new-instance v0, Lorg/antivirus/ui/scan/results/f;

    invoke-direct {v0, p0, p1, p2}, Lorg/antivirus/ui/scan/results/f;-><init>(Lorg/antivirus/ui/scan/results/d;II)V

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lorg/antivirus/ui/scan/results/g;

    invoke-direct {v0, p0, p1, p2, v4}, Lorg/antivirus/ui/scan/results/g;-><init>(Lorg/antivirus/ui/scan/results/d;IILorg/antivirus/ui/scan/results/j;)V

    invoke-virtual {v8, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    if-nez v6, :cond_1

    if-eqz v8, :cond_2

    :cond_1
    instance-of v0, v4, Lorg/antivirus/ui/scan/results/a;

    if-eqz v0, :cond_6

    const v0, 0x7f0900b8

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setText(I)V

    const v0, 0x7f0900bd

    invoke-virtual {v8, v0}, Landroid/widget/CheckBox;->setText(I)V

    :cond_2
    :goto_2
    return-object v5

    :cond_3
    instance-of v9, v4, Lorg/antivirus/ui/scan/results/a;

    if-eqz v9, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const v11, 0x7f0900ce

    invoke-static {v11}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v4, Lorg/antivirus/ui/scan/results/j;->e:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0900c2

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    move-object v0, v4

    check-cast v0, Lorg/antivirus/ui/scan/results/a;

    iget-object v0, v0, Lorg/antivirus/ui/scan/results/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v4

    check-cast v0, Lorg/antivirus/ui/scan/results/a;

    check-cast v0, Lorg/antivirus/ui/scan/results/a;

    iget-object v0, v0, Lorg/antivirus/ui/scan/results/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_4
    instance-of v9, v4, Lorg/antivirus/ui/scan/results/b;

    if-eqz v9, :cond_0

    move-object v9, v4

    check-cast v9, Lorg/antivirus/ui/scan/results/b;

    sget-object v11, Lorg/antivirus/ui/scan/results/h;->a:[I

    iget-object v9, v9, Lorg/antivirus/ui/scan/results/b;->a:Lorg/antivirus/ui/scan/results/c;

    invoke-virtual {v9}, Lorg/antivirus/ui/scan/results/c;->ordinal()I

    move-result v9

    aget v9, v11, v9

    packed-switch v9, :pswitch_data_0

    invoke-static {}, Lorg/antivirus/core/Logger;->errorBadAgrument()V

    goto/16 :goto_0

    :pswitch_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const v11, 0x7f0900cf

    invoke-static {v11}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v4, Lorg/antivirus/ui/scan/results/j;->e:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const v11, 0x7f0900c3

    invoke-static {v11}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v4, Lorg/antivirus/ui/scan/results/j;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v4, Lorg/antivirus/ui/scan/results/j;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0900c4

    invoke-static {v3}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0900c5

    invoke-static {v3}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "No fix button"

    invoke-static {v0}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    instance-of v0, v4, Lorg/antivirus/ui/scan/results/q;

    if-eqz v0, :cond_8

    const v0, 0x7f0900c8

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setText(I)V

    const v0, 0x7f090024

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v4, Lorg/antivirus/ui/scan/results/j;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_7
    const v0, 0x7f0900bd

    invoke-virtual {v8, v0}, Landroid/widget/CheckBox;->setText(I)V

    goto/16 :goto_2

    :cond_8
    instance-of v0, v4, Lorg/antivirus/ui/scan/results/b;

    if-eqz v0, :cond_2

    check-cast v4, Lorg/antivirus/ui/scan/results/b;

    sget-object v0, Lorg/antivirus/ui/scan/results/c;->a:Lorg/antivirus/ui/scan/results/c;

    iget-object v1, v4, Lorg/antivirus/ui/scan/results/b;->a:Lorg/antivirus/ui/scan/results/c;

    if-ne v0, v1, :cond_9

    const v0, 0x7f0900b9

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setText(I)V

    const v0, 0x7f0900bd

    invoke-virtual {v8, v0}, Landroid/widget/CheckBox;->setText(I)V

    goto/16 :goto_2

    :cond_9
    const v0, 0x7f0900ba

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setText(I)V

    const/16 v0, 0x8

    invoke-virtual {v8, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final getChildrenCount(I)I
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/d;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getGroup(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/d;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getGroupCount()I
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/d;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getGroupId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13

    invoke-virtual {p0, p1}, Lorg/antivirus/ui/scan/results/d;->getGroup(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/antivirus/ui/scan/results/d;->getChildrenCount(I)I

    move-result v6

    iget-object v2, p0, Lorg/antivirus/ui/scan/results/d;->m:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v3, 0x7f03002f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v2, 0x7f09001b

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v2, 0x7f09001c

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v2, 0x7f09001d

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v2, 0x7f09001e

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v10

    const v2, 0x7f0800e0

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0800e1

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-boolean v4, p0, Lorg/antivirus/ui/scan/results/d;->g:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lorg/antivirus/ui/scan/results/d;->h:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lorg/antivirus/ui/scan/results/d;->i:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lorg/antivirus/ui/scan/results/d;->j:Z

    if-eqz v4, :cond_2

    const v4, 0x7f0800cc

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    if-nez v4, :cond_0

    const-string v1, "Can\'t get Header View"

    invoke-static {v1}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const v11, 0x7f0800cd

    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_1

    invoke-virtual/range {p4 .. p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f070039

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setTextColor(I)V

    const v11, 0x7f0900c9

    invoke-static {v11}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const v4, 0x7f0800ce

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_2

    const/16 v11, 0x8

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0, p1}, Lorg/antivirus/ui/scan/results/d;->getGroup(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    if-eqz v6, :cond_c

    iget-boolean v4, p0, Lorg/antivirus/ui/scan/results/d;->g:Z

    if-nez v4, :cond_4

    const v4, 0x7f0200db

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v1, v5

    goto :goto_0

    :cond_4
    const v4, 0x7f0200da

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    if-eqz v6, :cond_c

    iget-boolean v4, p0, Lorg/antivirus/ui/scan/results/d;->h:Z

    if-nez v4, :cond_6

    const v4, 0x7f0200db

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_6
    const v4, 0x7f0200da

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_7
    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    if-eqz v6, :cond_c

    iget-boolean v4, p0, Lorg/antivirus/ui/scan/results/d;->i:Z

    if-nez v4, :cond_8

    const v4, 0x7f0200db

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_8
    const v4, 0x7f0200da

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_9
    invoke-virtual {v4, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v6, :cond_a

    const v4, 0x7f0200db

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    iget-boolean v4, p0, Lorg/antivirus/ui/scan/results/d;->j:Z

    if-nez v4, :cond_c

    const v4, 0x7f0200db

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_a
    iget-boolean v4, p0, Lorg/antivirus/ui/scan/results/d;->j:Z

    if-nez v4, :cond_b

    const v4, 0x7f0200db

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_b
    const v4, 0x7f0200da

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_c
    const v4, 0x7f0200da

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public final hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final isChildSelectable(II)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
