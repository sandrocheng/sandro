.class public abstract Lcom/avast/android/generic/app/account/DisconnectFragment;
.super Lcom/avast/android/generic/util/ga/TrackedFragment;
.source "DisconnectFragment.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Landroid/app/ProgressDialog;

.field private c:Landroid/os/Handler$Callback;

.field private d:Lcom/avast/android/generic/app/account/at;

.field private e:Lcom/avast/android/generic/ae;

.field private f:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;-><init>()V

    .line 51
    new-instance v0, Lcom/avast/android/generic/app/account/aq;

    invoke-direct {v0, p0}, Lcom/avast/android/generic/app/account/aq;-><init>(Lcom/avast/android/generic/app/account/DisconnectFragment;)V

    iput-object v0, p0, Lcom/avast/android/generic/app/account/DisconnectFragment;->f:Landroid/content/BroadcastReceiver;

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/avast/android/generic/app/account/DisconnectFragment;)Lcom/avast/android/generic/ae;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/avast/android/generic/app/account/DisconnectFragment;->e:Lcom/avast/android/generic/ae;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 262
    .line 264
    :try_start_0
    const-string v0, "com.avast.android.mobilesecurity.app.account.ServerAddressHelper"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 266
    const-string v2, "getUnpairingServerAddress"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 274
    :goto_0
    if-eqz v0, :cond_0

    .line 275
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_1
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    move-object v1, v0

    .line 281
    :goto_2
    return-object v1

    .line 268
    :catch_0
    move-exception v0

    .line 269
    const-string v2, "breadcrumbs"

    const-string v3, "ServerAddressHelper not available."

    invoke-static {v2, v3, v0}, Lcom/avast/android/generic/util/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0

    .line 277
    :catch_1
    move-exception v0

    .line 278
    const-string v2, "breadcrumbs"

    const-string v3, "Invocation of ServerAddressHelper.getUnpairingServerAddress() failed."

    invoke-static {v2, v3, v0}, Lcom/avast/android/generic/util/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_0
    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/avast/android/generic/app/account/DisconnectFragment;Lcom/avast/android/generic/app/account/at;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/avast/android/generic/app/account/DisconnectFragment;->a(Lcom/avast/android/generic/app/account/at;)V

    return-void
.end method

.method private a(Lcom/avast/android/generic/app/account/at;)V
    .locals 2
    .parameter

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/avast/android/generic/app/account/DisconnectFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    :goto_0
    return-void

    .line 226
    :cond_0
    invoke-direct {p0}, Lcom/avast/android/generic/app/account/DisconnectFragment;->e()V

    .line 228
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/avast/android/generic/app/account/DisconnectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/avast/android/generic/app/account/DisconnectFragment;->b:Landroid/app/ProgressDialog;

    .line 229
    iget-object v0, p0, Lcom/avast/android/generic/app/account/DisconnectFragment;->b:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 230
    iget-object v0, p0, Lcom/avast/android/generic/app/account/DisconnectFragment;->b:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 231
    iget-object v0, p0, Lcom/avast/android/generic/app/account/DisconnectFragment;->b:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/avast/android/generic/app/account/ar;

    invoke-direct {v1, p0, p1}, Lcom/avast/android/generic/app/account/ar;-><init>(Lcom/avast/android/generic/app/account/DisconnectFragment;Lcom/avast/android/generic/app/account/at;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 238
    iget-object v0, p0, Lcom/avast/android/generic/app/account/DisconnectFragment;->b:Landroid/app/ProgressDialog;

    sget v1, Lcom/avast/android/generic/z;->cR:I

    invoke-virtual {p0, v1}, Lcom/avast/android/generic/app/account/DisconnectFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v0, p0, Lcom/avast/android/generic/app/account/DisconnectFragment;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/avast/android/generic/app/account/DisconnectFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/avast/android/generic/app/account/DisconnectFragment;->d()V

    return-void
.end method

.method static synthetic c(Lcom/avast/android/generic/app/account/DisconnectFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/avast/android/generic/app/account/DisconnectFragment;->j()V

    return-void
.end method

.method private d()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/avast/android/generic/app/account/DisconnectFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/avast/android/generic/app/account/DisconnectFragment;->d:Lcom/avast/android/generic/app/account/at;

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/avast/android/generic/app/account/DisconnectFragment;->d:Lcom/avast/android/generic/app/account/at;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/app/account/at;->cancel(Z)Z

    .line 205
    :cond_1
    new-instance v0, Lcom/avast/android/generic/app/account/at;

    iget-object v1, p0, Lcom/avast/android/generic/app/account/DisconnectFragment;->e:Lcom/avast/android/generic/ae;

    invoke-direct {v0, p0, v1}, Lcom/avast/android/generic/app/account/at;-><init>(Lcom/avast/android/generic/app/account/DisconnectFragment;Lcom/avast/android/generic/ae;)V

    iput-object v0, p0, Lcom/avast/android/generic/app/account/DisconnectFragment;->d:Lcom/avast/android/generic/app/account/at;

    .line 206
    iget-object v0, p0, Lcom/avast/android/generic/app/account/DisconnectFragment;->d:Lcom/avast/android/generic/app/account/at;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/b;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/avast/android/generic/app/account/DisconnectFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/avast/android/generic/app/account/DisconnectFragment;->e()V

    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/avast/android/generic/app/account/DisconnectFragment;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 247
    invoke-virtual {p0}, Lcom/avast/android/generic/app/account/DisconnectFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/avast/android/generic/app/account/DisconnectFragment;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 251
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avast/android/generic/app/account/DisconnectFragment;->b:Landroid/app/ProgressDialog;

    .line 253
    :cond_1
    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/avast/android/generic/app/account/DisconnectFragment;->g()V

    .line 287
    invoke-virtual {p0}, Lcom/avast/android/generic/app/account/DisconnectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/p;->a(Landroid/content/Context;)Landroid/support/v4/a/p;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/generic/app/account/DisconnectFragment;->f:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.avast.android.generic.app.account.ACTION_DISCONNECT_CONFIRMED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/p;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 289
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 294
    :try_start_0
    invoke-virtual {p0}, Lcom/avast/android/generic/app/account/DisconnectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/a/p;->a(Landroid/content/Context;)Landroid/support/v4/a/p;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/generic/app/account/DisconnectFragment;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/a/p;->a(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :goto_0
    return-void

    .line 296
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract c()I
.end method

.method protected h()V
    .locals 1

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/avast/android/generic/app/account/DisconnectFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/app/account/AccountDisconnectDialog;->a(Landroid/support/v4/app/FragmentManager;)Lcom/avast/android/generic/app/account/AccountDisconnectDialog;

    .line 214
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/avast/android/generic/app/account/DisconnectFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/avast/android/generic/app/account/DisconnectFragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 391
    :cond_0
    const/4 v0, 0x0

    .line 397
    :goto_0
    return v0

    .line 394
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/avast/android/generic/t;->q:I

    if-ne v0, v1, :cond_2

    .line 397
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected i()Lcom/avast/android/generic/ae;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/avast/android/generic/app/account/DisconnectFragment;->e:Lcom/avast/android/generic/ae;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 314
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 318
    iget-object v0, p0, Lcom/avast/android/generic/app/account/DisconnectFragment;->d:Lcom/avast/android/generic/app/account/at;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avast/android/generic/app/account/DisconnectFragment;->d:Lcom/avast/android/generic/app/account/at;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/account/at;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/avast/android/generic/app/account/DisconnectFragment;->d:Lcom/avast/android/generic/app/account/at;

    invoke-direct {p0, v0}, Lcom/avast/android/generic/app/account/DisconnectFragment;->a(Lcom/avast/android/generic/app/account/at;)V

    .line 321
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 304
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 306
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/app/account/DisconnectFragment;->setRetainInstance(Z)V

    .line 307
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/avast/android/generic/app/account/DisconnectFragment;->a:Landroid/os/Handler;

    .line 309
    invoke-direct {p0}, Lcom/avast/android/generic/app/account/DisconnectFragment;->f()V

    .line 310
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 372
    invoke-super {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onDestroy()V

    .line 374
    invoke-direct {p0}, Lcom/avast/android/generic/app/account/DisconnectFragment;->g()V

    .line 376
    iget-object v0, p0, Lcom/avast/android/generic/app/account/DisconnectFragment;->d:Lcom/avast/android/generic/app/account/at;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avast/android/generic/app/account/DisconnectFragment;->d:Lcom/avast/android/generic/app/account/at;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/account/at;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/avast/android/generic/app/account/DisconnectFragment;->d:Lcom/avast/android/generic/app/account/at;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/app/account/at;->cancel(Z)Z

    .line 379
    :cond_0
    invoke-virtual {p0}, Lcom/avast/android/generic/app/account/DisconnectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/avast/android/generic/util/s;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/util/s;

    invoke-virtual {p0}, Lcom/avast/android/generic/app/account/DisconnectFragment;->c()I

    move-result v1

    iget-object v2, p0, Lcom/avast/android/generic/app/account/DisconnectFragment;->c:Landroid/os/Handler$Callback;

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/generic/util/s;->b(ILandroid/os/Handler$Callback;)V

    .line 381
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avast/android/generic/app/account/DisconnectFragment;->c:Landroid/os/Handler$Callback;

    .line 382
    return-void
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 351
    invoke-super {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onDetach()V

    .line 353
    invoke-direct {p0}, Lcom/avast/android/generic/app/account/DisconnectFragment;->e()V

    .line 354
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 358
    invoke-super {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onPause()V

    .line 360
    invoke-direct {p0}, Lcom/avast/android/generic/app/account/DisconnectFragment;->g()V

    .line 361
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 365
    invoke-super {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onResume()V

    .line 367
    invoke-direct {p0}, Lcom/avast/android/generic/app/account/DisconnectFragment;->f()V

    .line 368
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 325
    invoke-super {p0, p1, p2}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 327
    invoke-virtual {p0}, Lcom/avast/android/generic/app/account/DisconnectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/avast/android/generic/ae;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    iput-object v0, p0, Lcom/avast/android/generic/app/account/DisconnectFragment;->e:Lcom/avast/android/generic/ae;

    .line 329
    invoke-virtual {p0}, Lcom/avast/android/generic/app/account/DisconnectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avast/android/generic/app/account/DisconnectFragment;->c()I

    move-result v1

    new-instance v2, Lcom/avast/android/generic/app/account/as;

    invoke-direct {v2, p0}, Lcom/avast/android/generic/app/account/as;-><init>(Lcom/avast/android/generic/app/account/DisconnectFragment;)V

    invoke-static {v0, v1, v2}, Lcom/avast/android/generic/ui/PasswordDialog;->a(Landroid/content/Context;ILcom/avast/android/generic/ui/ad;)Landroid/os/Handler$Callback;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/app/account/DisconnectFragment;->c:Landroid/os/Handler$Callback;

    .line 341
    invoke-virtual {p0}, Lcom/avast/android/generic/app/account/DisconnectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/avast/android/generic/util/s;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/util/s;

    sget v1, Lcom/avast/android/generic/t;->q:I

    invoke-virtual {v0, v1, p0}, Lcom/avast/android/generic/util/s;->a(ILandroid/os/Handler$Callback;)V

    .line 343
    return-void
.end method
