.class public Lcom/avast/android/generic/app/account/ConnectionCheckFragment;
.super Lcom/avast/android/generic/app/account/DisconnectFragment;
.source "ConnectionCheckFragment.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Z

.field private e:Landroid/content/Context;

.field private f:Landroid/app/Activity;

.field private g:Lcom/avast/android/generic/ae;

.field private h:Lcom/avast/android/generic/ae;

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Landroid/view/View$OnClickListener;

.field private m:Landroid/view/View$OnClickListener;

.field private n:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Lcom/avast/android/generic/app/account/DisconnectFragment;-><init>()V

    .line 58
    iput-boolean v1, p0, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->d:Z

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->i:I

    .line 65
    iput-boolean v1, p0, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->j:Z

    .line 66
    iput-boolean v1, p0, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->k:Z

    .line 73
    new-instance v0, Lcom/avast/android/generic/app/account/w;

    invoke-direct {v0, p0}, Lcom/avast/android/generic/app/account/w;-><init>(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)V

    iput-object v0, p0, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->l:Landroid/view/View$OnClickListener;

    .line 89
    new-instance v0, Lcom/avast/android/generic/app/account/x;

    invoke-direct {v0, p0}, Lcom/avast/android/generic/app/account/x;-><init>(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)V

    iput-object v0, p0, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->m:Landroid/view/View$OnClickListener;

    .line 98
    new-instance v0, Lcom/avast/android/generic/app/account/y;

    invoke-direct {v0, p0}, Lcom/avast/android/generic/app/account/y;-><init>(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)V

    iput-object v0, p0, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->n:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->b:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic c(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->c:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic d(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Lcom/avast/android/generic/ae;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->g:Lcom/avast/android/generic/ae;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 769
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 770
    const-string v1, "com.avast.android.generic.action.ACTION_CONNECTION_CHECK_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 771
    invoke-virtual {p0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->n:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 775
    :goto_0
    return-void

    .line 773
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic e(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Lcom/avast/android/generic/ae;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->h:Lcom/avast/android/generic/ae;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 780
    :try_start_0
    invoke-virtual {p0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->n:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 784
    :goto_0
    return-void

    .line 782
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic f(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->j:Z

    return v0
.end method

.method static synthetic g(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->k:Z

    return v0
.end method

.method static synthetic h(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->e()V

    return-void
.end method

.method static synthetic i(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->d()V

    return-void
.end method

.method static synthetic j(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 44
    iget v0, p0, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->i:I

    return v0
.end method

.method static synthetic k(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->m:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic l(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->l:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic m(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->d:Z

    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 162
    new-instance v0, Lcom/avast/android/generic/app/account/aa;

    invoke-direct {v0, p0, p1}, Lcom/avast/android/generic/app/account/aa;-><init>(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;I)V

    .line 749
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/util/an;->c([Ljava/lang/Object;)Lcom/avast/android/generic/util/an;

    .line 750
    return-void
.end method

.method protected c()I
    .locals 1

    .prologue
    .line 70
    sget v0, Lcom/avast/android/generic/t;->p:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter

    .prologue
    .line 792
    invoke-virtual {p0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 793
    :cond_0
    const/4 v0, 0x0

    .line 800
    :goto_0
    return v0

    .line 796
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/avast/android/generic/t;->q:I

    if-ne v0, v1, :cond_2

    .line 797
    invoke-static {p0}, Lcom/avast/android/generic/util/a;->a(Landroid/support/v4/app/Fragment;)V

    .line 800
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 754
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 755
    invoke-static {p0}, Lcom/avast/android/generic/util/a;->a(Landroid/support/v4/app/Fragment;)V

    .line 759
    :goto_0
    return-void

    .line 757
    :cond_0
    invoke-virtual {p0, p1}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->a(I)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 113
    sget v0, Lcom/avast/android/generic/v;->A:I

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 116
    invoke-virtual {p0, v1}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->b(Landroid/view/View;)V

    .line 118
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.avast.android.mobilesecurity.app.account.PUSH_ACCOUNT_COMMUNICATION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-static {v0}, Lcom/avast/android/generic/util/ae;->a(Landroid/content/Intent;)V

    .line 120
    invoke-virtual {p0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "com.avast.android.generic.COMM_PERMISSION"

    invoke-virtual {v2, v0, v3}, Landroid/support/v4/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->f:Landroid/app/Activity;

    .line 123
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->e:Landroid/content/Context;

    .line 125
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->e:Landroid/content/Context;

    const-class v2, Lcom/avast/android/generic/ag;

    invoke-static {v0, v2}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    iput-object v0, p0, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->g:Lcom/avast/android/generic/ae;

    .line 126
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->e:Landroid/content/Context;

    const-class v2, Lcom/avast/android/generic/ah;

    invoke-static {v0, v2}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    iput-object v0, p0, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->h:Lcom/avast/android/generic/ae;

    .line 128
    sget v0, Lcom/avast/android/generic/t;->n:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->a:Landroid/widget/TextView;

    .line 130
    sget v0, Lcom/avast/android/generic/t;->r:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->b:Landroid/widget/Button;

    .line 131
    sget v0, Lcom/avast/android/generic/t;->aW:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->c:Landroid/widget/Button;

    .line 133
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->c:Landroid/widget/Button;

    new-instance v2, Lcom/avast/android/generic/app/account/z;

    invoke-direct {v2, p0}, Lcom/avast/android/generic/app/account/z;-><init>(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    invoke-virtual {p0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "versionResId"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->i:I

    .line 143
    invoke-virtual {p0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.avast.android.mobilesecurity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.avast.android.backup"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->a(I)V

    .line 149
    iput-boolean v4, p0, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->j:Z

    .line 150
    iput-boolean v4, p0, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->k:Z

    .line 158
    :goto_0
    return-object v1

    .line 152
    :cond_1
    invoke-virtual {p0, v5}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->a(I)V

    .line 154
    iput-boolean v5, p0, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->j:Z

    .line 155
    invoke-virtual {p0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/service/AvastService;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->k:Z

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 763
    invoke-direct {p0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->e()V

    .line 764
    invoke-super {p0}, Lcom/avast/android/generic/app/account/DisconnectFragment;->onDestroy()V

    .line 765
    return-void
.end method
