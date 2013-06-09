.class public Lorg/antivirus/ui/help/Help;
.super Lorg/antivirus/ui/BaseToolListActivity;


# instance fields
.field private a:Ljava/lang/Runnable;

.field private b:Landroid/os/Handler;

.field private c:Landroid/app/AlertDialog;

.field private f:Landroid/content/IntentFilter;

.field private g:Landroid/app/ProgressDialog;

.field private h:Landroid/content/BroadcastReceiver;

.field private i:Lorg/antivirus/ui/BaseListAdapter;

.field private j:Lorg/antivirus/core/b/a;

.field private k:Z

.field private l:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/antivirus/ui/BaseToolListActivity;-><init>()V

    iput-object v2, p0, Lorg/antivirus/ui/help/Help;->a:Ljava/lang/Runnable;

    iput-object v2, p0, Lorg/antivirus/ui/help/Help;->c:Landroid/app/AlertDialog;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "inAppIntentFilterScreen"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/antivirus/ui/help/Help;->f:Landroid/content/IntentFilter;

    iput-object v2, p0, Lorg/antivirus/ui/help/Help;->g:Landroid/app/ProgressDialog;

    new-instance v0, Lorg/antivirus/ui/help/a;

    invoke-direct {v0, p0}, Lorg/antivirus/ui/help/a;-><init>(Lorg/antivirus/ui/help/Help;)V

    iput-object v0, p0, Lorg/antivirus/ui/help/Help;->h:Landroid/content/BroadcastReceiver;

    new-instance v0, Lorg/antivirus/ui/help/b;

    invoke-direct {v0, p0}, Lorg/antivirus/ui/help/b;-><init>(Lorg/antivirus/ui/help/Help;)V

    iput-object v0, p0, Lorg/antivirus/ui/help/Help;->l:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lorg/antivirus/ui/help/Help;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/help/Help;->g:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic a(Lorg/antivirus/ui/help/Help;Lorg/antivirus/core/b/a;)Lorg/antivirus/core/b/a;
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/help/Help;->j:Lorg/antivirus/core/b/a;

    return-object p1
.end method

.method static synthetic a(Lorg/antivirus/ui/help/Help;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/antivirus/ui/help/Help;->k:Z

    return p1
.end method

.method static synthetic b(Lorg/antivirus/ui/help/Help;)V
    .locals 0

    invoke-direct {p0}, Lorg/antivirus/ui/help/Help;->d()V

    return-void
.end method

.method static synthetic c(Lorg/antivirus/ui/help/Help;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0900d3

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f020051

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0900d4

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f090003

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/antivirus/ui/help/f;

    invoke-direct {v2, p0}, Lorg/antivirus/ui/help/f;-><init>(Lorg/antivirus/ui/help/Help;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/ui/help/Help;->c:Landroid/app/AlertDialog;

    iget-object v0, p0, Lorg/antivirus/ui/help/Help;->c:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lorg/antivirus/ui/help/Help;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lorg/antivirus/ui/help/Help;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/help/Help;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/help/Help;->b:Landroid/os/Handler;

    iget-object v1, p0, Lorg/antivirus/ui/help/Help;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/antivirus/ui/help/Help;->h:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/antivirus/ui/help/Help;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/help/Help;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic d(Lorg/antivirus/ui/help/Help;)V
    .locals 7

    new-instance v0, Lorg/antivirus/ui/BaseListAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f090009

    invoke-static {v4}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - 3.0.3.174757"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f09000a

    invoke-static {v4}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0200f3

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;

    const v3, 0x7f090027

    invoke-static {v3}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f090028

    invoke-static {v4}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f020127

    const/4 v6, 0x1

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;

    const v3, 0x7f090063

    invoke-static {v3}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f090064

    invoke-static {v4}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f020052

    const/4 v6, 0x2

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;

    const v3, 0x7f0900d0

    invoke-static {v3}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0900d1

    invoke-static {v4}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0200dc

    const/4 v6, 0x3

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/antivirus/ui/BaseListAdapter$BaseListAdapterItem;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {v0, p0, v1}, Lorg/antivirus/ui/BaseListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lorg/antivirus/ui/help/Help;->i:Lorg/antivirus/ui/BaseListAdapter;

    iget-object v0, p0, Lorg/antivirus/ui/help/Help;->i:Lorg/antivirus/ui/BaseListAdapter;

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/help/Help;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lorg/antivirus/ui/help/Help;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lorg/antivirus/ui/help/c;

    invoke-direct {v1, p0}, Lorg/antivirus/ui/help/c;-><init>(Lorg/antivirus/ui/help/Help;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic e(Lorg/antivirus/ui/help/Help;)Lorg/antivirus/core/b/a;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/help/Help;->j:Lorg/antivirus/core/b/a;

    return-object v0
.end method

.method static synthetic f(Lorg/antivirus/ui/help/Help;)V
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/antivirus/ui/help/Help;->h:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lorg/antivirus/ui/help/Help;->f:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lorg/antivirus/ui/help/Help;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {p0}, Lorg/antivirus/ui/help/g;->c(Landroid/content/Context;)V

    const-string v1, ""

    const v0, 0x7f0900d2

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-instance v5, Lorg/antivirus/ui/help/d;

    invoke-direct {v5, p0}, Lorg/antivirus/ui/help/d;-><init>(Lorg/antivirus/ui/help/Help;)V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/ui/help/Help;->g:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lorg/antivirus/ui/help/Help;->g:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lorg/antivirus/ui/help/Help;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/antivirus/ui/help/Help;->b:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lorg/antivirus/ui/help/Help;->a:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    new-instance v0, Lorg/antivirus/ui/help/e;

    invoke-direct {v0, p0}, Lorg/antivirus/ui/help/e;-><init>(Lorg/antivirus/ui/help/Help;)V

    iput-object v0, p0, Lorg/antivirus/ui/help/Help;->a:Ljava/lang/Runnable;

    :cond_1
    iget-object v0, p0, Lorg/antivirus/ui/help/Help;->b:Landroid/os/Handler;

    iget-object v1, p0, Lorg/antivirus/ui/help/Help;->a:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic g(Lorg/antivirus/ui/help/Help;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/help/Help;->c:Landroid/app/AlertDialog;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lorg/antivirus/ui/BaseToolListActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/antivirus/AVService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lorg/antivirus/ui/help/Help;->l:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/antivirus/ui/help/Help;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const v0, 0x7f03002b

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/help/Help;->setContentView(I)V

    const v0, 0x7f020012

    const v1, 0x7f020013

    const v2, 0x7f090006

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/antivirus/ui/help/Help;->a(IILjava/lang/String;Z)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/help/Help;->c:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/help/Help;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lorg/antivirus/ui/help/Help;->g:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/antivirus/ui/help/Help;->g:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    invoke-direct {p0}, Lorg/antivirus/ui/help/Help;->d()V

    iget-boolean v0, p0, Lorg/antivirus/ui/help/Help;->k:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/antivirus/ui/help/Help;->l:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lorg/antivirus/ui/help/Help;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/antivirus/ui/help/Help;->k:Z

    :cond_2
    invoke-super {p0}, Lorg/antivirus/ui/BaseToolListActivity;->onDestroy()V

    return-void
.end method
