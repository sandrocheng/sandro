.class public final Latb;
.super Larz;


# instance fields
.field private k:Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;

.field private l:Landroid/widget/GridView;

.field private m:Z

.field private n:Z

.field private o:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private p:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private q:Z

.field private r:Z

.field private s:Landroid/widget/TabHost$OnTabChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Larz;-><init>(Landroid/content/Context;I)V

    iput-boolean v0, p0, Latb;->m:Z

    iput-boolean v0, p0, Latb;->n:Z

    new-instance v0, Latj;

    invoke-direct {v0, p0}, Latj;-><init>(Latb;)V

    iput-object v0, p0, Latb;->s:Landroid/widget/TabHost$OnTabChangeListener;

    return-void
.end method

.method static synthetic a(Latb;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Latb;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Latb;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;
    .locals 0

    iput-object p1, p0, Latb;->p:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    return-object p1
.end method

.method static synthetic b(Latb;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Latb;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Latb;)Z
    .locals 1

    iget-boolean v0, p0, Latb;->r:Z

    return v0
.end method

.method static synthetic d(Latb;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Latb;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Latb;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Latb;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Latb;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;
    .locals 1

    iget-object v0, p0, Latb;->p:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    return-object v0
.end method

.method static synthetic g(Latb;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;
    .locals 4

    const/4 v3, 0x2

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Latb;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b03e8

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    const v1, 0x7f0b09f1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    const v1, 0x7f0b09dd

    new-instance v2, Latg;

    invoke-direct {v2, p0, v0}, Latg;-><init>(Latb;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v1, 0x7f0b0033

    new-instance v2, Lath;

    invoke-direct {v2, p0, v0}, Lath;-><init>(Latb;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    new-instance v1, Lati;

    invoke-direct {v1, v0}, Lati;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    return-object v0
.end method

.method static synthetic h(Latb;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Latb;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic i(Latb;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Latb;->q:Z

    return v0
.end method

.method static synthetic j(Latb;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Latb;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic k(Latb;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;
    .locals 1

    iget-object v0, p0, Latb;->o:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    return-object v0
.end method

.method static synthetic l(Latb;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Latb;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic m(Latb;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Latb;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic n(Latb;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Latb;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Larz;->a()V

    const v0, 0x7f080123

    invoke-virtual {p0, v0}, Latb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Latb;->l:Landroid/widget/GridView;

    const v0, 0x7f080122

    invoke-virtual {p0, v0}, Latb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;

    iput-object v0, p0, Latb;->k:Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;

    invoke-virtual {p0}, Latb;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    iget-object v1, p0, Latb;->l:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->registerForContextMenu(Landroid/view/View;)V

    iget-object v0, p0, Latb;->l:Landroid/widget/GridView;

    iget-object v1, p0, Latb;->j:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Latb;->k:Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;

    iget-object v1, p0, Latb;->s:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->setOnTabChangeListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    iget-object v0, p0, Latb;->l:Landroid/widget/GridView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v0, p0, Latb;->l:Landroid/widget/GridView;

    sget-object v1, Llm;->e:Llm$a;

    iget v1, v1, Llm$a;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setColumnWidth(I)V

    iget-object v0, p0, Latb;->l:Landroid/widget/GridView;

    sget-object v1, Llm;->e:Llm$a;

    iget v1, v1, Llm$a;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    iget-object v0, p0, Latb;->l:Landroid/widget/GridView;

    sget-object v1, Llm;->e:Llm$a;

    iget v1, v1, Llm$a;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    iput-boolean v2, p0, Latb;->m:Z

    iput-boolean v2, p0, Latb;->n:Z

    iput-boolean v2, p0, Latb;->q:Z

    iget-object v0, p0, Larz;->e:Lrv;

    if-nez v0, :cond_0

    new-instance v0, Lrv;

    invoke-direct {v0}, Lrv;-><init>()V

    iput-object v0, p0, Larz;->e:Lrv;

    :cond_0
    return-void
.end method

.method protected final b()V
    .locals 2

    invoke-super {p0}, Larz;->b()V

    iget-object v1, p0, Latb;->k:Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;

    iget-boolean v0, p0, Latb;->f:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final createOperatingBarDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Larz;->createOperatingBarDataList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final loadDataList()V
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0}, Larz;->loadDataList()V

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->w()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Latb;->m:Z

    :cond_0
    :goto_0
    iget-object v0, p0, Latb;->d:Lib;

    invoke-virtual {v0, v1}, Lib;->a(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llj;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Llj;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Llj;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Lkq;

    invoke-direct {v5}, Lkq;-><init>()V

    invoke-virtual {v0}, Llj;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v4, v0, v1}, Lkq;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "restoreVideo "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Latb;->n:Z

    if-nez v0, :cond_3

    iput-boolean v1, p0, Latb;->n:Z

    new-instance v0, Ljj;

    invoke-direct {v0}, Ljj;-><init>()V

    const-string v3, "module_file_safe"

    const-string v4, "privacy_secret_info"

    const-string v5, "Module=?"

    new-array v6, v1, [Ljava/lang/String;

    aput-object v3, v6, v2

    const-string v3, "Module ASC"

    invoke-virtual {v0, v4, v5, v6, v3}, Ljj;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lmg;

    move-result-object v0

    invoke-virtual {v0}, Lmg;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Latb;->r:Z

    invoke-static {}, Lfi;->d()Z

    move-result v0

    iput-boolean v0, p0, Latb;->m:Z

    :cond_3
    iget-boolean v0, p0, Latb;->m:Z

    if-eqz v0, :cond_0

    const-string v0, "module_file_safe"

    invoke-static {v0}, La;->g(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    iget-boolean v0, p0, Latb;->m:Z

    if-eqz v0, :cond_7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v3, p0, Latb;->h:I

    if-nez v3, :cond_8

    iget-object v0, p0, Latb;->d:Lib;

    invoke-virtual {v0, v2}, Lib;->a(I)Ljava/util/List;

    move-result-object v0

    :cond_6
    :goto_3
    iget-object v1, p0, Latb;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Latb;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_7
    iget-object v0, p0, Latb;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_8
    iget v2, p0, Latb;->h:I

    if-ne v2, v1, :cond_6

    iget-object v0, p0, Latb;->d:Lib;

    invoke-virtual {v0, v1}, Lib;->a(I)Ljava/util/List;

    move-result-object v0

    goto :goto_3
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-super {p0, p1, p2, p3}, Larz;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x66

    if-ne p1, v0, :cond_2

    const-string v0, "VerifyResult"

    invoke-virtual {p3, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Latb;->o:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget-object v0, p0, Latb;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    iget-object v0, p0, Latb;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Latb;->mContext:Landroid/content/Context;

    const v2, 0x7f0b09f3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(Ljava/lang/CharSequence;)V

    iput-boolean v3, p0, Latb;->q:Z

    iget-object v0, p0, Latb;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_2
    if-ne p1, v3, :cond_0

    const-string v0, "fileInfos"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "filePaths"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Latb;->a(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public final onBackClick()V
    .locals 0

    invoke-super {p0}, Larz;->onBackClick()V

    return-void
.end method

.method protected final onConfigModelCreate(Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;)V
    .locals 0

    invoke-super {p0, p1}, Larz;->onConfigModelCreate(Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;)V

    return-void
.end method

.method public final onCreate()V
    .locals 0

    invoke-super {p0}, Larz;->onCreate()V

    return-void
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Larz;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Larz;->onDestroy()V

    iget-object v0, p0, Larz;->e:Lrv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Larz;->e:Lrv;

    invoke-virtual {v0}, Lrv;->e()V

    :cond_0
    return-void
.end method

.method public final onHandlerMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Larz;->onHandlerMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Latb;->m:Z

    iget v0, p1, Landroid/os/Message;->arg1:I

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Latc;

    invoke-direct {v2, p0, v0}, Latc;-><init>(Latb;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Latb;->mContext:Landroid/content/Context;

    const v1, 0x7f0b09f6

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    :goto_1
    iget-object v0, p0, Latb;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget-object v0, p0, Latb;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Latb;->mContext:Landroid/content/Context;

    const v1, 0x7f0b09f4

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onOperatingBarClick(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V
    .locals 0

    invoke-super {p0, p1}, Larz;->onOperatingBarClick(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V

    return-void
.end method

.method public final onOptionClick(I)V
    .locals 0

    invoke-super {p0, p1}, Larz;->onOptionClick(I)V

    return-void
.end method

.method public final onPause()V
    .locals 0

    invoke-super {p0}, Larz;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 2

    iget-object v0, p0, Latb;->k:Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;

    iget v1, p0, Latb;->h:I

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/view/tab/FileSafeTabView;->setTabBackground(I)V

    iget-boolean v0, p0, Latb;->q:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Larz;->onResume()V

    :cond_0
    return-void
.end method

.method public final refreshListData()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-boolean v0, p0, Latb;->m:Z

    if-eqz v0, :cond_5

    new-instance v0, Laji;

    iget-object v1, p0, Latb;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Latb;->f:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, p0, Latb;->g:Ljava/util/List;

    iget v2, p0, Latb;->h:I

    if-ne v2, v5, :cond_3

    :goto_0
    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Laji;-><init>(Landroid/content/Context;Lcom/tencent/qqpimsecure/uilib/view/BaseView;Ljava/lang/Boolean;Ljava/util/List;Z)V

    iput-object v0, p0, Latb;->i:Lajd;

    iget-object v0, p0, Latb;->l:Landroid/widget/GridView;

    iget-object v1, p0, Latb;->i:Lajd;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Latb;->i:Lajd;

    invoke-virtual {v0}, Lajd;->notifyDataSetChanged()V

    iget-object v0, p0, Latb;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Latb;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    :cond_0
    if-lez v6, :cond_1

    iget-object v0, p0, Latb;->l:Landroid/widget/GridView;

    add-int/lit8 v1, v6, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelection(I)V

    :cond_1
    if-nez v6, :cond_4

    const v0, 0x7f0200c9

    invoke-virtual {p0, v0}, Latb;->setEmptyImage(I)V

    :cond_2
    :goto_1
    invoke-super {p0}, Larz;->refreshListData()V

    return-void

    :cond_3
    move v5, v6

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Latb;->hideEmptyView()V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Latb;->o:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    if-nez v0, :cond_6

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Latb;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b09b5

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    const v1, 0x7f0b09f0

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    const v1, 0x7f0b09f2

    new-instance v2, Latd;

    invoke-direct {v2, p0}, Latd;-><init>(Latb;)V

    invoke-virtual {v0, v1, v2, v5}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v1, 0x7f0b09dd

    new-instance v2, Late;

    invoke-direct {v2, p0, v0}, Late;-><init>(Latb;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    new-instance v1, Latf;

    invoke-direct {v1, p0, v0}, Latf;-><init>(Latb;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    iput-object v0, p0, Latb;->o:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    goto :goto_1

    :cond_6
    iget-object v0, p0, Latb;->o:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Latb;->o:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    goto :goto_1
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 0

    invoke-super {p0, p1}, Larz;->subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V

    return-void
.end method
