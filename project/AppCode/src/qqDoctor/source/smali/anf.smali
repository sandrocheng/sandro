.class public final Lanf;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseView;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private b:I

.field private c:Z

.field private d:Lkw;

.field private e:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

.field private f:Lkv;

.field private g:Lcom/tencent/tmsecure/common/BaseServiceConnection;

.field private h:Landroid/os/Handler;

.field private i:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener",
            "<",
            "Lkv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f030050

    invoke-direct {p0, p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lanf;->a:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const/4 v0, 0x1

    iput v0, p0, Lanf;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lanf;->c:Z

    new-instance v0, Lcom/tencent/tmsecure/common/BaseServiceConnection;

    const-class v1, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;

    invoke-direct {v0, v1}, Lcom/tencent/tmsecure/common/BaseServiceConnection;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lanf;->g:Lcom/tencent/tmsecure/common/BaseServiceConnection;

    new-instance v0, Lang;

    iget-object v1, p0, Lanf;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lang;-><init>(Lanf;Landroid/os/Looper;)V

    iput-object v0, p0, Lanf;->h:Landroid/os/Handler;

    new-instance v0, Lanh;

    invoke-direct {v0, p0}, Lanh;-><init>(Lanf;)V

    iput-object v0, p0, Lanf;->i:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;

    return-void
.end method

.method static synthetic a(Lanf;)V
    .locals 4

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-static {}, Lanf;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iput v2, p0, Lanf;->b:I

    :goto_0
    iget v0, p0, Lanf;->b:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-boolean v0, p0, Lanf;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "com.tencent.benchmark"

    iget-object v1, p0, Lanf;->e:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;->getAllTasks()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lof;->a(Ljava/lang/String;Ljava/util/List;)Lkv;

    move-result-object v0

    iput-object v0, p0, Lanf;->f:Lkv;

    iget-object v0, p0, Lanf;->f:Lkv;

    if-nez v0, :cond_2

    const-string v0, "com.tencent.benchmark"

    invoke-static {v0}, Lof;->a(Ljava/lang/String;)Lkv;

    move-result-object v0

    iput-object v0, p0, Lanf;->f:Lkv;

    :cond_2
    iget-object v0, p0, Lanf;->f:Lkv;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lanf;->f:Lkv;

    iget-object v0, v0, Lkv;->d:Lkw;

    if-nez v0, :cond_4

    :cond_3
    new-instance v0, Lkv;

    iget-object v1, p0, Lanf;->d:Lkw;

    invoke-direct {v0, v1}, Lkv;-><init>(Lkw;)V

    iput-object v0, p0, Lanf;->f:Lkv;

    :cond_4
    iget-object v0, p0, Lanf;->f:Lkv;

    iget-object v0, v0, Lkv;->d:Lkw;

    const-string v1, "http://softfile.3g.qq.com/msoft/sec/secure/tips/1/2/102/tencent_benchmark201301051631447042_android.png"

    invoke-virtual {v0, v1}, Lkw;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lanf;->f:Lkv;

    iget v0, v0, Lkv;->mState:I

    packed-switch v0, :pswitch_data_1

    :pswitch_0
    iput v3, p0, Lanf;->b:I

    goto :goto_0

    :pswitch_1
    iput v3, p0, Lanf;->b:I

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x4

    iput v0, p0, Lanf;->b:I

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x2

    iput v0, p0, Lanf;->b:I

    goto :goto_0

    :pswitch_4
    iput v2, p0, Lanf;->b:I

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lanf;->a:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v1, p0, Lanf;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0065

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lanf;->a:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setButtonEnabled(Z)V

    iget-object v0, p0, Lanf;->a:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setClickable(Z)V

    goto :goto_1

    :pswitch_6
    iget-object v0, p0, Lanf;->a:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v1, p0, Lanf;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b04f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lanf;->a:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setButtonEnabled(Z)V

    goto/16 :goto_1

    :pswitch_7
    iget-object v0, p0, Lanf;->a:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v1, p0, Lanf;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b07a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lanf;->a:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setClickable(Z)V

    iget-object v0, p0, Lanf;->a:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setButtonEnabled(Z)V

    goto/16 :goto_1

    :pswitch_8
    iget-object v0, p0, Lanf;->a:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v1, p0, Lanf;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03ea

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lanf;->a:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setButtonEnabled(Z)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x4
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic a(Lanf;Lkv;)V
    .locals 3

    iget-object v0, p1, Lkv;->d:Lkw;

    iget-object v1, p0, Lanf;->d:Lkw;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lanf;->h:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    invoke-static {}, Lanf;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "QQSecureDownload"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "com.tencent.benchmark.apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    invoke-virtual {p0}, Lanf;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    return-void
.end method

.method static synthetic a()Z
    .locals 1

    invoke-static {}, Lanf;->c()Z

    move-result v0

    return v0
.end method

.method private b()V
    .locals 3

    new-instance v0, Lof;

    invoke-direct {v0}, Lof;-><init>()V

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSService;->startService(Lcom/tencent/tmsecure/common/BaseService;)Lcom/tencent/tmsecure/common/BaseService;

    const-class v0, Lof;

    iget-object v1, p0, Lanf;->g:Lcom/tencent/tmsecure/common/BaseServiceConnection;

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/common/TMSService;->bindService(Ljava/lang/Class;Lcom/tencent/tmsecure/common/BaseServiceConnection;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    iput-object v0, p0, Lanf;->e:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    iget-object v0, p0, Lanf;->d:Lkw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lanf;->e:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lanf;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lanf;->mContext:Landroid/content/Context;

    const v2, 0x7f0b086d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lanf;->c:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lanf;->c:Z

    iget-object v0, p0, Lanf;->e:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    iget-object v1, p0, Lanf;->i:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;->registListener(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;)V

    iget-object v0, p0, Lanf;->f:Lkv;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lanf;->f:Lkv;

    iget-object v0, v0, Lkv;->d:Lkw;

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Lkv;

    iget-object v1, p0, Lanf;->d:Lkw;

    invoke-direct {v0, v1}, Lkv;-><init>(Lkw;)V

    iput-object v0, p0, Lanf;->f:Lkv;

    :cond_3
    iget-object v0, p0, Lanf;->f:Lkv;

    invoke-static {v0}, Lof;->a(Lkv;)V

    goto :goto_0
.end method

.method static synthetic b(Lanf;)V
    .locals 0

    invoke-direct {p0}, Lanf;->b()V

    return-void
.end method

.method static synthetic c(Lanf;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lanf;->e:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lanf;->e:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    iget-object v1, p0, Lanf;->i:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;->unregistListener(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTaskListener;)V

    iput-object v2, p0, Lanf;->e:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    :cond_0
    const-class v0, Lof;

    iget-object v1, p0, Lanf;->g:Lcom/tencent/tmsecure/common/BaseServiceConnection;

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/common/TMSService;->unBindService(Ljava/lang/Class;Lcom/tencent/tmsecure/common/BaseServiceConnection;)V

    iput-object v2, p0, Lanf;->g:Lcom/tencent/tmsecure/common/BaseServiceConnection;

    return-void
.end method

.method private static c()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "QQSecureDownload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "com.tencent.benchmark.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lanf;)Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;
    .locals 1

    iget-object v0, p0, Lanf;->e:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lanf;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lanf;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lanf;->mContext:Landroid/content/Context;

    const v2, 0x7f0b086d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lanf;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x675e

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    iget-object v0, p0, Lanf;->f:Lkv;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lkv;->isOnChangeRetry:Z

    iget-object v0, p0, Lanf;->e:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    iget-object v1, p0, Lanf;->f:Lkv;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;->startTask(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V

    iget-object v0, p0, Lanf;->h:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lanf;->mContext:Landroid/content/Context;

    const v1, 0x7f0b00c3

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "QQSecureDownload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "com.tencent.benchmark.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lanf;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v1}, La;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->installApp(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0}, Lanf;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b00b5

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lanf;->h:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lanf;->h:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lanf;->e:Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    iget-object v1, p0, Lanf;->f:Lkv;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;->continueTask(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V

    iget-object v0, p0, Lanf;->h:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final onCreate()V
    .locals 3

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onCreate()V

    new-instance v0, Lkw;

    invoke-direct {v0}, Lkw;-><init>()V

    iput-object v0, p0, Lanf;->d:Lkw;

    iget-object v0, p0, Lanf;->d:Lkw;

    const-string v1, "com.tencent.benchmark"

    invoke-virtual {v0, v1}, Lkw;->setPackageName(Ljava/lang/String;)V

    iget-object v0, p0, Lanf;->d:Lkw;

    iget-object v1, p0, Lanf;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0ba7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkw;->setAppName(Ljava/lang/String;)V

    iget-object v0, p0, Lanf;->d:Lkw;

    const-string v1, "http://tools.3g.qq.com/j/TencentBenchMark"

    invoke-virtual {v0, v1}, Lkw;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lanf;->d:Lkw;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "QQSecureDownload"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "com.tencent.benchmark.apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkw;->setApkPath(Ljava/lang/String;)V

    const v0, 0x7f0800bc

    invoke-virtual {p0, v0}, Lanf;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Lanf;->a:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v0, p0, Lanf;->a:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lanf;->a:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v1, p0, Lanf;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0065

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    invoke-direct {p0}, Lanf;->b()V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onDestroy()V

    iget-object v0, p0, Lanf;->h:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onResume()V

    iget-object v0, p0, Lanf;->h:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    const v0, 0x7f0b0ba7

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    return-void
.end method
