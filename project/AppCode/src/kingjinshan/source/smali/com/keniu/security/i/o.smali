.class public final Lcom/keniu/security/i/o;
.super Lcom/keniu/security/i/t;
.source "FileWatchManager.java"

# interfaces
.implements Lcom/keniu/security/monitor/b;


# static fields
.field private static A:Lcom/keniu/security/i/o; = null

.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x0

.field public static final d:I = 0x1

.field public static e:I = 0x0

.field public static f:I = 0x0

.field public static final g:I = 0x3

.field public static final h:I = 0x0

.field public static final i:I = 0x1

.field public static final j:I = 0x2


# instance fields
.field private B:Landroid/os/Handler;

.field private u:[Lcom/keniu/security/i/u;

.field private v:Landroid/content/Context;

.field private w:Landroid/content/pm/PackageManager;

.field private x:Lcom/keniu/security/i/r;

.field private y:Lcom/keniu/security/i/a;

.field private z:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/16 v0, 0x2710

    sput v0, Lcom/keniu/security/i/o;->e:I

    .line 46
    const/16 v0, 0x4e20

    sput v0, Lcom/keniu/security/i/o;->f:I

    .line 57
    new-instance v0, Lcom/keniu/security/i/o;

    invoke-direct {v0}, Lcom/keniu/security/i/o;-><init>()V

    sput-object v0, Lcom/keniu/security/i/o;->A:Lcom/keniu/security/i/o;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/keniu/security/i/t;-><init>()V

    .line 519
    new-instance v0, Lcom/keniu/security/i/p;

    invoke-direct {v0, p0}, Lcom/keniu/security/i/p;-><init>(Lcom/keniu/security/i/o;)V

    iput-object v0, p0, Lcom/keniu/security/i/o;->B:Landroid/os/Handler;

    .line 61
    return-void
.end method

.method public static a()Lcom/keniu/security/i/o;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/keniu/security/i/o;->A:Lcom/keniu/security/i/o;

    return-object v0
.end method

.method private a(I)Lcom/keniu/security/i/u;
    .locals 1
    .parameter

    .prologue
    .line 70
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/keniu/security/i/o;->u:[Lcom/keniu/security/i/u;

    array-length v0, v0

    if-gt p1, v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/keniu/security/i/o;->u:[Lcom/keniu/security/i/u;

    aget-object v0, v0, p1

    .line 73
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/keniu/security/i/o;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/keniu/security/i/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/i/o;ZIZLcom/keniu/security/malware/AppMettle;Lcom/keniu/security/i/b;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 39
    const/4 v0, 0x0

    if-eqz p3, :cond_3

    if-eqz p5, :cond_0

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/keniu/security/i/o;->B:Landroid/os/Handler;

    invoke-virtual {v0, v2, p2, v1, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/keniu/security/i/o;->B:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/keniu/security/i/o;->B:Landroid/os/Handler;

    invoke-virtual {v0, v1, p2, v1, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    :cond_3
    if-eqz p4, :cond_0

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/keniu/security/i/o;->B:Landroid/os/Handler;

    invoke-virtual {v0, v2, p2, v2, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/keniu/security/i/o;->B:Landroid/os/Handler;

    invoke-virtual {v0, v1, p2, v2, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0
.end method

.method private a(ZIZLcom/keniu/security/malware/AppMettle;Lcom/keniu/security/i/b;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 724
    const/4 v0, 0x0

    .line 725
    if-eqz p3, :cond_3

    .line 726
    if-eqz p5, :cond_0

    .line 727
    if-eqz p1, :cond_2

    .line 728
    iget-object v0, p0, Lcom/keniu/security/i/o;->B:Landroid/os/Handler;

    invoke-virtual {v0, v2, p2, v1, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 750
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 751
    iget-object v1, p0, Lcom/keniu/security/i/o;->B:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 753
    :cond_1
    return-void

    .line 732
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/i/o;->B:Landroid/os/Handler;

    invoke-virtual {v0, v1, p2, v1, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    .line 738
    :cond_3
    if-eqz p4, :cond_0

    .line 739
    if-eqz p1, :cond_4

    .line 740
    iget-object v0, p0, Lcom/keniu/security/i/o;->B:Landroid/os/Handler;

    invoke-virtual {v0, v2, p2, v2, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    .line 744
    :cond_4
    iget-object v0, p0, Lcom/keniu/security/i/o;->B:Landroid/os/Handler;

    invoke-virtual {v0, v1, p2, v2, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 39
    const-string v0, "/sdcard/"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/keniu/security/i/o;)[Lcom/keniu/security/i/u;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/keniu/security/i/o;->u:[Lcom/keniu/security/i/u;

    return-object v0
.end method

.method static synthetic b(Lcom/keniu/security/i/o;)Lcom/keniu/security/i/a;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/keniu/security/i/o;->y:Lcom/keniu/security/i/a;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 701
    .line 703
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 704
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 705
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 706
    iget-object v1, p0, Lcom/keniu/security/i/o;->w:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 708
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 709
    if-eqz p0, :cond_0

    .line 710
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 714
    :goto_0
    return-object v0

    .line 712
    :catch_0
    move-exception v0

    move-object v0, v3

    goto :goto_0

    :cond_0
    move-object v0, v3

    goto :goto_0
.end method

.method private b(I)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 135
    invoke-direct {p0, p1}, Lcom/keniu/security/i/o;->a(I)Lcom/keniu/security/i/u;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {v0, v1}, Lcom/keniu/security/i/u;->a(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 139
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 137
    goto :goto_0

    :cond_1
    move v0, v2

    .line 139
    goto :goto_0
.end method

.method static synthetic c(Lcom/keniu/security/i/o;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/keniu/security/i/o;->w:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private c(I)Z
    .locals 1
    .parameter

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/keniu/security/i/o;->a(I)Lcom/keniu/security/i/u;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Lcom/keniu/security/i/u;->b()Z

    move-result v0

    .line 148
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 760
    const-string v0, "/sdcard/"

    .line 761
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 762
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 763
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/keniu/security/i/o;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/keniu/security/i/o;->v:Landroid/content/Context;

    return-object v0
.end method

.method private d(I)Z
    .locals 1
    .parameter

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/keniu/security/i/o;->a(I)Lcom/keniu/security/i/u;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0}, Lcom/keniu/security/i/u;->c()Z

    move-result v0

    .line 157
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcom/keniu/security/i/o;)Landroid/app/NotificationManager;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/keniu/security/i/o;->z:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic f(Lcom/keniu/security/i/o;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/keniu/security/i/o;->B:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 86
    sget v0, Lcom/keniu/security/monitor/a;->p:I

    if-ne p1, v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/keniu/security/i/o;->u:[Lcom/keniu/security/i/u;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/keniu/security/i/u;->a(I)I

    .line 93
    :cond_0
    :goto_0
    return v2

    .line 88
    :cond_1
    sget v0, Lcom/keniu/security/monitor/a;->o:I

    if-ne p1, v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/keniu/security/i/o;->v:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lcom/keniu/security/a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/keniu/security/i/o;->u:[Lcom/keniu/security/i/u;

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/keniu/security/i/u;->a(I)I

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;ILjava/lang/String;)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/keniu/security/i/o;->x:Lcom/keniu/security/i/r;

    invoke-virtual {v0, p1, p2, p3}, Lcom/keniu/security/i/r;->a(Ljava/lang/Object;ILjava/lang/String;)V

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x4fffffff

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/i/o;->v:Landroid/content/Context;

    .line 99
    iget-object v0, p0, Lcom/keniu/security/i/o;->v:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/keniu/security/i/o;->z:Landroid/app/NotificationManager;

    .line 101
    iget-object v0, p0, Lcom/keniu/security/i/o;->v:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/i/o;->w:Landroid/content/pm/PackageManager;

    .line 102
    new-instance v0, Lcom/keniu/security/i/a;

    invoke-direct {v0, p1}, Lcom/keniu/security/i/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keniu/security/i/o;->y:Lcom/keniu/security/i/a;

    .line 103
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/keniu/security/i/u;

    iput-object v0, p0, Lcom/keniu/security/i/o;->u:[Lcom/keniu/security/i/u;

    .line 104
    iget-object v0, p0, Lcom/keniu/security/i/o;->u:[Lcom/keniu/security/i/u;

    const/4 v1, 0x0

    new-instance v2, Lcom/keniu/security/i/c;

    iget-object v3, p0, Lcom/keniu/security/i/o;->v:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/keniu/security/i/c;-><init>(Landroid/content/Context;Lcom/keniu/security/i/t;)V

    aput-object v2, v0, v1

    .line 105
    iget-object v0, p0, Lcom/keniu/security/i/o;->u:[Lcom/keniu/security/i/u;

    const/4 v1, 0x1

    new-instance v2, Lcom/keniu/security/i/j;

    iget-object v3, p0, Lcom/keniu/security/i/o;->v:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/keniu/security/i/j;-><init>(Landroid/content/Context;Lcom/keniu/security/i/t;)V

    aput-object v2, v0, v1

    .line 106
    iget-object v0, p0, Lcom/keniu/security/i/o;->u:[Lcom/keniu/security/i/u;

    const/4 v1, 0x2

    new-instance v2, Lcom/keniu/security/i/l;

    iget-object v3, p0, Lcom/keniu/security/i/o;->v:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/keniu/security/i/l;-><init>(Landroid/content/Context;Lcom/keniu/security/i/t;)V

    aput-object v2, v0, v1

    .line 107
    new-instance v0, Lcom/keniu/security/i/r;

    invoke-direct {v0, p0}, Lcom/keniu/security/i/r;-><init>(Lcom/keniu/security/i/o;)V

    iput-object v0, p0, Lcom/keniu/security/i/o;->x:Lcom/keniu/security/i/r;

    .line 108
    iget-object v0, p0, Lcom/keniu/security/i/o;->x:Lcom/keniu/security/i/r;

    invoke-virtual {v0}, Lcom/keniu/security/i/r;->start()V

    .line 109
    invoke-virtual {p0}, Lcom/keniu/security/i/o;->c()Z

    .line 110
    invoke-static {}, Lcom/keniu/security/monitor/a;->a()Lcom/keniu/security/monitor/a;

    move-result-object v0

    .line 111
    sget v1, Lcom/keniu/security/monitor/a;->o:I

    invoke-virtual {v0, v1, p0, v4}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;I)Z

    .line 113
    sget v1, Lcom/keniu/security/monitor/a;->p:I

    invoke-virtual {v0, v1, p0, v4}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;I)Z

    .line 115
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 119
    iget-object v0, p0, Lcom/keniu/security/i/o;->x:Lcom/keniu/security/i/r;

    invoke-virtual {v0}, Lcom/keniu/security/i/r;->a()V

    .line 120
    iput-object v2, p0, Lcom/keniu/security/i/o;->x:Lcom/keniu/security/i/r;

    .line 121
    invoke-static {}, Lcom/keniu/security/monitor/a;->a()Lcom/keniu/security/monitor/a;

    move-result-object v0

    .line 122
    sget v1, Lcom/keniu/security/monitor/a;->o:I

    invoke-virtual {v0, v1, p0}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;)Z

    .line 123
    sget v1, Lcom/keniu/security/monitor/a;->p:I

    invoke-virtual {v0, v1, p0}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;)Z

    .line 124
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/keniu/security/i/o;->u:[Lcom/keniu/security/i/u;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/keniu/security/i/u;->b()Z

    .line 126
    iget-object v1, p0, Lcom/keniu/security/i/o;->u:[Lcom/keniu/security/i/u;

    aput-object v2, v1, v0

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_0
    iput-object v2, p0, Lcom/keniu/security/i/o;->u:[Lcom/keniu/security/i/u;

    .line 129
    iget-object v0, p0, Lcom/keniu/security/i/o;->y:Lcom/keniu/security/i/a;

    invoke-virtual {v0}, Lcom/keniu/security/i/a;->close()V

    .line 130
    iput-object v2, p0, Lcom/keniu/security/i/o;->y:Lcom/keniu/security/i/a;

    .line 131
    return-void
.end method

.method public final c()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 161
    iget-object v0, p0, Lcom/keniu/security/i/o;->v:Landroid/content/Context;

    if-nez v0, :cond_0

    move v0, v3

    .line 175
    :goto_0
    return v0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/i/o;->v:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/keniu/security/i/o;->u:[Lcom/keniu/security/i/u;

    aget-object v1, v1, v3

    invoke-virtual {v0}, Lcom/keniu/security/a;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    :goto_1
    invoke-virtual {v1, v2}, Lcom/keniu/security/i/u;->a(I)I

    .line 169
    iget-object v1, p0, Lcom/keniu/security/i/o;->u:[Lcom/keniu/security/i/u;

    aget-object v1, v1, v4

    invoke-virtual {v0}, Lcom/keniu/security/a;->g()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    :goto_2
    invoke-virtual {v1, v2}, Lcom/keniu/security/i/u;->a(I)I

    .line 172
    iget-object v1, p0, Lcom/keniu/security/i/o;->u:[Lcom/keniu/security/i/u;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0}, Lcom/keniu/security/a;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v4

    :goto_3
    invoke-virtual {v1, v0}, Lcom/keniu/security/i/u;->a(I)I

    move v0, v4

    .line 175
    goto :goto_0

    :cond_1
    move v2, v3

    .line 166
    goto :goto_1

    :cond_2
    move v2, v3

    .line 169
    goto :goto_2

    :cond_3
    move v0, v3

    .line 172
    goto :goto_3
.end method
