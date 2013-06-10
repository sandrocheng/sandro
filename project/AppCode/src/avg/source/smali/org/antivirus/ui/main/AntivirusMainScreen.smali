.class public Lorg/antivirus/ui/main/AntivirusMainScreen;
.super Lorg/antivirus/ui/BaseToolActivity;

# interfaces
.implements Lorg/antivirus/ui/IhandleMenuItem;


# static fields
.field public static a:Lorg/antivirus/core/scanners/c;

.field private static m:I


# instance fields
.field private A:Lorg/antivirus/ui/main/o;

.field private B:Lorg/antivirus/ui/main/j;

.field private C:Lorg/antivirus/tuneup/h;

.field private D:Z

.field private E:Z

.field private F:Landroid/os/Handler;

.field b:Ljava/util/ArrayList;

.field c:Ljava/util/HashMap;

.field d:Lorg/antivirus/core/scanners/g;

.field e:Lorg/antivirus/AVService$LocalBinder;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field h:Z

.field public i:Landroid/content/ServiceConnection;

.field private j:Lorg/antivirus/core/b/a;

.field private k:Z

.field private l:Landroid/widget/ProgressBar;

.field private n:Landroid/widget/ImageView;

.field private final o:I

.field private final p:I

.field private final q:I

.field private final r:I

.field private final s:I

.field private t:Landroid/widget/Button;

.field private u:Z

.field private v:Z

.field private w:Lorg/antivirus/ui/main/l;

.field private x:Lorg/antivirus/ui/main/o;

.field private y:Lorg/antivirus/ui/main/o;

.field private z:Lorg/antivirus/ui/main/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/antivirus/core/scanners/c;->a:Lorg/antivirus/core/scanners/c;

    sput-object v0, Lorg/antivirus/ui/main/AntivirusMainScreen;->a:Lorg/antivirus/core/scanners/c;

    const/4 v0, 0x0

    sput v0, Lorg/antivirus/ui/main/AntivirusMainScreen;->m:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/antivirus/ui/BaseToolActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->c:Ljava/util/HashMap;

    iput-object v1, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->g:Landroid/widget/TextView;

    iput-object v1, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->n:Landroid/widget/ImageView;

    const/4 v0, 0x1

    iput v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->o:I

    const/4 v0, 0x2

    iput v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->p:I

    const/4 v0, 0x3

    iput v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->q:I

    const/4 v0, 0x4

    iput v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->r:I

    const/4 v0, 0x5

    iput v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->s:I

    iput-object v1, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->t:Landroid/widget/Button;

    iput-boolean v2, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->u:Z

    iput-boolean v2, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->v:Z

    sget-object v0, Lorg/antivirus/ui/main/l;->a:Lorg/antivirus/ui/main/l;

    iput-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->w:Lorg/antivirus/ui/main/l;

    iput-object v1, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->x:Lorg/antivirus/ui/main/o;

    iput-object v1, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->y:Lorg/antivirus/ui/main/o;

    iput-object v1, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->z:Lorg/antivirus/ui/main/o;

    iput-object v1, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->A:Lorg/antivirus/ui/main/o;

    sget-object v0, Lorg/antivirus/ui/main/j;->b:Lorg/antivirus/ui/main/j;

    iput-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->B:Lorg/antivirus/ui/main/j;

    iput-boolean v2, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->D:Z

    iput-boolean v2, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->E:Z

    iput-boolean v2, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->h:Z

    new-instance v0, Lorg/antivirus/ui/main/b;

    invoke-direct {v0, p0}, Lorg/antivirus/ui/main/b;-><init>(Lorg/antivirus/ui/main/AntivirusMainScreen;)V

    iput-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->i:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lorg/antivirus/ui/main/AntivirusMainScreen;Lorg/antivirus/core/b/a;)Lorg/antivirus/core/b/a;
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->j:Lorg/antivirus/core/b/a;

    return-object p1
.end method

.method private a(Landroid/content/Intent;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const-string v0, "avmsStartScan"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "ScannerClient"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    const-string v1, "ScannerClient"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v1, "StartedFromWidget"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->v:Z

    const-string v1, "StartedFromWidget"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v1, "avmsStartScan"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->a(Z)V

    :cond_1
    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->d:Lorg/antivirus/core/scanners/g;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->d:Lorg/antivirus/core/scanners/g;

    iget-wide v0, v0, Lorg/antivirus/core/scanners/g;->b:J

    iget-object v2, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->d:Lorg/antivirus/core/scanners/g;

    invoke-virtual {v2}, Lorg/antivirus/core/scanners/g;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Lorg/antivirus/ui/main/n;->c:Lorg/antivirus/ui/main/n;

    :goto_0
    sget-object v1, Lorg/antivirus/ui/main/i;->b:[I

    invoke-virtual {v0}, Lorg/antivirus/ui/main/n;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t handle: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_2
    if-nez v2, :cond_3

    cmp-long v3, v4, v0

    if-eqz v3, :cond_4

    :cond_3
    if-nez v2, :cond_4

    cmp-long v0, v4, v0

    if-gez v0, :cond_4

    sget-object v0, Lorg/antivirus/ui/main/n;->b:Lorg/antivirus/ui/main/n;

    goto :goto_0

    :cond_4
    sget-object v0, Lorg/antivirus/ui/main/n;->a:Lorg/antivirus/ui/main/n;

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->x:Lorg/antivirus/ui/main/o;

    const v1, 0x7f02006b

    invoke-virtual {v0, v1}, Lorg/antivirus/ui/main/o;->setBackgroundResource(I)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->x:Lorg/antivirus/ui/main/o;

    const v1, 0x7f02006c

    invoke-virtual {v0, v1}, Lorg/antivirus/ui/main/o;->setBackgroundResource(I)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->x:Lorg/antivirus/ui/main/o;

    const v1, 0x7f02006d

    invoke-virtual {v0, v1}, Lorg/antivirus/ui/main/o;->setBackgroundResource(I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lorg/antivirus/ui/main/AntivirusMainScreen;Landroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "level"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Lorg/antivirus/AVSettings;->isPowerSavingMode()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lorg/antivirus/AVSettings;->getPowerSavingModeThreshold()I

    move-result v2

    if-gt v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->D:Z

    invoke-direct {p0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->i()V

    goto :goto_0
.end method

.method private a(Lorg/antivirus/ui/main/n;)V
    .locals 2

    sget-object v0, Lorg/antivirus/ui/main/i;->b:[I

    invoke-virtual {p1}, Lorg/antivirus/ui/main/n;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->t:Landroid/widget/Button;

    const v1, 0x7f0901c0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    sget-object v0, Lorg/antivirus/ui/main/l;->b:Lorg/antivirus/ui/main/l;

    iput-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->w:Lorg/antivirus/ui/main/l;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->t:Landroid/widget/Button;

    const v1, 0x7f0901b0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    sget-object v0, Lorg/antivirus/ui/main/l;->a:Lorg/antivirus/ui/main/l;

    iput-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->w:Lorg/antivirus/ui/main/l;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Z)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    iget-boolean v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->u:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->x:Lorg/antivirus/ui/main/o;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/antivirus/ui/main/o;->setLowerText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->u:Z

    if-eqz p1, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/antivirus/AVService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "__SAC"

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "__SAD"

    sget-object v2, Lorg/antivirus/core/scanners/c;->a:Lorg/antivirus/core/scanners/c;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "__SAH"

    new-instance v2, Landroid/os/Messenger;

    new-instance v3, Lorg/antivirus/ui/main/m;

    invoke-direct {v3, p0}, Lorg/antivirus/ui/main/m;-><init>(Lorg/antivirus/ui/main/AntivirusMainScreen;)V

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->f:Landroid/widget/TextView;

    const v1, 0x7f09001f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->t:Landroid/widget/Button;

    const v1, 0x7f0900d5

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    sget-object v0, Lorg/antivirus/ui/main/l;->c:Lorg/antivirus/ui/main/l;

    iput-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->w:Lorg/antivirus/ui/main/l;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->d()V

    goto :goto_1
.end method

.method static synthetic a(Lorg/antivirus/ui/main/AntivirusMainScreen;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->u:Z

    return v0
.end method

.method static synthetic a(Lorg/antivirus/ui/main/AntivirusMainScreen;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->k:Z

    return p1
.end method

.method static synthetic b(I)I
    .locals 0

    sput p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->m:I

    return p0
.end method

.method static synthetic b(Lorg/antivirus/ui/main/AntivirusMainScreen;)V
    .locals 0

    invoke-direct {p0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->k()V

    return-void
.end method

.method static synthetic c()I
    .locals 1

    sget v0, Lorg/antivirus/ui/main/AntivirusMainScreen;->m:I

    return v0
.end method

.method static synthetic c(Lorg/antivirus/ui/main/AntivirusMainScreen;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->l:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private d()V
    .locals 6

    const/4 v5, 0x0

    const v0, 0x7f09008d

    iget-boolean v1, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->k:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->e:Lorg/antivirus/AVService$LocalBinder;

    new-instance v2, Landroid/os/Messenger;

    new-instance v3, Lorg/antivirus/ui/main/m;

    invoke-direct {v3, p0}, Lorg/antivirus/ui/main/m;-><init>(Lorg/antivirus/ui/main/AntivirusMainScreen;)V

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    sget-object v3, Lorg/antivirus/core/scanners/m;->b:Lorg/antivirus/core/scanners/m;

    sget-object v4, Lorg/antivirus/ui/main/AntivirusMainScreen;->a:Lorg/antivirus/core/scanners/c;

    invoke-virtual {v1, v2, v3, v4}, Lorg/antivirus/AVService$LocalBinder;->setHandler(Landroid/os/Messenger;Lorg/antivirus/core/scanners/m;Lorg/antivirus/core/scanners/c;)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    const v0, 0x7f09001f

    :goto_0
    :sswitch_0
    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_1
    return-void

    :sswitch_1
    const v0, 0x7f09008c

    goto :goto_0

    :sswitch_2
    const v0, 0x7f09008e

    goto :goto_0

    :sswitch_3
    iget-boolean v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->v:Z

    if-eqz v0, :cond_1

    iput-boolean v5, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->v:Z

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->k()V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_3
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x4 -> :sswitch_0
        0x8 -> :sswitch_0
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method static synthetic d(Lorg/antivirus/ui/main/AntivirusMainScreen;)V
    .locals 0

    invoke-direct {p0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->e()V

    return-void
.end method

.method private e()V
    .locals 7

    const v6, 0x7f020033

    const v2, 0x7f020032

    const/4 v5, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->e:Lorg/antivirus/AVService$LocalBinder;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->e:Lorg/antivirus/AVService$LocalBinder;

    invoke-virtual {v0}, Lorg/antivirus/AVService$LocalBinder;->getFeatures()Lorg/antivirus/core/b/a;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->j:Lorg/antivirus/core/b/a;

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->j:Lorg/antivirus/core/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->j:Lorg/antivirus/core/b/a;

    invoke-virtual {v0}, Lorg/antivirus/core/b/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v4, ""

    move-object v0, p0

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lorg/antivirus/ui/main/AntivirusMainScreen;->a(ZIILjava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const-string v4, ""

    move-object v0, p0

    move v2, v6

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Lorg/antivirus/ui/main/AntivirusMainScreen;->a(ZIILjava/lang/String;Z)V

    goto :goto_0
.end method

.method static synthetic e(Lorg/antivirus/ui/main/AntivirusMainScreen;)V
    .locals 0

    invoke-direct {p0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->d()V

    return-void
.end method

.method static synthetic f(Lorg/antivirus/ui/main/AntivirusMainScreen;)Lorg/antivirus/ui/main/j;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->B:Lorg/antivirus/ui/main/j;

    return-object v0
.end method

.method private f()V
    .locals 2

    sget-boolean v0, Lorg/antivirus/applocker/a;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->y:Lorg/antivirus/ui/main/o;

    const v1, 0x7f020069

    invoke-virtual {v0, v1}, Lorg/antivirus/ui/main/o;->setBackgroundResource(I)V

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->y:Lorg/antivirus/ui/main/o;

    const v1, 0x7f0901c8

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/antivirus/ui/main/o;->setLowerText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->y:Lorg/antivirus/ui/main/o;

    const v1, 0x7f02006a

    invoke-virtual {v0, v1}, Lorg/antivirus/ui/main/o;->setBackgroundResource(I)V

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->y:Lorg/antivirus/ui/main/o;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/antivirus/ui/main/o;->setLowerText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private g()V
    .locals 2

    invoke-static {p0}, Lorg/antivirus/AVSettings;->getFindRUser(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-static {p0}, Lorg/antivirus/AVSettings;->getFindRUser(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/antivirus/ui/main/j;->a:Lorg/antivirus/ui/main/j;

    iput-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->B:Lorg/antivirus/ui/main/j;

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->A:Lorg/antivirus/ui/main/o;

    const v1, 0x7f020066

    invoke-virtual {v0, v1}, Lorg/antivirus/ui/main/o;->setBackgroundResource(I)V

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->A:Lorg/antivirus/ui/main/o;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/antivirus/ui/main/o;->setLowerText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lorg/antivirus/ui/main/j;->b:Lorg/antivirus/ui/main/j;

    iput-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->B:Lorg/antivirus/ui/main/j;

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->A:Lorg/antivirus/ui/main/o;

    const v1, 0x7f020065

    invoke-virtual {v0, v1}, Lorg/antivirus/ui/main/o;->setBackgroundResource(I)V

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->A:Lorg/antivirus/ui/main/o;

    const v1, 0x7f0901c7

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/antivirus/ui/main/o;->setLowerText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private h()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iput-boolean v5, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->E:Z

    invoke-static {}, Lorg/antivirus/tuneup/ba;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/antivirus/tuneup/ba;->a(Landroid/content/Context;)Lorg/antivirus/tuneup/ba;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/antivirus/tuneup/ba;->a(Z)[D

    move-result-object v0

    if-eqz v0, :cond_0

    aget-wide v1, v0, v5

    const-wide/high16 v3, 0x4059

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_1

    iput-boolean v6, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->E:Z

    iput-boolean v6, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->h:Z

    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->i()V

    return-void

    :cond_1
    invoke-static {}, Lorg/antivirus/AVSettings;->isQuotaWarningNotificationOn()Z

    move-result v1

    if-eqz v1, :cond_0

    aget-wide v0, v0, v5

    invoke-static {}, Lorg/antivirus/AVSettings;->getDataPlanNotificationThreshold()I

    move-result v2

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    iput-boolean v6, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->E:Z

    goto :goto_0
.end method

.method private i()V
    .locals 3

    const v2, 0x7f0901c5

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->z:Lorg/antivirus/ui/main/o;

    const v1, 0x7f020067

    invoke-virtual {v0, v1}, Lorg/antivirus/ui/main/o;->setBackgroundResource(I)V

    iget-boolean v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->D:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->E:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->z:Lorg/antivirus/ui/main/o;

    const v1, 0x7f0901c6

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/antivirus/ui/main/o;->setLowerText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->D:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->z:Lorg/antivirus/ui/main/o;

    const v1, 0x7f0901c4

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/antivirus/ui/main/o;->setLowerText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->E:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->h:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->z:Lorg/antivirus/ui/main/o;

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070008

    invoke-virtual {v0, v1, v2}, Lorg/antivirus/ui/main/o;->a(Ljava/lang/CharSequence;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->z:Lorg/antivirus/ui/main/o;

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f07003d

    invoke-virtual {v0, v1, v2}, Lorg/antivirus/ui/main/o;->a(Ljava/lang/CharSequence;I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->z:Lorg/antivirus/ui/main/o;

    const v1, 0x7f020068

    invoke-virtual {v0, v1}, Lorg/antivirus/ui/main/o;->setBackgroundResource(I)V

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->z:Lorg/antivirus/ui/main/o;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/antivirus/ui/main/o;->setLowerText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private j()V
    .locals 4

    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->u:Z

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/antivirus/AVService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "__SAC"

    const/16 v2, 0x1b

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "__SAD"

    sget-object v2, Lorg/antivirus/ui/main/AntivirusMainScreen;->a:Lorg/antivirus/core/scanners/c;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->t:Landroid/widget/Button;

    const v1, 0x7f0901b0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    sget-object v0, Lorg/antivirus/ui/main/l;->a:Lorg/antivirus/ui/main/l;

    iput-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->w:Lorg/antivirus/ui/main/l;

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->l:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-direct {p0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->l()V

    return-void
.end method

.method private k()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->u:Z

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v0, Lorg/antivirus/ui/main/l;->b:Lorg/antivirus/ui/main/l;

    iput-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->w:Lorg/antivirus/ui/main/l;

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->l:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-direct {p0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->l()V

    invoke-virtual {p0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->onResume()V

    return-void
.end method

.method private l()V
    .locals 9

    const-wide/16 v7, 0x0

    const v6, 0x7f0901bd

    const/16 v5, 0x8

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->e:Lorg/antivirus/AVService$LocalBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->e:Lorg/antivirus/AVService$LocalBinder;

    sget-object v1, Lorg/antivirus/core/scanners/c;->a:Lorg/antivirus/core/scanners/c;

    invoke-virtual {v0, v1}, Lorg/antivirus/AVService$LocalBinder;->getScanResults(Lorg/antivirus/core/scanners/c;)Lorg/antivirus/core/scanners/g;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->d:Lorg/antivirus/core/scanners/g;

    :cond_0
    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->d:Lorg/antivirus/core/scanners/g;

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->d:Lorg/antivirus/core/scanners/g;

    iget-wide v0, v0, Lorg/antivirus/core/scanners/g;->b:J

    iget-object v2, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->d:Lorg/antivirus/core/scanners/g;

    invoke-virtual {v2}, Lorg/antivirus/core/scanners/g;->a()Z

    move-result v2

    iget-object v3, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->g:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v2, :cond_4

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->d:Lorg/antivirus/core/scanners/g;

    invoke-virtual {v0}, Lorg/antivirus/core/scanners/g;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_3

    iget-object v1, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->g:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f0901c1

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->n:Landroid/widget/ImageView;

    const v1, 0x7f020048

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v0, Lorg/antivirus/ui/main/n;->c:Lorg/antivirus/ui/main/n;

    invoke-direct {p0, v0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->a(Lorg/antivirus/ui/main/n;)V

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->x:Lorg/antivirus/ui/main/o;

    const v1, 0x7f02006d

    invoke-virtual {v0, v1}, Lorg/antivirus/ui/main/o;->setBackgroundResource(I)V

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->x:Lorg/antivirus/ui/main/o;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/antivirus/ui/main/o;->setLowerText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->g:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f0901c2

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    if-nez v2, :cond_5

    cmp-long v3, v7, v0

    if-nez v3, :cond_5

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->n:Landroid/widget/ImageView;

    const v1, 0x7f020038

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    sget-object v0, Lorg/antivirus/ui/main/n;->a:Lorg/antivirus/ui/main/n;

    invoke-direct {p0, v0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->a(Lorg/antivirus/ui/main/n;)V

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->x:Lorg/antivirus/ui/main/o;

    const v1, 0x7f02006b

    invoke-virtual {v0, v1}, Lorg/antivirus/ui/main/o;->setBackgroundResource(I)V

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->x:Lorg/antivirus/ui/main/o;

    invoke-static {v6}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/antivirus/ui/main/o;->setLowerText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    if-nez v2, :cond_1

    cmp-long v2, v7, v0

    if-gez v2, :cond_1

    iget-object v2, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->n:Landroid/widget/ImageView;

    const v3, 0x7f020039

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0901c3

    invoke-static {v3}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lorg/antivirus/ui/main/n;->b:Lorg/antivirus/ui/main/n;

    invoke-direct {p0, v0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->a(Lorg/antivirus/ui/main/n;)V

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->x:Lorg/antivirus/ui/main/o;

    const v1, 0x7f02006c

    invoke-virtual {v0, v1}, Lorg/antivirus/ui/main/o;->setBackgroundResource(I)V

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->x:Lorg/antivirus/ui/main/o;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/antivirus/ui/main/o;->setLowerText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private m()V
    .locals 3

    invoke-static {p0}, Lorg/antivirus/core/a/n;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0900d4

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/antivirus/AVService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "__SAC"

    const/16 v2, 0x77

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const-string v0, "app_landing"

    const-string v1, "upgrade"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private n()V
    .locals 3

    const-string v0, "app_landing"

    const-string v1, "language"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/antivirus/ui/settings/LanguageSelector;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lorg/antivirus/ui/main/AntivirusMainScreen;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private o()V
    .locals 5

    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.extra.EMAIL"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.SUBJECT"

    const v2, 0x7f090089

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Lorg/antivirus/core/EngineSettings;

    invoke-direct {v0, p0}, Lorg/antivirus/core/EngineSettings;-><init>(Landroid/content/Context;)V

    const v3, 0x7f09008a

    invoke-static {v3}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "[url]"

    invoke-virtual {v0}, Lorg/antivirus/core/EngineSettings;->getAWSserver()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "aws.droidsecurity.com"

    :goto_0
    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v0, "text/html"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Email:"

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->startActivity(Landroid/content/Intent;)V

    const-string v0, "app_landing"

    const-string v1, "share"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "www.avgmobilation.com"

    goto :goto_0
.end method

.method private p()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->j:Lorg/antivirus/core/b/a;

    iget-boolean v0, v0, Lorg/antivirus/core/b/a;->l:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/antivirus/ui/license/LicenseEnteringActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "title"

    const v2, 0x7f09007e

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "firest_edit_text"

    const v2, 0x7f09007f

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->startActivity(Landroid/content/Intent;)V

    const-string v0, "app_landing"

    const-string v1, "license"

    invoke-static {p0, v0, v1, v3}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/antivirus/ui/help/Help;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->startActivity(Landroid/content/Intent;)V

    const-string v0, "app_landing"

    const-string v1, "help"

    invoke-static {p0, v0, v1, v3}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private q()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/antivirus/ui/help/Help;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->startActivity(Landroid/content/Intent;)V

    const-string v0, "app_landing"

    const-string v1, "help"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final a(I)V
    .locals 2

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const v1, 0x7f090087

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->m()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v1, 0x7f09008b

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->m()V

    goto :goto_0

    :cond_2
    const v1, 0x7f090025

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->n()V

    goto :goto_0

    :cond_3
    const v1, 0x7f090088

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->o()V

    goto :goto_0

    :cond_4
    const v1, 0x7f09007e

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    invoke-direct {p0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->p()V

    goto :goto_0

    :cond_5
    const v1, 0x7f090006

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->q()V

    goto :goto_0
.end method

.method protected final a(Landroid/view/View;)V
    .locals 1

    new-instance v0, Lorg/antivirus/ui/PopupMenuHoneycomb;

    invoke-direct {v0, p0, p1}, Lorg/antivirus/ui/PopupMenuHoneycomb;-><init>(Lorg/antivirus/ui/IhandleMenuItem;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->addMenu(Ljava/lang/Object;)Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/antivirus/ui/PopupMenuHoneycomb;->show()V

    return-void
.end method

.method public addMenu(Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 8

    const v7, 0x7f090006

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x4

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->j:Lorg/antivirus/core/b/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    instance-of v0, p1, Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->j:Lorg/antivirus/core/b/a;

    invoke-virtual {v0}, Lorg/antivirus/core/b/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->b:Ljava/util/ArrayList;

    const v2, 0x7f090087

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v3, 0x7f090087

    invoke-static {v3}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v1, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->b:Ljava/util/ArrayList;

    const v2, 0x7f090025

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f090025

    invoke-static {v3}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->b:Ljava/util/ArrayList;

    const v1, 0x7f090088

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->c:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v3, 0x7f090088

    invoke-static {v3}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->j:Lorg/antivirus/core/b/a;

    iget-boolean v0, v0, Lorg/antivirus/core/b/a;->l:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->b:Ljava/util/ArrayList;

    const v2, 0x7f09007e

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f09007e

    invoke-static {v3}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->b:Ljava/util/ArrayList;

    invoke-static {v7}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->c:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    invoke-static {v7}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_2
    const-string v0, "app_landing"

    const-string v1, "menu_opened"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->b:Ljava/util/ArrayList;

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->j:Lorg/antivirus/core/b/a;

    iget v0, v0, Lorg/antivirus/core/b/a;->n:I

    const/16 v2, 0x1e

    if-le v0, v2, :cond_3

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->j:Lorg/antivirus/core/b/a;

    iget-boolean v0, v0, Lorg/antivirus/core/b/a;->m:Z

    if-eqz v0, :cond_f

    :cond_3
    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->b:Ljava/util/ArrayList;

    const v2, 0x7f09008b

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v3, 0x7f09008b

    invoke-static {v3}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->b:Ljava/util/ArrayList;

    invoke-static {v7}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    invoke-static {v7}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    instance-of v0, p1, Landroid/view/Menu;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->j:Lorg/antivirus/core/b/a;

    invoke-virtual {v0}, Lorg/antivirus/core/b/a;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Landroid/view/Menu;

    const/4 v1, 0x0

    const v2, 0x7f090087

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v4, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_6
    :goto_3
    move-object v0, p1

    check-cast v0, Landroid/view/Menu;

    const v1, 0x7f090025

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v5, v5, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-object v0, p1

    check-cast v0, Landroid/view/Menu;

    const v1, 0x7f090088

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v5, v6, v6, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->j:Lorg/antivirus/core/b/a;

    iget-boolean v0, v0, Lorg/antivirus/core/b/a;->l:Z

    if-nez v0, :cond_7

    move-object v0, p1

    check-cast v0, Landroid/view/Menu;

    const v1, 0x7f09007e

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v6, v3, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_7
    check-cast p1, Landroid/view/Menu;

    const/4 v0, 0x5

    const/4 v1, 0x5

    invoke-static {v7}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_8
    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->j:Lorg/antivirus/core/b/a;

    iget v0, v0, Lorg/antivirus/core/b/a;->n:I

    const/16 v1, 0x1e

    if-le v0, v1, :cond_9

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->j:Lorg/antivirus/core/b/a;

    iget-boolean v0, v0, Lorg/antivirus/core/b/a;->m:Z

    if-eqz v0, :cond_6

    :cond_9
    move-object v0, p1

    check-cast v0, Landroid/view/Menu;

    const/4 v1, 0x0

    const v2, 0x7f09008b

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v4, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_3

    :cond_a
    instance-of v0, p1, Lorg/antivirus/ui/PopupMenuHoneycomb;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->j:Lorg/antivirus/core/b/a;

    invoke-virtual {v0}, Lorg/antivirus/core/b/a;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    move-object v0, p1

    check-cast v0, Lorg/antivirus/ui/PopupMenuHoneycomb;

    const/4 v1, 0x0

    const v2, 0x7f090087

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v3, v2}, Lorg/antivirus/ui/PopupMenuHoneycomb;->add(IIILjava/lang/CharSequence;)V

    :cond_b
    :goto_4
    move-object v0, p1

    check-cast v0, Lorg/antivirus/ui/PopupMenuHoneycomb;

    const v1, 0x7f090025

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v5, v5, v1}, Lorg/antivirus/ui/PopupMenuHoneycomb;->add(IIILjava/lang/CharSequence;)V

    move-object v0, p1

    check-cast v0, Lorg/antivirus/ui/PopupMenuHoneycomb;

    const v1, 0x7f090088

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v6, v6, v1}, Lorg/antivirus/ui/PopupMenuHoneycomb;->add(IIILjava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->j:Lorg/antivirus/core/b/a;

    iget-boolean v0, v0, Lorg/antivirus/core/b/a;->l:Z

    if-nez v0, :cond_c

    move-object v0, p1

    check-cast v0, Lorg/antivirus/ui/PopupMenuHoneycomb;

    const v1, 0x7f09007e

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v3, v3, v1}, Lorg/antivirus/ui/PopupMenuHoneycomb;->add(IIILjava/lang/CharSequence;)V

    :cond_c
    check-cast p1, Lorg/antivirus/ui/PopupMenuHoneycomb;

    const/4 v0, 0x5

    const/4 v1, 0x5

    invoke-static {v7}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v0, v1, v2}, Lorg/antivirus/ui/PopupMenuHoneycomb;->add(IIILjava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_d
    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->j:Lorg/antivirus/core/b/a;

    iget v0, v0, Lorg/antivirus/core/b/a;->n:I

    const/16 v1, 0x1e

    if-le v0, v1, :cond_e

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->j:Lorg/antivirus/core/b/a;

    iget-boolean v0, v0, Lorg/antivirus/core/b/a;->m:Z

    if-eqz v0, :cond_b

    :cond_e
    move-object v0, p1

    check-cast v0, Lorg/antivirus/ui/PopupMenuHoneycomb;

    const/4 v1, 0x0

    const v2, 0x7f09008b

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v3, v2}, Lorg/antivirus/ui/PopupMenuHoneycomb;->add(IIILjava/lang/CharSequence;)V

    goto :goto_4

    :cond_f
    move-object v0, v1

    goto/16 :goto_1
.end method

.method public handleMenuItem(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lorg/antivirus/core/Logger;->errorBadAgrument()V

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    invoke-direct {p0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->m()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->n()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->o()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->p()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->q()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->finish()V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lorg/antivirus/ui/BaseToolActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    invoke-virtual {p0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->finish()V

    goto :goto_0
.end method

.method public onClickMainButton(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lorg/antivirus/ui/main/l;->a:Lorg/antivirus/ui/main/l;

    iget-object v1, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->w:Lorg/antivirus/ui/main/l;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->a(Z)V

    const-string v0, "app_landing"

    const-string v1, "scan_now"

    invoke-static {p0, v0, v1, v3}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lorg/antivirus/ui/main/l;->b:Lorg/antivirus/ui/main/l;

    iget-object v1, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->w:Lorg/antivirus/ui/main/l;

    if-ne v0, v1, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ScannerClient"

    sget-object v2, Lorg/antivirus/ui/main/AntivirusMainScreen;->a:Lorg/antivirus/core/scanners/c;

    invoke-virtual {v2}, Lorg/antivirus/core/scanners/c;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->startActivity(Landroid/content/Intent;)V

    const-string v0, "app_landing"

    const-string v1, "view_scan_results"

    invoke-static {p0, v0, v1, v3}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/antivirus/ui/main/l;->c:Lorg/antivirus/ui/main/l;

    iget-object v1, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->w:Lorg/antivirus/ui/main/l;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->j()V

    const-string v0, "app_landing"

    const-string v1, "stop_scan"

    invoke-static {p0, v0, v1, v3}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->setContentView(I)V

    const v0, 0x7f080041

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->n:Landroid/widget/ImageView;

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->n:Landroid/widget/ImageView;

    new-instance v1, Lorg/antivirus/ui/main/c;

    invoke-direct {v1, p0}, Lorg/antivirus/ui/main/c;-><init>(Lorg/antivirus/ui/main/AntivirusMainScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08003a

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->t:Landroid/widget/Button;

    const v0, 0x7f080042

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->f:Landroid/widget/TextView;

    const v0, 0x7f080044

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->g:Landroid/widget/TextView;

    const v0, 0x7f080043

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->l:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->l:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/antivirus/AVService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->i:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v2}, Lorg/antivirus/ui/main/AntivirusMainScreen;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    new-instance v0, Lorg/antivirus/core/scanners/g;

    invoke-direct {v0}, Lorg/antivirus/core/scanners/g;-><init>()V

    iput-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->d:Lorg/antivirus/core/scanners/g;

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->d:Lorg/antivirus/core/scanners/g;

    invoke-virtual {v0, p0}, Lorg/antivirus/core/scanners/g;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "lcc"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/antivirus/AVSettings;->shouldShowActivationScreen()Z

    move-result v1

    if-eqz v1, :cond_4

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/antivirus/ui/main/ActivationActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "lcc"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    new-instance v0, Lorg/antivirus/ui/main/o;

    const v1, 0x7f08003c

    invoke-direct {v0, p0, v1}, Lorg/antivirus/ui/main/o;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->x:Lorg/antivirus/ui/main/o;

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->x:Lorg/antivirus/ui/main/o;

    const v1, 0x7f0901b1

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/antivirus/ui/main/o;->setUpperText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->x:Lorg/antivirus/ui/main/o;

    const v1, 0x7f02006b

    invoke-virtual {v0, v1}, Lorg/antivirus/ui/main/o;->setBackgroundResource(I)V

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->x:Lorg/antivirus/ui/main/o;

    new-instance v1, Lorg/antivirus/ui/main/f;

    invoke-direct {v1, p0}, Lorg/antivirus/ui/main/f;-><init>(Lorg/antivirus/ui/main/AntivirusMainScreen;)V

    invoke-virtual {v0, v1}, Lorg/antivirus/ui/main/o;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lorg/antivirus/ui/main/o;

    const v1, 0x7f08003d

    invoke-direct {v0, p0, v1}, Lorg/antivirus/ui/main/o;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->z:Lorg/antivirus/ui/main/o;

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->z:Lorg/antivirus/ui/main/o;

    const v1, 0x7f0901a2

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/antivirus/ui/main/o;->setUpperText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->z:Lorg/antivirus/ui/main/o;

    new-instance v1, Lorg/antivirus/ui/main/g;

    invoke-direct {v1, p0}, Lorg/antivirus/ui/main/g;-><init>(Lorg/antivirus/ui/main/AntivirusMainScreen;)V

    invoke-virtual {v0, v1}, Lorg/antivirus/ui/main/o;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lorg/antivirus/tuneup/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/antivirus/tuneup/h;-><init>(I)V

    iput-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->C:Lorg/antivirus/tuneup/h;

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->F:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Lorg/antivirus/ui/main/h;

    invoke-direct {v0, p0}, Lorg/antivirus/ui/main/h;-><init>(Lorg/antivirus/ui/main/AntivirusMainScreen;)V

    iput-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->F:Landroid/os/Handler;

    :cond_1
    invoke-direct {p0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->h()V

    new-instance v0, Lorg/antivirus/ui/main/o;

    const v1, 0x7f08003e

    invoke-direct {v0, p0, v1}, Lorg/antivirus/ui/main/o;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->A:Lorg/antivirus/ui/main/o;

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->A:Lorg/antivirus/ui/main/o;

    const v1, 0x7f090018

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/antivirus/ui/main/o;->setUpperText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->g()V

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->A:Lorg/antivirus/ui/main/o;

    new-instance v1, Lorg/antivirus/ui/main/e;

    invoke-direct {v1, p0}, Lorg/antivirus/ui/main/e;-><init>(Lorg/antivirus/ui/main/AntivirusMainScreen;)V

    invoke-virtual {v0, v1}, Lorg/antivirus/ui/main/o;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lorg/antivirus/ui/main/o;

    const v1, 0x7f08003f

    invoke-direct {v0, p0, v1}, Lorg/antivirus/ui/main/o;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->y:Lorg/antivirus/ui/main/o;

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->y:Lorg/antivirus/ui/main/o;

    const v1, 0x7f0901b2

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/antivirus/ui/main/o;->setUpperText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->f()V

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->y:Lorg/antivirus/ui/main/o;

    new-instance v1, Lorg/antivirus/ui/main/d;

    invoke-direct {v1, p0}, Lorg/antivirus/ui/main/d;-><init>(Lorg/antivirus/ui/main/AntivirusMainScreen;)V

    invoke-virtual {v0, v1}, Lorg/antivirus/ui/main/o;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-static {v0}, Lorg/antivirus/core/compatibility/DonutTools;->getDisplayDensity(Landroid/view/Display;)I

    move-result v0

    invoke-virtual {p0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v2, v1, :cond_6

    const/16 v1, 0xa0

    if-ne v1, v0, :cond_6

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->x:Lorg/antivirus/ui/main/o;

    invoke-virtual {v0}, Lorg/antivirus/ui/main/o;->getLowerTextSizeInPx()F

    move-result v0

    iget-object v1, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->x:Lorg/antivirus/ui/main/o;

    invoke-virtual {v1, v0}, Lorg/antivirus/ui/main/o;->setUpperTextSize$255e752(F)V

    iget-object v1, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->z:Lorg/antivirus/ui/main/o;

    invoke-virtual {v1, v0}, Lorg/antivirus/ui/main/o;->setUpperTextSize$255e752(F)V

    iget-object v1, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->A:Lorg/antivirus/ui/main/o;

    invoke-virtual {v1, v0}, Lorg/antivirus/ui/main/o;->setUpperTextSize$255e752(F)V

    iget-object v1, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->y:Lorg/antivirus/ui/main/o;

    invoke-virtual {v1, v0}, Lorg/antivirus/ui/main/o;->setUpperTextSize$255e752(F)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antivirus/ui/main/k;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->x:Lorg/antivirus/ui/main/o;

    iget-object v2, v0, Lorg/antivirus/ui/main/k;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lorg/antivirus/ui/main/o;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->x:Lorg/antivirus/ui/main/o;

    iget-object v2, v0, Lorg/antivirus/ui/main/k;->b:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lorg/antivirus/ui/main/o;->setLowerText(Ljava/lang/CharSequence;)V

    iget-boolean v1, v0, Lorg/antivirus/ui/main/k;->c:Z

    iput-boolean v1, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->u:Z

    iget-object v1, v0, Lorg/antivirus/ui/main/k;->d:Lorg/antivirus/ui/main/l;

    iput-object v1, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->w:Lorg/antivirus/ui/main/l;

    iget-object v1, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->t:Landroid/widget/Button;

    iget-object v0, v0, Lorg/antivirus/ui/main/k;->e:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-super {p0, p1}, Lorg/antivirus/ui/BaseToolActivity;->onCreate(Landroid/os/Bundle;)V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_4
    new-instance v1, Lorg/antivirus/core/b/g;

    invoke-direct {v1, p0}, Lorg/antivirus/core/b/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lorg/antivirus/core/b/g;->a()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1}, Lorg/antivirus/core/b/g;->b()V

    :cond_5
    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/antivirus/ui/license/LicenseEnteringActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "lcc"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "title"

    const v2, 0x7f09007e

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "firest_edit_text"

    const v2, 0x7f09007f

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lorg/antivirus/ui/main/AntivirusMainScreen;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x78

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->x:Lorg/antivirus/ui/main/o;

    invoke-virtual {v0}, Lorg/antivirus/ui/main/o;->getLowerTextSizeInPx()F

    move-result v0

    iget-object v1, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->x:Lorg/antivirus/ui/main/o;

    invoke-virtual {v1, v0}, Lorg/antivirus/ui/main/o;->setUpperTextSize$255e752(F)V

    iget-object v1, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->z:Lorg/antivirus/ui/main/o;

    invoke-virtual {v1, v0}, Lorg/antivirus/ui/main/o;->setUpperTextSize$255e752(F)V

    iget-object v1, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->A:Lorg/antivirus/ui/main/o;

    invoke-virtual {v1, v0}, Lorg/antivirus/ui/main/o;->setUpperTextSize$255e752(F)V

    iget-object v1, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->y:Lorg/antivirus/ui/main/o;

    invoke-virtual {v1, v0}, Lorg/antivirus/ui/main/o;->setUpperTextSize$255e752(F)V

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lorg/antivirus/ui/BaseToolActivity;->onDestroy()V

    iget-boolean v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->i:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->k:Z

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->u:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->j()V

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/antivirus/ui/BaseToolActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    invoke-virtual {p0, p2}, Lorg/antivirus/ui/main/AntivirusMainScreen;->handleMenuItem(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/antivirus/ui/main/AntivirusMainScreen;->a(Landroid/content/Intent;)V

    invoke-super {p0, p1}, Lorg/antivirus/ui/BaseToolActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->C:Lorg/antivirus/tuneup/h;

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->C:Lorg/antivirus/tuneup/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/antivirus/tuneup/h;->a(Landroid/os/Handler;)V

    invoke-super {p0}, Lorg/antivirus/ui/BaseToolActivity;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/antivirus/ui/main/AntivirusMainScreen;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    invoke-virtual {p0, p1}, Lorg/antivirus/ui/main/AntivirusMainScreen;->addMenu(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    const/16 v4, 0x8

    invoke-super {p0}, Lorg/antivirus/ui/BaseToolActivity;->onResume()V

    invoke-virtual {p0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from_notification"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "app_landing"

    const-string v2, "opened_from_notification"

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "from_notification"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->e()V

    invoke-direct {p0, v0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->a(Landroid/content/Intent;)V

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->C:Lorg/antivirus/tuneup/h;

    iget-object v1, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->F:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/antivirus/tuneup/h;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->C:Lorg/antivirus/tuneup/h;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lorg/antivirus/ui/main/AntivirusMainScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v0, Lorg/antivirus/ui/main/l;->c:Lorg/antivirus/ui/main/l;

    iget-object v1, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->w:Lorg/antivirus/ui/main/l;

    if-eq v0, v1, :cond_2

    iget-boolean v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->u:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->l()V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->h()V

    invoke-direct {p0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->g()V

    invoke-direct {p0}, Lorg/antivirus/ui/main/AntivirusMainScreen;->f()V

    return-void

    :cond_2
    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->u:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lorg/antivirus/ui/main/k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/antivirus/ui/main/k;-><init>(Lorg/antivirus/ui/main/AntivirusMainScreen;B)V

    iget-object v1, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->x:Lorg/antivirus/ui/main/o;

    invoke-virtual {v1}, Lorg/antivirus/ui/main/o;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lorg/antivirus/ui/main/k;->a:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->x:Lorg/antivirus/ui/main/o;

    invoke-virtual {v1}, Lorg/antivirus/ui/main/o;->getLowerText()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lorg/antivirus/ui/main/k;->b:Ljava/lang/CharSequence;

    iget-boolean v1, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->u:Z

    iput-boolean v1, v0, Lorg/antivirus/ui/main/k;->c:Z

    iget-object v1, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->w:Lorg/antivirus/ui/main/l;

    iput-object v1, v0, Lorg/antivirus/ui/main/k;->d:Lorg/antivirus/ui/main/l;

    iget-object v1, p0, Lorg/antivirus/ui/main/AntivirusMainScreen;->t:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lorg/antivirus/ui/main/k;->e:Ljava/lang/CharSequence;

    return-object v0
.end method
