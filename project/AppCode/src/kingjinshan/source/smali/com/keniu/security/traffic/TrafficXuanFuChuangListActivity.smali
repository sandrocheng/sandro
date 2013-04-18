.class public Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;
.super Landroid/app/ListActivity;
.source "TrafficXuanFuChuangListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field public static final a:Ljava/lang/String; = "com.android.settings"

.field public static final b:Ljava/lang/String; = "com.android.settings.InstalledAppDetails"

.field public static final c:Ljava/lang/String; = "android.settings.APPLICATION_DETAILS_SETTINGS"

.field protected static final d:I = 0x0

.field protected static final e:I = 0x1

.field private static f:Lcom/hoi/netstat/g; = null

.field private static final g:Ljava/lang/String; = "package"

.field private static final h:Ljava/lang/String; = "com.android.settings.ApplicationPkgName"

.field private static final i:Ljava/lang/String; = "pkg"


# instance fields
.field private j:Landroid/content/pm/PackageManager;

.field private k:Landroid/widget/ListView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/Button;

.field private n:Lcom/keniu/security/util/aw;

.field private o:Ljava/util/Vector;

.field private p:Lcom/keniu/security/traffic/dn;

.field private volatile q:Z

.field private r:Lcom/keniu/security/traffic/do;

.field private s:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/hoi/netstat/f;->a()Lcom/hoi/netstat/g;

    move-result-object v0

    sput-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->f:Lcom/hoi/netstat/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 59
    new-instance v0, Lcom/keniu/security/util/aw;

    invoke-direct {v0}, Lcom/keniu/security/util/aw;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->n:Lcom/keniu/security/util/aw;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->q:Z

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->r:Lcom/keniu/security/traffic/do;

    .line 98
    new-instance v0, Lcom/keniu/security/traffic/dq;

    invoke-direct {v0, p0}, Lcom/keniu/security/traffic/dq;-><init>(Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;)V

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->s:Landroid/os/Handler;

    .line 184
    return-void
.end method

.method static synthetic a()Lcom/hoi/netstat/g;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->f:Lcom/hoi/netstat/g;

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;Lcom/keniu/security/traffic/dn;)Lcom/keniu/security/traffic/dn;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->p:Lcom/keniu/security/traffic/dn;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;Lcom/keniu/security/traffic/do;)Lcom/keniu/security/traffic/do;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->r:Lcom/keniu/security/traffic/do;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;)Lcom/keniu/security/util/aw;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->n:Lcom/keniu/security/util/aw;

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;Ljava/util/Vector;)Ljava/util/Vector;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->o:Ljava/util/Vector;

    return-object p1
.end method

.method private a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 146
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 147
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 148
    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 149
    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const-string v1, "package"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 151
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 161
    :goto_0
    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->startActivity(Landroid/content/Intent;)V

    .line 162
    return-void

    .line 154
    :cond_0
    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    const-string v1, "pkg"

    .line 156
    :goto_1
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.InstalledAppDetails"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 154
    :cond_1
    const-string v1, "com.android.settings.ApplicationPkgName"

    goto :goto_1
.end method

.method static synthetic b(Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->q:Z

    return v0
.end method

.method static synthetic c(Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;)Lcom/keniu/security/traffic/dn;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->p:Lcom/keniu/security/traffic/dn;

    return-object v0
.end method

.method static synthetic e(Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;)Ljava/util/Vector;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->o:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic f(Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->k:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic g(Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->s:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic h(Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->j:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic i(Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;)Lcom/keniu/security/traffic/do;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->r:Lcom/keniu/security/traffic/do;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 167
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 182
    :goto_0
    return-void

    .line 170
    :pswitch_0
    sput-boolean v2, Lcom/keniu/security/traffic/TrafficTabActivity;->a:Z

    .line 172
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 173
    const-class v1, Lcom/keniu/security/traffic/TrafficTabActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 174
    const-string v1, "extra_to_main"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 175
    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->startActivity(Landroid/content/Intent;)V

    .line 177
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->finish()V

    goto :goto_0

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x7f0803ef
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->requestWindowFeature(I)Z

    .line 69
    const v0, 0x7f030115

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->setContentView(I)V

    .line 70
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->k:Landroid/widget/ListView;

    .line 71
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->k:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 72
    const v0, 0x7f0803f0

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->l:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f0803ef

    invoke-virtual {p0, v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->m:Landroid/widget/Button;

    .line 74
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->m:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->j:Landroid/content/pm/PackageManager;

    .line 76
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->o:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->o:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->o:Ljava/util/Vector;

    invoke-virtual {v0, p3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/traffic/do;

    iget-object v0, v0, Lcom/keniu/security/traffic/do;->e:Ljava/lang/String;

    .line 141
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_2

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :goto_1
    invoke-virtual {p0, v1}, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    const-string v2, "pkg"

    :goto_2
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.InstalledAppDetails"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_3
    const-string v2, "com.android.settings.ApplicationPkgName"

    goto :goto_2
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 81
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->n:Lcom/keniu/security/util/aw;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->n:Lcom/keniu/security/util/aw;

    invoke-virtual {v0}, Lcom/keniu/security/util/aw;->a()V

    .line 83
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->q:Z

    .line 84
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 88
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->q:Z

    .line 90
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->n:Lcom/keniu/security/util/aw;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/keniu/security/util/aw;

    invoke-direct {v0}, Lcom/keniu/security/util/aw;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->n:Lcom/keniu/security/util/aw;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->n:Lcom/keniu/security/util/aw;

    const v1, 0x7f0b0582

    const v2, 0x7f0b047c

    invoke-virtual {v0, p0, v1, v2}, Lcom/keniu/security/util/aw;->a(Landroid/content/Context;II)V

    .line 94
    new-instance v0, Lcom/keniu/security/traffic/dr;

    invoke-direct {v0, p0, p0}, Lcom/keniu/security/traffic/dr;-><init>(Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;Landroid/content/Context;)V

    const-wide/16 v1, 0x3e8

    invoke-static {p0, v0, v1, v2}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;Ljava/lang/Runnable;J)V

    .line 96
    return-void
.end method
