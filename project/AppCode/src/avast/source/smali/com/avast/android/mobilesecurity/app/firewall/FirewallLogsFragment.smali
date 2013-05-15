.class public Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;
.super Lcom/avast/android/generic/util/ga/TrackedListFragment;
.source "FirewallLogsFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Lcom/avast/android/mobilesecurity/t;

.field private c:Landroid/support/v4/app/LoaderManager;

.field private d:Landroid/os/Looper;

.field private e:Landroid/os/Handler;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/avast/android/generic/util/ga/TrackedListFragment;-><init>()V

    .line 283
    return-void
.end method

.method private a(Landroid/content/Context;)Ljava/util/Map;
    .locals 6
    .parameter

    .prologue
    .line 207
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 212
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 214
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 216
    if-nez v0, :cond_0

    move-object v0, v1

    .line 240
    :goto_0
    return-object v0

    .line 220
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 221
    const-string v4, "android.permission.INTERNET"

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    .line 224
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 225
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 227
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 228
    if-nez v0, :cond_2

    .line 229
    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 233
    :catch_0
    move-exception v0

    .line 235
    const-string v4, "Can not load app label resource"

    invoke-static {v4, v0}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 231
    :cond_2
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 240
    goto :goto_0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;->b:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->Y()Z

    move-result v0

    .line 202
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;->a:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;->a:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 204
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;->c()V

    return-void
.end method

.method static synthetic c(Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;->e:Landroid/os/Handler;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 247
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;->c:Landroid/support/v4/app/LoaderManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/a/m;

    .line 248
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/a/m;Landroid/database/Cursor;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x8

    .line 257
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/support/v4/e/a;

    .line 258
    if-nez v0, :cond_0

    .line 259
    new-instance v0, Lcom/avast/android/mobilesecurity/app/firewall/ab;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2, p2}, Lcom/avast/android/mobilesecurity/app/firewall/ab;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 260
    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 264
    :goto_0
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f07010d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 265
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 266
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v2, 0x1020004

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 267
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 268
    return-void

    .line 262
    :cond_0
    invoke-virtual {v0, p2}, Landroid/support/v4/e/a;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 265
    goto :goto_1
.end method

.method public a_()I
    .locals 1

    .prologue
    .line 75
    const v0, 0x7f0c01fd

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const-string v0, "/ms/firewall/log"

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 80
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Firewall Log Refresh Thread"

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 84
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 86
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;->d:Landroid/os/Looper;

    .line 87
    new-instance v0, Lcom/avast/android/mobilesecurity/app/firewall/x;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;->d:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/avast/android/mobilesecurity/app/firewall/x;-><init>(Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;->e:Landroid/os/Handler;

    .line 97
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/avast/android/mobilesecurity/t;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;->b:Lcom/avast/android/mobilesecurity/t;

    .line 98
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;->c:Landroid/support/v4/app/LoaderManager;

    .line 99
    iput-boolean v2, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;->g:Z

    .line 100
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/a/m;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 252
    new-instance v0, Lcom/avast/android/mobilesecurity/app/firewall/core/h;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/avast/android/mobilesecurity/app/firewall/core/h;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 104
    const v0, 0x7f030055

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 106
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;->b:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->X()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    move-object v0, v1

    .line 155
    :goto_0
    return-object v0

    .line 111
    :cond_0
    const v0, 0x7f070132

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;->a:Landroid/widget/Button;

    .line 112
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;->a:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 113
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;->a()V

    .line 114
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;->a:Landroid/widget/Button;

    new-instance v2, Lcom/avast/android/mobilesecurity/app/firewall/y;

    invoke-direct {v2, p0}, Lcom/avast/android/mobilesecurity/app/firewall/y;-><init>(Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v0, v1

    .line 155
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 195
    invoke-super {p0}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onDestroy()V

    .line 196
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;->d:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 197
    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/a/m;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;->a(Landroid/support/v4/a/m;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/a/m;)V
    .locals 2
    .parameter

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/support/v4/e/a;

    .line 273
    if-eqz v0, :cond_0

    .line 274
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/e/a;->changeCursor(Landroid/database/Cursor;)V

    .line 276
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 187
    invoke-super {p0}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onPause()V

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;->f:Z

    .line 190
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 191
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 179
    invoke-super {p0}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onResume()V

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;->f:Z

    .line 182
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;->e:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 183
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 170
    invoke-super {p0}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onStart()V

    .line 171
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;->g:Z

    if-nez v0, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;->c()V

    .line 174
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;->g:Z

    .line 175
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 160
    invoke-super {p0, p1, p2}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 161
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 162
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const v2, 0x7f030056

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 165
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;->c:Landroid/support/v4/app/LoaderManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/a/m;

    .line 166
    return-void
.end method
