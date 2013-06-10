.class public Lorg/antivirus/ui/protection/ProtectionActivity;
.super Lorg/antivirus/ui/BaseToolListActivity;


# static fields
.field private static r:Z


# instance fields
.field a:Landroid/content/BroadcastReceiver;

.field private final b:I

.field private final c:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:I

.field private m:Lorg/antivirus/ui/protection/ab;

.field private n:Landroid/app/AlertDialog;

.field private o:Landroid/app/AlertDialog;

.field private p:Landroid/view/View;

.field private q:Landroid/os/Handler;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:I

.field private v:Lorg/antivirus/ui/WebViewAdsManager;

.field private w:Lorg/antivirus/core/scanners/g;

.field private x:Z

.field private y:Ljava/lang/Runnable;

.field private z:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lorg/antivirus/ui/protection/ProtectionActivity;->r:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/antivirus/ui/BaseToolListActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->b:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->c:I

    const/4 v0, 0x2

    iput v0, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->f:I

    const/4 v0, 0x3

    iput v0, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->g:I

    const/4 v0, 0x4

    iput v0, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->h:I

    const/4 v0, 0x5

    iput v0, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->i:I

    const/4 v0, 0x6

    iput v0, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->j:I

    const/4 v0, 0x7

    iput v0, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->k:I

    const/16 v0, 0x8

    iput v0, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->l:I

    new-instance v0, Lorg/antivirus/ui/protection/p;

    invoke-direct {v0, p0}, Lorg/antivirus/ui/protection/p;-><init>(Lorg/antivirus/ui/protection/ProtectionActivity;)V

    iput-object v0, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->y:Ljava/lang/Runnable;

    new-instance v0, Lorg/antivirus/ui/protection/q;

    invoke-direct {v0, p0}, Lorg/antivirus/ui/protection/q;-><init>(Lorg/antivirus/ui/protection/ProtectionActivity;)V

    iput-object v0, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->a:Landroid/content/BroadcastReceiver;

    new-instance v0, Lorg/antivirus/ui/protection/v;

    invoke-direct {v0, p0}, Lorg/antivirus/ui/protection/v;-><init>(Lorg/antivirus/ui/protection/ProtectionActivity;)V

    iput-object v0, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->z:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lorg/antivirus/ui/protection/ProtectionActivity;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->o:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic a(Lorg/antivirus/ui/protection/ProtectionActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->n:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic a(Lorg/antivirus/ui/protection/ProtectionActivity;Landroid/content/Context;)Lorg/antivirus/core/EngineSettings;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/antivirus/ui/protection/ProtectionActivity;->a(Landroid/content/Context;)Lorg/antivirus/core/EngineSettings;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lorg/antivirus/ui/protection/ProtectionActivity;I)V
    .locals 11

    const-wide/32 v9, 0x240c8400

    const-wide/32 v7, 0x5265c00

    const-wide/16 v5, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p0}, Lorg/antivirus/ui/protection/ProtectionActivity;->a(Landroid/content/Context;)Lorg/antivirus/core/EngineSettings;

    move-result-object v2

    invoke-virtual {v2}, Lorg/antivirus/core/EngineSettings;->getAutoScanInterval()J

    move-result-wide v3

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    cmp-long v3, v9, v3

    if-eqz v3, :cond_2

    :goto_0
    invoke-virtual {v2, v9, v10}, Lorg/antivirus/core/EngineSettings;->setAutoScanInterval(J)V

    :goto_1
    invoke-static {}, Lorg/antivirus/AVSettings;->commit()V

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/antivirus/ui/protection/ProtectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, p1

    iget-object v0, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->m:Lorg/antivirus/ui/protection/ab;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lorg/antivirus/ui/protection/ab;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;

    invoke-virtual {v0, v1}, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;->setSummary(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->m:Lorg/antivirus/ui/protection/ab;

    invoke-virtual {v0}, Lorg/antivirus/ui/protection/ab;->notifyDataSetChanged()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/antivirus/AVService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "__SAC"

    const/16 v2, 0x6b

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/protection/ProtectionActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void

    :pswitch_1
    cmp-long v3, v7, v3

    if-eqz v3, :cond_1

    :goto_2
    invoke-virtual {v2, v7, v8}, Lorg/antivirus/core/EngineSettings;->setAutoScanInterval(J)V

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_0

    :pswitch_2
    cmp-long v3, v5, v3

    if-eqz v3, :cond_3

    :goto_3
    invoke-virtual {v2, v5, v6}, Lorg/antivirus/core/EngineSettings;->setAutoScanInterval(J)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic b(Lorg/antivirus/ui/protection/ProtectionActivity;)Landroid/app/AlertDialog;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->o:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic b(Lorg/antivirus/ui/protection/ProtectionActivity;Landroid/content/Context;)Lorg/antivirus/core/EngineSettings;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/antivirus/ui/protection/ProtectionActivity;->a(Landroid/content/Context;)Lorg/antivirus/core/EngineSettings;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lorg/antivirus/ui/protection/ProtectionActivity;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->p:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lorg/antivirus/ui/protection/ProtectionActivity;Landroid/content/Context;)Lorg/antivirus/core/EngineSettings;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/antivirus/ui/protection/ProtectionActivity;->a(Landroid/content/Context;)Lorg/antivirus/core/EngineSettings;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lorg/antivirus/ui/protection/ProtectionActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->p:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lorg/antivirus/ui/protection/ProtectionActivity;Landroid/content/Context;)Lorg/antivirus/core/EngineSettings;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/antivirus/ui/protection/ProtectionActivity;->a(Landroid/content/Context;)Lorg/antivirus/core/EngineSettings;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lorg/antivirus/ui/protection/ProtectionActivity;Landroid/content/Context;)Lorg/antivirus/core/EngineSettings;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/antivirus/ui/protection/ProtectionActivity;->a(Landroid/content/Context;)Lorg/antivirus/core/EngineSettings;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lorg/antivirus/ui/protection/ProtectionActivity;)Lorg/antivirus/ui/WebViewAdsManager;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->v:Lorg/antivirus/ui/WebViewAdsManager;

    return-object v0
.end method

.method static synthetic f(Lorg/antivirus/ui/protection/ProtectionActivity;Landroid/content/Context;)Lorg/antivirus/core/EngineSettings;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/antivirus/ui/protection/ProtectionActivity;->a(Landroid/content/Context;)Lorg/antivirus/core/EngineSettings;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lorg/antivirus/ui/protection/ProtectionActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/antivirus/ui/protection/ProtectionActivity;->i()V

    return-void
.end method

.method static synthetic f()Z
    .locals 1

    sget-boolean v0, Lorg/antivirus/ui/protection/ProtectionActivity;->r:Z

    return v0
.end method

.method static synthetic g(Lorg/antivirus/ui/protection/ProtectionActivity;Landroid/content/Context;)Lorg/antivirus/core/EngineSettings;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/antivirus/ui/protection/ProtectionActivity;->a(Landroid/content/Context;)Lorg/antivirus/core/EngineSettings;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lorg/antivirus/ui/protection/ProtectionActivity;)Lorg/antivirus/core/scanners/g;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->w:Lorg/antivirus/core/scanners/g;

    return-object v0
.end method

.method static synthetic g()Z
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lorg/antivirus/ui/protection/ProtectionActivity;->r:Z

    return v0
.end method

.method private h()Ljava/util/ArrayList;
    .locals 8

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    const/16 v0, 0x8

    if-ge v6, v0, :cond_0

    packed-switch v6, :pswitch_data_0

    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :pswitch_0
    new-instance v0, Lorg/antivirus/core/EngineSettings;

    invoke-virtual {p0}, Lorg/antivirus/ui/protection/ProtectionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/antivirus/core/EngineSettings;-><init>(Landroid/content/Context;)V

    new-instance v1, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;

    const v2, 0x7f090012

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f090007

    invoke-static {v4}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "3.0.3 - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/antivirus/core/EngineSettings;->getSecDbVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f020133

    invoke-direct {v1, v2, v0, v3}, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    new-instance v0, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;

    iget-object v1, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->t:Ljava/lang/String;

    iget v2, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->u:I

    iget-object v3, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->s:Ljava/lang/String;

    const/4 v4, 0x1

    const v5, 0x7f0200e5

    invoke-direct/range {v0 .. v5}, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;-><init>(Ljava/lang/String;ILjava/lang/String;ZI)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lorg/antivirus/ui/protection/ProtectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/antivirus/ui/protection/ProtectionActivity;->d()I

    move-result v1

    aget-object v0, v0, v1

    new-instance v1, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;

    const v2, 0x7f090008

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f02004d

    invoke-direct {v1, v2, v0, v3}, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_3
    new-instance v0, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;

    const v1, 0x7f09003b

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f09003c

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0200c6

    invoke-direct {v0, v1, v2, v3}, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_4
    new-instance v0, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;

    const v1, 0x7f0900b3

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0900b4

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020107

    invoke-static {}, Lorg/antivirus/AVSettings;->isUrlAntiPhishingEnabled()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_5
    new-instance v0, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;

    const v1, 0x7f09014f

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f090150

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020109

    invoke-virtual {p0}, Lorg/antivirus/ui/protection/ProtectionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/antivirus/ui/protection/ProtectionActivity;->a(Landroid/content/Context;)Lorg/antivirus/core/EngineSettings;

    move-result-object v4

    invoke-virtual {v4}, Lorg/antivirus/core/EngineSettings;->isSDScanEnabled()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_6
    new-instance v0, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;

    const v1, 0x7f090013

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f090014

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0200df

    invoke-virtual {p0}, Lorg/antivirus/ui/protection/ProtectionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/antivirus/ui/protection/ProtectionActivity;->a(Landroid/content/Context;)Lorg/antivirus/core/EngineSettings;

    move-result-object v4

    invoke-virtual {v4}, Lorg/antivirus/core/EngineSettings;->isAutoScanSMS()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_7
    new-instance v0, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;

    const v1, 0x7f0901d3

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0901d4

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020108

    invoke-virtual {p0}, Lorg/antivirus/ui/protection/ProtectionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/antivirus/ui/protection/ProtectionActivity;->a(Landroid/content/Context;)Lorg/antivirus/core/EngineSettings;

    move-result-object v4

    invoke-virtual {v4}, Lorg/antivirus/core/EngineSettings;->isPUPEnabled()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_0
    return-object v7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method static synthetic h(Lorg/antivirus/ui/protection/ProtectionActivity;Landroid/content/Context;)Lorg/antivirus/core/EngineSettings;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/antivirus/ui/protection/ProtectionActivity;->a(Landroid/content/Context;)Lorg/antivirus/core/EngineSettings;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lorg/antivirus/ui/protection/ProtectionActivity;)V
    .locals 3

    invoke-virtual {p0, p0}, Lorg/antivirus/ui/protection/ProtectionActivity;->a(Landroid/content/Context;)Lorg/antivirus/core/EngineSettings;

    move-result-object v0

    invoke-virtual {v0}, Lorg/antivirus/core/EngineSettings;->isAutoScanSMS()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/antivirus/ui/protection/ProtectionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/protection/ProtectionActivity;->a(Landroid/content/Context;)Lorg/antivirus/core/EngineSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/antivirus/core/EngineSettings;->setAutoScanSMS(Z)V

    const-string v0, "protection"

    const-string v1, "scan_sms"

    const-string v2, "off"

    invoke-static {p0, v0, v1, v2}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/antivirus/AVService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "__SAC"

    const/16 v2, 0x76

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/protection/ProtectionActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_0
    invoke-virtual {p0, p0}, Lorg/antivirus/ui/protection/ProtectionActivity;->a(Landroid/content/Context;)Lorg/antivirus/core/EngineSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/antivirus/core/EngineSettings;->setAutoScanSMS(Z)V

    const-string v0, "protection"

    const-string v1, "scan_sms"

    const-string v2, "on"

    invoke-static {p0, v0, v1, v2}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic i(Lorg/antivirus/ui/protection/ProtectionActivity;)Lorg/antivirus/ui/protection/ab;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->m:Lorg/antivirus/ui/protection/ab;

    return-object v0
.end method

.method private i()V
    .locals 5

    const v2, 0x7f020132

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {p0}, Lorg/antivirus/core/a/n;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->o:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->o:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0900d3

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0900d4

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f090003

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/antivirus/ui/protection/y;

    invoke-direct {v2, p0}, Lorg/antivirus/ui/protection/y;-><init>(Lorg/antivirus/ui/protection/ProtectionActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->n:Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090015

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f030023

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->p:Landroid/view/View;

    iget-object v1, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->p:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->o:Landroid/app/AlertDialog;

    iget-object v0, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->o:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->p:Landroid/view/View;

    const v1, 0x7f0800be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09000f

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->o:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    sput-boolean v4, Lorg/antivirus/ui/protection/ProtectionActivity;->r:Z

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/antivirus/AVService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "__SAC"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "__SAD"

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/protection/ProtectionActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->a:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "droidsec.com.update"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lorg/antivirus/ui/protection/ProtectionActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->q:Landroid/os/Handler;

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->q:Landroid/os/Handler;

    :cond_2
    iget-object v0, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->q:Landroid/os/Handler;

    iget-object v1, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->y:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method static synthetic j(Lorg/antivirus/ui/protection/ProtectionActivity;)V
    .locals 4

    invoke-static {}, Lorg/antivirus/AVSettings;->isUrlAntiPhishingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "protection"

    const-string v3, "safe_web_surfing"

    if-eqz v0, :cond_1

    const-string v1, "on"

    :goto_1
    invoke-static {p0, v2, v3, v1}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/antivirus/AVSettings;->setUrlAntiPhishing(Z)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/antivirus/AVService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "__SAC"

    const/16 v2, 0x70

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/protection/ProtectionActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v1, "off"

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final d()I
    .locals 5

    const/4 v0, 0x2

    invoke-virtual {p0, p0}, Lorg/antivirus/ui/protection/ProtectionActivity;->a(Landroid/content/Context;)Lorg/antivirus/core/EngineSettings;

    move-result-object v1

    invoke-virtual {v1}, Lorg/antivirus/core/EngineSettings;->getAutoScanInterval()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    cmp-long v3, v3, v1

    if-nez v3, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-wide/32 v3, 0x240c8400

    cmp-long v3, v3, v1

    if-nez v3, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-wide/16 v3, -0x1

    cmp-long v1, v3, v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public final e()V
    .locals 4

    const v0, 0x7f090132

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/antivirus/AvApplication;->mAvgFeatures:Lorg/antivirus/core/b/a;

    if-eqz v1, :cond_0

    sget-object v1, Lorg/antivirus/AvApplication;->mAvgFeatures:Lorg/antivirus/core/b/a;

    invoke-virtual {v1}, Lorg/antivirus/core/b/a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f090131

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const v1, 0x7f090017

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[appname]"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lorg/antivirus/core/EngineSettings;

    invoke-virtual {p0}, Lorg/antivirus/ui/protection/ProtectionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/antivirus/core/EngineSettings;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f090016

    invoke-static {v3}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/antivirus/core/EngineSettings;->getSecDbVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f020134

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f090003

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/antivirus/ui/protection/z;

    invoke-direct {v2, p0}, Lorg/antivirus/ui/protection/z;-><init>(Lorg/antivirus/ui/protection/ProtectionActivity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->n:Landroid/app/AlertDialog;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->v:Lorg/antivirus/ui/WebViewAdsManager;

    const v1, 0x7f0800ba

    invoke-virtual {v0, p0, v1, p1}, Lorg/antivirus/ui/WebViewAdsManager;->onConfigurationChanged(Landroid/app/Activity;ILandroid/content/res/Configuration;)V

    invoke-super {p0, p1}, Lorg/antivirus/ui/BaseToolListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-super {p0, p1}, Lorg/antivirus/ui/BaseToolListActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lorg/antivirus/core/scanners/g;

    invoke-direct {v0}, Lorg/antivirus/core/scanners/g;-><init>()V

    iput-object v0, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->w:Lorg/antivirus/core/scanners/g;

    iget-object v0, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->w:Lorg/antivirus/core/scanners/g;

    invoke-virtual {v0, p0}, Lorg/antivirus/core/scanners/g;->a(Landroid/content/Context;)V

    const v0, 0x7f03002b

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/protection/ProtectionActivity;->setContentView(I)V

    const v0, 0x7f02001c

    const v1, 0x7f02001d

    const v2, 0x7f0901b1

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, v7}, Lorg/antivirus/ui/protection/ProtectionActivity;->a(IILjava/lang/String;Z)V

    iget-object v0, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->w:Lorg/antivirus/core/scanners/g;

    iget-wide v1, v0, Lorg/antivirus/core/scanners/g;->b:J

    const v0, 0x7f0901b0

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->t:Ljava/lang/String;

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-gtz v0, :cond_1

    const v0, 0x7f0901bd

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->s:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/antivirus/ui/protection/ProtectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->u:I

    :goto_0
    new-instance v0, Lorg/antivirus/ui/protection/ab;

    invoke-direct {p0}, Lorg/antivirus/ui/protection/ProtectionActivity;->h()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lorg/antivirus/ui/protection/ab;-><init>(Lorg/antivirus/ui/protection/ProtectionActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->m:Lorg/antivirus/ui/protection/ab;

    iget-object v0, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->m:Lorg/antivirus/ui/protection/ab;

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/protection/ProtectionActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lorg/antivirus/ui/protection/ProtectionActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lorg/antivirus/ui/protection/w;

    invoke-direct {v1, p0}, Lorg/antivirus/ui/protection/w;-><init>(Lorg/antivirus/ui/protection/ProtectionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0}, Lorg/antivirus/ui/protection/ProtectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "launchFormWidget"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/antivirus/ui/protection/ProtectionActivity;->i()V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/antivirus/a/a;->a(Landroid/content/Context;Lorg/antivirus/core/Engine;)V

    :cond_0
    new-instance v0, Lorg/antivirus/ui/WebViewAdsManager;

    invoke-direct {v0}, Lorg/antivirus/ui/WebViewAdsManager;-><init>()V

    iput-object v0, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->v:Lorg/antivirus/ui/WebViewAdsManager;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/antivirus/AVService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->z:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v6}, Lorg/antivirus/ui/protection/ProtectionActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iput-boolean v6, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->x:Z

    return-void

    :cond_1
    const v0, 0x7f0901bf

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x1

    iput v3, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->u:I

    iget-object v3, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->w:Lorg/antivirus/core/scanners/g;

    invoke-virtual {v3}, Lorg/antivirus/core/scanners/g;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "<font color=\'#ff0000\'>"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v3, 0x7f0901c2

    invoke-static {v3}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "</font>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f0901c0

    invoke-static {v3}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->t:Ljava/lang/String;

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0901be

    invoke-static {v4}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v6, v4}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->s:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->v:Lorg/antivirus/ui/WebViewAdsManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->v:Lorg/antivirus/ui/WebViewAdsManager;

    invoke-virtual {v0}, Lorg/antivirus/ui/WebViewAdsManager;->stop()V

    :cond_0
    iget-boolean v0, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->x:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->z:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/protection/ProtectionActivity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->x:Z

    :cond_1
    invoke-super {p0}, Lorg/antivirus/ui/BaseToolListActivity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->n:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->n:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->n:Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->o:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->o:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->o:Landroid/app/AlertDialog;

    iput-object v1, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->p:Landroid/view/View;

    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/antivirus/ui/protection/ProtectionActivity;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/protection/ProtectionActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0}, Lorg/antivirus/ui/BaseToolListActivity;->onPause()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lorg/antivirus/ui/BaseToolListActivity;->onResume()V

    return-void
.end method
