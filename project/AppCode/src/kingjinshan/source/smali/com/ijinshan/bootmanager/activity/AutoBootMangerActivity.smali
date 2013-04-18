.class public Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;
.super Landroid/app/ListActivity;
.source "AutoBootMangerActivity.java"

# interfaces
.implements Lcom/keniu/security/monitor/b;


# static fields
.field private static final d:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field private static final e:Ljava/lang/String; = null

.field private static final f:Ljava/lang/String; = "ap.jar"

.field private static final h:I = 0x1

.field private static final i:I = 0x2

.field private static final j:I = 0x3

.field private static final k:I = 0x4

.field private static final l:I = 0x5

.field private static final m:I = 0x6

.field private static final n:Ljava/lang/String; = "BATTERY_DOC_TYPE"

.field private static final o:Ljava/lang/String; = "DUBA_DOC_TYPE"

.field private static final p:Ljava/lang/String; = "SECRET_PRO_TYPE"

.field private static final q:Ljava/lang/String; = "ROOT_REQUEST"


# instance fields
.field private A:I

.field private B:Ljava/lang/String;

.field private C:Landroid/widget/ProgressBar;

.field private D:Landroid/app/ProgressDialog;

.field private E:Landroid/widget/RadioGroup;

.field private F:Landroid/widget/RadioButton;

.field private G:Landroid/widget/RadioButton;

.field private H:Landroid/widget/Button;

.field private I:Landroid/widget/TextView;

.field private J:Landroid/widget/TextView;

.field private K:Landroid/widget/TextView;

.field private L:Landroid/widget/TextView;

.field private M:Landroid/widget/LinearLayout;

.field private N:Ljava/lang/Thread;

.field private O:Ljava/lang/Thread;

.field private P:Landroid/os/Handler;

.field a:Lcom/keniu/security/monitor/a;

.field b:Lcom/keniu/security/a;

.field c:Lcom/ijinshan/bootmanager/activity/i;

.field private final g:I

.field private r:Landroid/content/pm/PackageManager;

.field private s:Lcom/ijinshan/bootmanager/a/a;

.field private t:Ljava/util/List;

.field private u:Ljava/util/List;

.field private v:Ljava/util/List;

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/system/packages.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->g:I

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->t:Ljava/util/List;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->u:Ljava/util/List;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->v:Ljava/util/List;

    .line 103
    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/malware/bz;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->w:Z

    .line 105
    iput-boolean v1, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->x:Z

    .line 106
    iput-boolean v1, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->y:Z

    .line 134
    sget-object v0, Lcom/ijinshan/bootmanager/activity/i;->b:Lcom/ijinshan/bootmanager/activity/i;

    iput-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->c:Lcom/ijinshan/bootmanager/activity/i;

    .line 481
    new-instance v0, Lcom/ijinshan/bootmanager/activity/f;

    invoke-direct {v0, p0}, Lcom/ijinshan/bootmanager/activity/f;-><init>(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)V

    iput-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->P:Landroid/os/Handler;

    .line 1102
    return-void
.end method

.method static synthetic A(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->x:Z

    return v0
.end method

.method static synthetic B(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->w:Z

    return v0
.end method

.method static synthetic C(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Ljava/lang/Thread;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->N:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic D(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->r:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic a(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput p1, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->z:I

    return p1
.end method

.method static synthetic a(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->D:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Lcom/ijinshan/bootmanager/a/a;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->s:Lcom/ijinshan/bootmanager/a/a;

    return-object v0
.end method

.method static synthetic a(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;Lcom/ijinshan/bootmanager/a/a;)Lcom/ijinshan/bootmanager/a/a;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->s:Lcom/ijinshan/bootmanager/a/a;

    return-object p1
.end method

.method private a(J)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1177
    invoke-static {p0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;J)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-static {p0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->N:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic a(ILandroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-static {p0, p1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->b(ILandroid/os/Handler;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/ijinshan/bootmanager/b/a;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f0b05a7

    const v5, 0x7f0b05a6

    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 350
    new-instance v2, Lcom/keniu/security/util/aq;

    invoke-direct {v2, p0, v7}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 351
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030039

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 353
    const v0, 0x7f08011d

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 355
    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 356
    const v1, 0x7f0b059b

    invoke-virtual {p0, v1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 357
    const-string v1, "BATTERY_DOC_TYPE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 358
    const v1, 0x7f0b05a4

    invoke-virtual {p0, v1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 360
    invoke-virtual {p0, v5}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/ijinshan/bootmanager/activity/l;

    invoke-direct {v3, p0, p1, p2, v0}, Lcom/ijinshan/bootmanager/activity/l;-><init>(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;Ljava/lang/String;Lcom/ijinshan/bootmanager/b/a;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v1, v3}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 362
    invoke-virtual {p0, v6}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v4}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 363
    invoke-virtual {v2}, Lcom/keniu/security/util/aq;->d()Lcom/keniu/security/util/ap;

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    const-string v1, "DUBA_DOC_TYPE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 365
    const v1, 0x7f0b05a5

    invoke-virtual {p0, v1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 367
    invoke-virtual {p0, v5}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/ijinshan/bootmanager/activity/l;

    invoke-direct {v3, p0, p1, p2, v0}, Lcom/ijinshan/bootmanager/activity/l;-><init>(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;Ljava/lang/String;Lcom/ijinshan/bootmanager/b/a;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v1, v3}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 369
    invoke-virtual {p0, v6}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v4}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 370
    invoke-virtual {v2}, Lcom/keniu/security/util/aq;->d()Lcom/keniu/security/util/ap;

    goto :goto_0

    .line 371
    :cond_2
    const-string v1, "SECRET_PRO_TYPE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 372
    const v1, 0x7f0b05a3

    invoke-virtual {p0, v1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 373
    invoke-virtual {p0, v5}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/ijinshan/bootmanager/activity/l;

    invoke-direct {v3, p0, p1, p2, v0}, Lcom/ijinshan/bootmanager/activity/l;-><init>(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;Ljava/lang/String;Lcom/ijinshan/bootmanager/b/a;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v1, v3}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 375
    invoke-virtual {p0, v6}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v4}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 376
    invoke-virtual {v2}, Lcom/keniu/security/util/aq;->d()Lcom/keniu/security/util/ap;

    goto :goto_0

    .line 377
    :cond_3
    const-string v1, "ROOT_REQUEST"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    const v1, 0x7f08011b

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 380
    new-instance v4, Landroid/text/SpannableString;

    const v5, 0x7f0b05a8

    invoke-virtual {p0, v5}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 382
    new-instance v5, Lcom/ijinshan/bootmanager/activity/n;

    invoke-direct {v5, p0, v9}, Lcom/ijinshan/bootmanager/activity/n;-><init>(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;Z)V

    .line 383
    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v6

    const/4 v7, 0x5

    sub-int/2addr v6, v7

    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v7

    sub-int/2addr v7, v9

    const/16 v8, 0x11

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 385
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09001b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v6

    const/4 v7, 0x5

    sub-int/2addr v6, v7

    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v7

    sub-int/2addr v7, v9

    const/16 v8, 0x22

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 388
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 390
    invoke-virtual {v2, v3}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    .line 391
    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->b:Lcom/keniu/security/a;

    invoke-virtual {v1}, Lcom/keniu/security/a;->y()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 392
    const v1, 0x7f0b059c

    invoke-virtual {p0, v1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/ijinshan/bootmanager/activity/l;

    invoke-direct {v3, p0, p1, p2, v0}, Lcom/ijinshan/bootmanager/activity/l;-><init>(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;Ljava/lang/String;Lcom/ijinshan/bootmanager/b/a;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v1, v3}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 395
    invoke-virtual {v2}, Lcom/keniu/security/util/aq;->d()Lcom/keniu/security/util/ap;

    goto/16 :goto_0

    .line 397
    :cond_4
    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/malware/bz;->c()V

    .line 398
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->a:Lcom/keniu/security/monitor/a;

    sget v1, Lcom/keniu/security/monitor/a;->x:I

    const v2, 0x3fffffff

    invoke-virtual {v0, v1, p0, v2}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;I)Z

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;Lcom/ijinshan/bootmanager/b/a;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 79
    new-instance v0, Lcom/ijinshan/bootmanager/c/a;

    invoke-direct {v0, p0}, Lcom/ijinshan/bootmanager/c/a;-><init>(Landroid/content/Context;)V

    const-string v1, "1"

    invoke-virtual {v0, p1, v1}, Lcom/ijinshan/bootmanager/c/a;->a(Lcom/ijinshan/bootmanager/b/a;Ljava/lang/String;)J

    invoke-virtual {v0}, Lcom/ijinshan/bootmanager/c/a;->a()V

    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ijinshan/bootmanager/b/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ijinshan/bootmanager/b/a;->d()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/malware/bz;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    invoke-virtual {p1}, Lcom/ijinshan/bootmanager/b/a;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ijinshan/bootmanager/b/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    move v3, v6

    :goto_0
    const/16 v4, 0x64

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->r:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v4

    if-eq v7, v4, :cond_1

    const-wide/16 v4, 0x64

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->r:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    if-eq v7, v0, :cond_0

    move v0, v6

    :goto_1
    if-nez v0, :cond_2

    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keniu/security/malware/bz;->d()V

    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keniu/security/malware/bz;->c()V

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->a:Lcom/keniu/security/monitor/a;

    sget v2, Lcom/keniu/security/monitor/a;->x:I

    invoke-virtual {v1, v2}, Lcom/keniu/security/monitor/a;->a(I)Z

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->a:Lcom/keniu/security/monitor/a;

    sget v2, Lcom/keniu/security/monitor/a;->x:I

    const v3, 0x3fffffff

    invoke-virtual {v1, v2, p0, v3}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;I)Z

    :cond_2
    return v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->y:Z

    return p1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 965
    .line 966
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 967
    new-instance v1, Landroid/content/pm/PackageParser;

    invoke-direct {v1, p0}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .line 968
    const/4 v2, 0x0

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 970
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v4

    .line 972
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 973
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageParser$Activity;

    .line 974
    iget-object v2, p0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 976
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 977
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 979
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->actionsIterator()Ljava/util/Iterator;

    move-result-object v3

    .line 980
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 981
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 982
    const/4 v1, 0x1

    goto :goto_0

    .line 986
    :cond_3
    return v1
.end method

.method static synthetic b(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput p1, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->A:I

    return p1
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 990
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 991
    new-instance v2, Landroid/content/pm/PackageParser;

    invoke-direct {v2, p0}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .line 992
    const/4 v3, 0x0

    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 994
    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 996
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 997
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/content/pm/PackageParser$Activity;

    move-object v1, v0

    .line 998
    iget-object v3, v1, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1000
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1001
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 1003
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->actionsIterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1004
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1005
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1006
    iget-object v1, v1, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    .line 1011
    :goto_0
    return-object v1

    :cond_3
    const-string v1, ""

    goto :goto_0
.end method

.method static synthetic b(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->t:Ljava/util/List;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 249
    new-instance v0, Lcom/ijinshan/bootmanager/activity/d;

    invoke-direct {v0, p0}, Lcom/ijinshan/bootmanager/activity/d;-><init>(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)V

    invoke-virtual {v0}, Lcom/ijinshan/bootmanager/activity/d;->start()V

    .line 272
    return-void
.end method

.method private static b(ILandroid/os/Handler;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 622
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 623
    iput p0, v0, Landroid/os/Message;->what:I

    .line 624
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 625
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 626
    return-void
.end method

.method static synthetic b(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;Lcom/ijinshan/bootmanager/b/a;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 79
    new-instance v0, Lcom/ijinshan/bootmanager/c/a;

    invoke-direct {v0, p0}, Lcom/ijinshan/bootmanager/c/a;-><init>(Landroid/content/Context;)V

    const-string v1, "0"

    invoke-virtual {v0, p1, v1}, Lcom/ijinshan/bootmanager/c/a;->a(Lcom/ijinshan/bootmanager/b/a;Ljava/lang/String;)J

    invoke-virtual {v0}, Lcom/ijinshan/bootmanager/c/a;->a()V

    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ijinshan/bootmanager/b/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ijinshan/bootmanager/b/a;->d()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/malware/bz;->b(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    invoke-virtual {p1}, Lcom/ijinshan/bootmanager/b/a;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ijinshan/bootmanager/b/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    move v3, v6

    :goto_0
    const/16 v4, 0x64

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->r:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v4

    if-ne v7, v4, :cond_1

    const-wide/16 v4, 0x64

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->r:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    if-ne v7, v0, :cond_0

    move v0, v6

    :goto_1
    if-nez v0, :cond_2

    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keniu/security/malware/bz;->d()V

    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keniu/security/malware/bz;->c()V

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->a:Lcom/keniu/security/monitor/a;

    sget v2, Lcom/keniu/security/monitor/a;->x:I

    invoke-virtual {v1, v2}, Lcom/keniu/security/monitor/a;->a(I)Z

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->a:Lcom/keniu/security/monitor/a;

    sget v2, Lcom/keniu/security/monitor/a;->x:I

    const v3, 0x3fffffff

    invoke-virtual {v1, v2, p0, v3}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;I)Z

    :cond_2
    return v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private b(Lcom/ijinshan/bootmanager/b/a;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 1016
    new-instance v0, Lcom/ijinshan/bootmanager/c/a;

    invoke-direct {v0, p0}, Lcom/ijinshan/bootmanager/c/a;-><init>(Landroid/content/Context;)V

    .line 1017
    const-string v1, "1"

    invoke-virtual {v0, p1, v1}, Lcom/ijinshan/bootmanager/c/a;->a(Lcom/ijinshan/bootmanager/b/a;Ljava/lang/String;)J

    .line 1018
    invoke-virtual {v0}, Lcom/ijinshan/bootmanager/c/a;->a()V

    .line 1019
    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ijinshan/bootmanager/b/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ijinshan/bootmanager/b/a;->d()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/malware/bz;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    .line 1027
    invoke-virtual {p1}, Lcom/ijinshan/bootmanager/b/a;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1028
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ijinshan/bootmanager/b/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    move v3, v6

    .line 1031
    :goto_0
    const/16 v4, 0x64

    if-ge v3, v4, :cond_1

    .line 1032
    iget-object v4, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->r:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v4

    if-eq v7, v4, :cond_1

    .line 1034
    const-wide/16 v4, 0x64

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 1031
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1038
    :cond_1
    iget-object v3, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->r:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    if-eq v7, v0, :cond_0

    move v0, v6

    .line 1045
    :goto_1
    if-nez v0, :cond_2

    .line 1046
    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keniu/security/malware/bz;->d()V

    .line 1047
    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keniu/security/malware/bz;->c()V

    .line 1048
    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->a:Lcom/keniu/security/monitor/a;

    sget v2, Lcom/keniu/security/monitor/a;->x:I

    invoke-virtual {v1, v2}, Lcom/keniu/security/monitor/a;->a(I)Z

    .line 1049
    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->a:Lcom/keniu/security/monitor/a;

    sget v2, Lcom/keniu/security/monitor/a;->x:I

    const v3, 0x3fffffff

    invoke-virtual {v1, v2, p0, v3}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;I)Z

    .line 1053
    :cond_2
    return v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method static synthetic c(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->H:Landroid/widget/Button;

    return-object v0
.end method

.method private c()Z
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 275
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->r:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 276
    if-nez v1, :cond_0

    move v0, v10

    .line 346
    :goto_0
    return v0

    .line 280
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 281
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 282
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    move v5, v10

    .line 284
    :goto_1
    if-ge v5, v4, :cond_6

    .line 288
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 290
    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eq v6, v11, :cond_1

    .line 291
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v7, "android.intent.action.BOOT_COMPLETED"

    invoke-static {v6, v7}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 295
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1

    .line 296
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    .line 300
    iget-object v8, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->r:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v7}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v7

    .line 301
    const/4 v8, 0x2

    if-ne v8, v7, :cond_1

    .line 303
    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 304
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    :cond_1
    :goto_2
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    .line 306
    :cond_2
    new-instance v7, Lcom/ijinshan/bootmanager/b/a;

    invoke-direct {v7}, Lcom/ijinshan/bootmanager/b/a;-><init>()V

    .line 308
    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/ijinshan/bootmanager/b/a;->a(Ljava/lang/String;)V

    .line 309
    iget v8, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-eqz v8, :cond_3

    .line 310
    iget-object v8, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->r:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/ijinshan/bootmanager/b/a;->b(Ljava/lang/String;)V

    .line 314
    :goto_3
    iget v8, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v8, :cond_4

    .line 315
    iget-object v8, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->r:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v8}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/ijinshan/bootmanager/b/a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 320
    :goto_4
    iget v8, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v9, 0x4

    and-int/2addr v8, v9

    if-eqz v8, :cond_5

    .line 321
    const v8, 0x7f0b0566

    invoke-virtual {p0, v8}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/ijinshan/bootmanager/b/a;->d(Ljava/lang/String;)V

    .line 325
    :goto_5
    invoke-virtual {v7, v10}, Lcom/ijinshan/bootmanager/b/a;->a(Z)V

    .line 327
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 328
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 312
    :cond_3
    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/ijinshan/bootmanager/b/a;->b(Ljava/lang/String;)V

    goto :goto_3

    .line 317
    :cond_4
    invoke-virtual {p0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1080093

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/ijinshan/bootmanager/b/a;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 323
    :cond_5
    const v8, 0x7f0b0567

    invoke-virtual {p0, v8}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/ijinshan/bootmanager/b/a;->d(Ljava/lang/String;)V

    goto :goto_5

    .line 336
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/bootmanager/b/a;

    .line 337
    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->t:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 338
    invoke-virtual {v0}, Lcom/ijinshan/bootmanager/b/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/ijinshan/bootmanager/b/a;->a(Ljava/util/List;)V

    .line 342
    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->u:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 344
    :cond_8
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->A:I

    move v0, v11

    .line 346
    goto/16 :goto_0
.end method

.method private c(Lcom/ijinshan/bootmanager/b/a;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 1057
    new-instance v0, Lcom/ijinshan/bootmanager/c/a;

    invoke-direct {v0, p0}, Lcom/ijinshan/bootmanager/c/a;-><init>(Landroid/content/Context;)V

    .line 1058
    const-string v1, "0"

    invoke-virtual {v0, p1, v1}, Lcom/ijinshan/bootmanager/c/a;->a(Lcom/ijinshan/bootmanager/b/a;Ljava/lang/String;)J

    .line 1059
    invoke-virtual {v0}, Lcom/ijinshan/bootmanager/c/a;->a()V

    .line 1060
    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ijinshan/bootmanager/b/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ijinshan/bootmanager/b/a;->d()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/malware/bz;->b(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    .line 1068
    invoke-virtual {p1}, Lcom/ijinshan/bootmanager/b/a;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1069
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ijinshan/bootmanager/b/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    move v3, v6

    .line 1072
    :goto_0
    const/16 v4, 0x64

    if-ge v3, v4, :cond_1

    .line 1073
    iget-object v4, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->r:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v4

    if-ne v7, v4, :cond_1

    .line 1075
    const-wide/16 v4, 0x64

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 1072
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1079
    :cond_1
    iget-object v3, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->r:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    if-ne v7, v0, :cond_0

    move v0, v6

    .line 1086
    :goto_1
    if-nez v0, :cond_2

    .line 1087
    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keniu/security/malware/bz;->d()V

    .line 1088
    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keniu/security/malware/bz;->c()V

    .line 1089
    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->a:Lcom/keniu/security/monitor/a;

    sget v2, Lcom/keniu/security/monitor/a;->x:I

    invoke-virtual {v1, v2}, Lcom/keniu/security/monitor/a;->a(I)Z

    .line 1090
    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->a:Lcom/keniu/security/monitor/a;

    sget v2, Lcom/keniu/security/monitor/a;->x:I

    const v3, 0x3fffffff

    invoke-virtual {v1, v2, p0, v3}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;I)Z

    .line 1094
    :cond_2
    return v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method static synthetic d(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->L:Landroid/widget/TextView;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 406
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 407
    const v1, 0x7f0b059b

    invoke-virtual {p0, v1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 408
    const-string v1, "\u672c\u529f\u80fd\u9700\u8981\u6253\u5f00\u7cfb\u7edf\u8bbe\u7f6e\u4e2d\u7684\u201cUSB\u8c03\u8bd5\u201d\u5e76\u91cd\u542f\u624b\u673a\u3002\u73b0\u5728\u6253\u5f00USB\u8c03\u8bd5\u5417\uff1f"

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 409
    const v1, 0x7f0b05a6

    new-instance v2, Lcom/ijinshan/bootmanager/activity/e;

    invoke-direct {v2, p0}, Lcom/ijinshan/bootmanager/activity/e;-><init>(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 425
    const v1, 0x7f0b05a7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 426
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->d()Lcom/keniu/security/util/ap;

    .line 427
    return-void
.end method

.method static synthetic e(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->K:Landroid/widget/TextView;

    return-object v0
.end method

.method private e()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 468
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->t:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v3

    .line 478
    :goto_0
    return v0

    .line 470
    :cond_1
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ijinshan/bootmanager/b/a;

    .line 471
    const-string v1, "com.ijinshan.mguard"

    invoke-virtual {p0}, Lcom/ijinshan/bootmanager/b/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/ijinshan/bootmanager/b/a;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.ijinshan.kbatterydoctor"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/ijinshan/bootmanager/b/a;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.ijinshan.duba"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/ijinshan/bootmanager/b/a;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.ijinshan.mPrivacy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 475
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v3

    .line 478
    goto :goto_0
.end method

.method static synthetic f(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->J:Landroid/widget/TextView;

    return-object v0
.end method

.method private f()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 786
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 787
    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->r:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 789
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 790
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 791
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 792
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 793
    iget v5, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eq v5, v8, :cond_0

    .line 794
    new-instance v5, Lcom/ijinshan/bootmanager/b/a;

    invoke-direct {v5}, Lcom/ijinshan/bootmanager/b/a;-><init>()V

    .line 795
    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/ijinshan/bootmanager/b/a;->a(Ljava/lang/String;)V

    .line 796
    iget v6, v1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-eqz v6, :cond_1

    .line 797
    iget-object v6, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->r:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ijinshan/bootmanager/b/a;->b(Ljava/lang/String;)V

    .line 801
    :goto_1
    iget v6, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v6, :cond_2

    .line 802
    iget-object v6, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->r:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v6}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ijinshan/bootmanager/b/a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 807
    :goto_2
    iget v6, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x4

    and-int/2addr v6, v7

    if-eqz v6, :cond_3

    .line 808
    const v6, 0x7f0b0566

    invoke-virtual {p0, v6}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ijinshan/bootmanager/b/a;->d(Ljava/lang/String;)V

    .line 812
    :goto_3
    invoke-virtual {v5, v8}, Lcom/ijinshan/bootmanager/b/a;->a(Z)V

    .line 813
    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 814
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 799
    :cond_1
    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/ijinshan/bootmanager/b/a;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 804
    :cond_2
    invoke-virtual {p0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1080093

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ijinshan/bootmanager/b/a;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 810
    :cond_3
    const v6, 0x7f0b0567

    invoke-virtual {p0, v6}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ijinshan/bootmanager/b/a;->d(Ljava/lang/String;)V

    goto :goto_3

    .line 816
    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 817
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 818
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 823
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/bootmanager/b/a;

    .line 824
    invoke-virtual {v0}, Lcom/ijinshan/bootmanager/b/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/ijinshan/bootmanager/b/a;->a(Ljava/util/List;)V

    .line 825
    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->t:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 827
    :cond_6
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->z:I

    .line 828
    return-void
.end method

.method private g()Z
    .locals 21

    .prologue
    .line 831
    const/4 v5, 0x1

    .line 832
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 833
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 835
    :try_start_0
    new-instance v3, Ljava/io/File;

    sget-object v7, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->e:Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 836
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v7

    .line 838
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v7

    .line 839
    invoke-virtual {v7, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 840
    invoke-interface {v3}, Lorg/w3c/dom/Document;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 841
    const/4 v3, 0x0

    move v8, v3

    :goto_0
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v8, v3, :cond_8

    .line 842
    invoke-interface {v7, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v9, "packages"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 843
    invoke-interface {v7, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 844
    const/4 v3, 0x0

    move v10, v3

    :goto_1
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v10, v3, :cond_7

    .line 845
    invoke-interface {v9, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 846
    const-string v11, "package"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 847
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v11

    .line 849
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 850
    const/4 v3, 0x0

    move v13, v3

    :goto_2
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v13, v3, :cond_6

    .line 851
    invoke-interface {v12, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 852
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v14

    .line 853
    const-string v15, "disabled-components"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 854
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v14

    .line 855
    const/4 v3, 0x0

    move v15, v3

    :goto_3
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v15, v3, :cond_5

    .line 856
    invoke-interface {v14, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 857
    const-string v16, "item"

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 858
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    .line 860
    const-string v16, "name"

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v16

    .line 863
    const-string v17, "codePath"

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v17

    .line 866
    const-string v18, "name"

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v18

    .line 869
    const-string v3, "/system/"

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 871
    :try_start_1
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 881
    if-eqz v3, :cond_0

    .line 882
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->r:Landroid/content/pm/PackageManager;

    move-object v3, v0

    const/16 v17, 0x0

    move-object v0, v3

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 886
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 887
    new-instance v17, Lcom/ijinshan/bootmanager/b/a;

    invoke-direct/range {v17 .. v17}, Lcom/ijinshan/bootmanager/b/a;-><init>()V

    .line 888
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/ijinshan/bootmanager/b/a;->a(Ljava/lang/String;)V

    .line 890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->t:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_5

    .line 892
    move-object v0, v3

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->r:Landroid/content/pm/PackageManager;

    move-object/from16 v19, v0

    move-object v0, v3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/ijinshan/bootmanager/b/a;->b(Ljava/lang/String;)V

    .line 903
    :goto_4
    move-object v0, v3

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->r:Landroid/content/pm/PackageManager;

    move-object/from16 v19, v0

    move-object v0, v3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/ijinshan/bootmanager/b/a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 913
    :goto_5
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v19, 0x4

    and-int v3, v3, v19

    if-eqz v3, :cond_3

    .line 914
    const v3, 0x7f0b0566

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/ijinshan/bootmanager/b/a;->d(Ljava/lang/String;)V

    .line 920
    :goto_6
    const/4 v3, 0x0

    move-object/from16 v0, v17

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/ijinshan/bootmanager/b/a;->a(Z)V

    .line 921
    move-object v0, v6

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 923
    move-object v0, v6

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 855
    :cond_0
    :goto_7
    add-int/lit8 v3, v15, 0x1

    move v15, v3

    goto/16 :goto_3

    .line 900
    :cond_1
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/ijinshan/bootmanager/b/a;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 946
    :catch_0
    move-exception v3

    .line 947
    const/4 v5, 0x0

    .line 948
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 950
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ijinshan/bootmanager/b/a;

    .line 951
    invoke-virtual {v3}, Lcom/ijinshan/bootmanager/b/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/ijinshan/bootmanager/b/a;->a(Ljava/util/List;)V

    .line 952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->u:Ljava/util/List;

    move-object v4, v0

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 908
    :cond_2
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x1080093

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/ijinshan/bootmanager/b/a;->a(Landroid/graphics/drawable/Drawable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_5

    .line 950
    :catchall_0
    move-exception v3

    move-object v5, v3

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ijinshan/bootmanager/b/a;

    .line 951
    invoke-virtual {v3}, Lcom/ijinshan/bootmanager/b/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/ijinshan/bootmanager/b/a;->a(Ljava/util/List;)V

    .line 952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->u:Ljava/util/List;

    move-object v4, v0

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 917
    :cond_3
    const v3, 0x7f0b0567

    :try_start_5
    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/ijinshan/bootmanager/b/a;->d(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 929
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 930
    move-object v0, v3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 931
    move-object v0, v6

    move-object/from16 v1, v16

    move-object v2, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    move-object v0, v4

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_7

    .line 850
    :cond_5
    add-int/lit8 v3, v13, 0x1

    move v13, v3

    goto/16 :goto_2

    .line 844
    :cond_6
    add-int/lit8 v3, v10, 0x1

    move v10, v3

    goto/16 :goto_1

    .line 841
    :cond_7
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    goto/16 :goto_0

    .line 950
    :cond_8
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/ijinshan/bootmanager/b/a;

    move-object v4, v0

    .line 951
    invoke-virtual {v4}, Lcom/ijinshan/bootmanager/b/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v4, v3}, Lcom/ijinshan/bootmanager/b/a;->a(Ljava/util/List;)V

    .line 952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->u:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 955
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->u:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_c

    .line 956
    const/4 v3, 0x0

    .line 960
    :goto_b
    return v3

    .line 955
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->u:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_c

    .line 956
    const/4 v3, 0x0

    goto :goto_b

    .line 955
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->u:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 956
    throw v5

    .line 878
    :catch_1
    move-exception v3

    goto/16 :goto_7

    :cond_c
    move v3, v5

    goto :goto_b
.end method

.method static synthetic g(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 79
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->t:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v3

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ijinshan/bootmanager/b/a;

    const-string v1, "com.ijinshan.mguard"

    invoke-virtual {p0}, Lcom/ijinshan/bootmanager/b/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/ijinshan/bootmanager/b/a;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.ijinshan.kbatterydoctor"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/ijinshan/bootmanager/b/a;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.ijinshan.duba"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/ijinshan/bootmanager/b/a;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.ijinshan.mPrivacy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_0
.end method

.method static synthetic h(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->y:Z

    return v0
.end method

.method static synthetic i(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->u:Ljava/util/List;

    return-object v0
.end method

.method static synthetic j(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    .line 79
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->r:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eq v5, v8, :cond_0

    new-instance v5, Lcom/ijinshan/bootmanager/b/a;

    invoke-direct {v5}, Lcom/ijinshan/bootmanager/b/a;-><init>()V

    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/ijinshan/bootmanager/b/a;->a(Ljava/lang/String;)V

    iget v6, v1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->r:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ijinshan/bootmanager/b/a;->b(Ljava/lang/String;)V

    :goto_1
    iget v6, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->r:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v6}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ijinshan/bootmanager/b/a;->a(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    iget v6, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x4

    and-int/2addr v6, v7

    if-eqz v6, :cond_3

    const v6, 0x7f0b0566

    invoke-virtual {p0, v6}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ijinshan/bootmanager/b/a;->d(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v5, v8}, Lcom/ijinshan/bootmanager/b/a;->a(Z)V

    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/ijinshan/bootmanager/b/a;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1080093

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ijinshan/bootmanager/b/a;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_3
    const v6, 0x7f0b0567

    invoke-virtual {p0, v6}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ijinshan/bootmanager/b/a;->d(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/bootmanager/b/a;

    invoke-virtual {v0}, Lcom/ijinshan/bootmanager/b/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/ijinshan/bootmanager/b/a;->a(Ljava/util/List;)V

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->t:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->z:I

    return-void
.end method

.method static synthetic k(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->g()Z

    move-result v0

    return v0
.end method

.method static synthetic l(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Z
    .locals 12
    .parameter

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 79
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->r:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    move v0, v10

    :goto_0
    return v0

    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    move v5, v10

    :goto_1
    if-ge v5, v4, :cond_6

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eq v6, v11, :cond_1

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v7, "android.intent.action.BOOT_COMPLETED"

    invoke-static {v6, v7}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    iget-object v8, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->r:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v7}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v7

    const/4 v8, 0x2

    if-ne v8, v7, :cond_1

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_2
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    :cond_2
    new-instance v7, Lcom/ijinshan/bootmanager/b/a;

    invoke-direct {v7}, Lcom/ijinshan/bootmanager/b/a;-><init>()V

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/ijinshan/bootmanager/b/a;->a(Ljava/lang/String;)V

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->r:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/ijinshan/bootmanager/b/a;->b(Ljava/lang/String;)V

    :goto_3
    iget v8, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->r:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v8}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/ijinshan/bootmanager/b/a;->a(Landroid/graphics/drawable/Drawable;)V

    :goto_4
    iget v8, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v9, 0x4

    and-int/2addr v8, v9

    if-eqz v8, :cond_5

    const v8, 0x7f0b0566

    invoke-virtual {p0, v8}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/ijinshan/bootmanager/b/a;->d(Ljava/lang/String;)V

    :goto_5
    invoke-virtual {v7, v10}, Lcom/ijinshan/bootmanager/b/a;->a(Z)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/ijinshan/bootmanager/b/a;->b(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1080093

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/ijinshan/bootmanager/b/a;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_5
    const v8, 0x7f0b0567

    invoke-virtual {p0, v8}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/ijinshan/bootmanager/b/a;->d(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/bootmanager/b/a;

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->t:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Lcom/ijinshan/bootmanager/b/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/ijinshan/bootmanager/b/a;->a(Ljava/util/List;)V

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->u:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_8
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->A:I

    move v0, v11

    goto/16 :goto_0
.end method

.method static synthetic m(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 79
    iget v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->g:I

    return v0
.end method

.method static synthetic n(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->B:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->P:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic p(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->v:Ljava/util/List;

    return-object v0
.end method

.method static synthetic q(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/widget/RadioGroup;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->E:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic r(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->C:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic s(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->I:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic t(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->D:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic u(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 79
    iget v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->z:I

    return v0
.end method

.method static synthetic v(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/widget/RadioButton;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->F:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic w(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 79
    iget v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->A:I

    return v0
.end method

.method static synthetic x(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Landroid/widget/RadioButton;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->G:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic y(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->x:Z

    return v0
.end method

.method static synthetic z(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)V
    .locals 3
    .parameter

    .prologue
    .line 79
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v1, 0x7f0b059b

    invoke-virtual {p0, v1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    const-string v1, "\u672c\u529f\u80fd\u9700\u8981\u6253\u5f00\u7cfb\u7edf\u8bbe\u7f6e\u4e2d\u7684\u201cUSB\u8c03\u8bd5\u201d\u5e76\u91cd\u542f\u624b\u673a\u3002\u73b0\u5728\u6253\u5f00USB\u8c03\u8bd5\u5417\uff1f"

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b05a6

    new-instance v2, Lcom/ijinshan/bootmanager/activity/e;

    invoke-direct {v2, p0}, Lcom/ijinshan/bootmanager/activity/e;-><init>(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b05a7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->d()Lcom/keniu/security/util/ap;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1187
    sget v0, Lcom/keniu/security/monitor/a;->x:I

    if-ne p1, v0, :cond_0

    .line 1188
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->w:Z

    .line 1190
    invoke-direct {p0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->b()V

    .line 1192
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 1098
    new-instance v0, Lcom/ijinshan/bootmanager/activity/o;

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->P:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/ijinshan/bootmanager/activity/o;-><init>(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->O:Ljava/lang/Thread;

    .line 1099
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->O:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1100
    return-void
.end method

.method public final a(Lcom/ijinshan/bootmanager/b/a;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 721
    iput-boolean v4, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->x:Z

    .line 722
    iget-boolean v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->w:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    invoke-static {}, Lcom/keniu/security/malware/bz;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 723
    :cond_0
    const v0, 0x7f0b058b

    invoke-virtual {p0, v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 778
    :cond_1
    :goto_0
    return-void

    .line 730
    :cond_2
    invoke-virtual {p1}, Lcom/ijinshan/bootmanager/b/a;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 731
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ijinshan/bootmanager/b/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 734
    iget-object v2, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->r:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    .line 735
    if-ne v5, v0, :cond_3

    .line 736
    const/4 v0, 0x1

    .line 741
    :goto_1
    if-nez v0, :cond_7

    .line 742
    invoke-virtual {p1}, Lcom/ijinshan/bootmanager/b/a;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.ijinshan.kbatterydoctor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 743
    invoke-virtual {p0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 744
    const-string v0, "BATTERY_DOC_TYPE"

    invoke-direct {p0, v0, p1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->a(Ljava/lang/String;Lcom/ijinshan/bootmanager/b/a;)V

    goto :goto_0

    .line 746
    :cond_4
    invoke-virtual {p1}, Lcom/ijinshan/bootmanager/b/a;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.ijinshan.duba"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 747
    invoke-virtual {p0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 748
    const-string v0, "DUBA_DOC_TYPE"

    invoke-direct {p0, v0, p1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->a(Ljava/lang/String;Lcom/ijinshan/bootmanager/b/a;)V

    goto :goto_0

    .line 750
    :cond_5
    invoke-virtual {p1}, Lcom/ijinshan/bootmanager/b/a;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.ijinshan.mPrivacy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 752
    invoke-virtual {p0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 753
    const-string v0, "SECRET_PRO_TYPE"

    invoke-direct {p0, v0, p1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->a(Ljava/lang/String;Lcom/ijinshan/bootmanager/b/a;)V

    goto/16 :goto_0

    .line 756
    :cond_6
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->P:Landroid/os/Handler;

    invoke-static {v5, v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->b(ILandroid/os/Handler;)V

    .line 757
    new-instance v0, Lcom/ijinshan/bootmanager/activity/g;

    invoke-direct {v0, p0, p1}, Lcom/ijinshan/bootmanager/activity/g;-><init>(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;Lcom/ijinshan/bootmanager/b/a;)V

    invoke-virtual {v0}, Lcom/ijinshan/bootmanager/activity/g;->start()V

    goto/16 :goto_0

    .line 767
    :cond_7
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->P:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->b(ILandroid/os/Handler;)V

    .line 768
    new-instance v0, Lcom/ijinshan/bootmanager/activity/h;

    invoke-direct {v0, p0, p1}, Lcom/ijinshan/bootmanager/activity/h;-><init>(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;Lcom/ijinshan/bootmanager/b/a;)V

    invoke-virtual {v0}, Lcom/ijinshan/bootmanager/activity/h;->start()V

    goto/16 :goto_0

    :cond_8
    move v0, v4

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f0800cc

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 138
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 139
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->requestWindowFeature(I)Z

    .line 140
    const v0, 0x7f030020

    invoke-virtual {p0, v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->setContentView(I)V

    .line 141
    if-nez p1, :cond_0

    .line 142
    const-string v0, "mg_auto_manger_main"

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 143
    :cond_0
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b0587

    invoke-virtual {p0, v1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    const v0, 0x7f080008

    invoke-virtual {p0, v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    const v0, 0x7f0800d3

    invoke-virtual {p0, v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->K:Landroid/widget/TextView;

    .line 148
    const v0, 0x7f0800cf

    invoke-virtual {p0, v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->J:Landroid/widget/TextView;

    .line 149
    const v0, 0x7f0800d0

    invoke-virtual {p0, v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->L:Landroid/widget/TextView;

    .line 150
    const v0, 0x7f0800c9

    invoke-virtual {p0, v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->M:Landroid/widget/LinearLayout;

    .line 152
    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    invoke-static {}, Lcom/keniu/security/malware/bz;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->M:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->M:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/ijinshan/bootmanager/activity/b;

    invoke-direct {v1, p0}, Lcom/ijinshan/bootmanager/activity/b;-><init>(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    :cond_1
    const v0, 0x7f0800d1

    invoke-virtual {p0, v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->C:Landroid/widget/ProgressBar;

    .line 164
    const v0, 0x7f0800d2

    invoke-virtual {p0, v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->I:Landroid/widget/TextView;

    .line 165
    new-instance v0, Landroid/text/SpannableString;

    const v1, 0x7f0b0595

    invoke-virtual {p0, v1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 167
    new-instance v1, Lcom/ijinshan/bootmanager/activity/n;

    invoke-direct {v1, p0, v4}, Lcom/ijinshan/bootmanager/activity/n;-><init>(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;Z)V

    .line 168
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 169
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/16 v3, 0x22

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 172
    iget-object v1, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->K:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->K:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 174
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->L:Landroid/widget/TextView;

    const v1, 0x7f0b058a

    invoke-virtual {p0, v1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->L:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->J:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->K:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    const v0, 0x7f0800ce

    invoke-virtual {p0, v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->H:Landroid/widget/Button;

    .line 179
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->H:Landroid/widget/Button;

    new-instance v1, Lcom/ijinshan/bootmanager/activity/j;

    invoke-direct {v1, p0}, Lcom/ijinshan/bootmanager/activity/j;-><init>(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    invoke-virtual {p0, v6}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->F:Landroid/widget/RadioButton;

    .line 181
    const v0, 0x7f0800cd

    invoke-virtual {p0, v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->G:Landroid/widget/RadioButton;

    .line 183
    const v0, 0x7f0800cb

    invoke-virtual {p0, v0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->E:Landroid/widget/RadioGroup;

    .line 184
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->E:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v6}, Landroid/widget/RadioGroup;->check(I)V

    .line 185
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->E:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/ijinshan/bootmanager/activity/c;

    invoke-direct {v1, p0}, Lcom/ijinshan/bootmanager/activity/c;-><init>(Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 232
    invoke-virtual {p0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->r:Landroid/content/pm/PackageManager;

    .line 233
    invoke-static {}, Lcom/keniu/security/monitor/a;->a()Lcom/keniu/security/monitor/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->a:Lcom/keniu/security/monitor/a;

    .line 234
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->b:Lcom/keniu/security/a;

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keniu/security/f/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ap.jar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->B:Ljava/lang/String;

    .line 239
    iget-boolean v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->w:Z

    if-nez v0, :cond_3

    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    invoke-static {}, Lcom/keniu/security/malware/bz;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 240
    invoke-virtual {p0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 241
    const-string v0, "ROOT_REQUEST"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->a(Ljava/lang/String;Lcom/ijinshan/bootmanager/b/a;)V

    .line 246
    :cond_2
    :goto_0
    return-void

    .line 244
    :cond_3
    invoke-direct {p0}, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->b()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 671
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->N:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 672
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->N:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->N:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 674
    :cond_0
    iput-object v1, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->N:Ljava/lang/Thread;

    .line 676
    :cond_1
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->O:Ljava/lang/Thread;

    if-eqz v0, :cond_3

    .line 677
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->O:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 678
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->O:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 679
    :cond_2
    iput-object v1, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->O:Ljava/lang/Thread;

    .line 681
    :cond_3
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->D:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_5

    .line 682
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->D:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 683
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->D:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 684
    :cond_4
    iput-object v1, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->D:Landroid/app/ProgressDialog;

    .line 686
    :cond_5
    iget-object v0, p0, Lcom/ijinshan/bootmanager/activity/AutoBootMangerActivity;->a:Lcom/keniu/security/monitor/a;

    sget v1, Lcom/keniu/security/monitor/a;->x:I

    invoke-virtual {v0, v1}, Lcom/keniu/security/monitor/a;->a(I)Z

    .line 687
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 688
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 782
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 783
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 1182
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 1183
    return-void
.end method
