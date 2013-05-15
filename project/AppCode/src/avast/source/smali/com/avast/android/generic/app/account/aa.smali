.class Lcom/avast/android/generic/app/account/aa;
.super Lcom/avast/android/generic/util/an;
.source "ConnectionCheckFragment.java"


# instance fields
.field a:Z

.field b:Z

.field c:Z

.field d:Ljava/lang/String;

.field e:Z

.field f:Z

.field g:Z

.field h:Z

.field i:Z

.field j:Z

.field k:Z

.field l:Z

.field m:Z

.field n:Z

.field o:Lcom/avast/android/generic/app/account/u;

.field p:Lcom/avast/a/a/a/c;

.field final synthetic q:I

.field final synthetic r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

.field private s:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 162
    iput-object p1, p0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    iput p2, p0, Lcom/avast/android/generic/app/account/aa;->q:I

    invoke-direct {p0}, Lcom/avast/android/generic/util/an;-><init>()V

    .line 163
    iput-boolean v1, p0, Lcom/avast/android/generic/app/account/aa;->a:Z

    .line 164
    iput-boolean v1, p0, Lcom/avast/android/generic/app/account/aa;->b:Z

    .line 165
    iput-boolean v1, p0, Lcom/avast/android/generic/app/account/aa;->c:Z

    .line 166
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/generic/app/account/aa;->d:Ljava/lang/String;

    .line 168
    iput-boolean v1, p0, Lcom/avast/android/generic/app/account/aa;->e:Z

    .line 169
    iput-boolean v1, p0, Lcom/avast/android/generic/app/account/aa;->f:Z

    .line 170
    iput-boolean v2, p0, Lcom/avast/android/generic/app/account/aa;->g:Z

    .line 171
    iput-boolean v2, p0, Lcom/avast/android/generic/app/account/aa;->h:Z

    .line 172
    iput-boolean v2, p0, Lcom/avast/android/generic/app/account/aa;->i:Z

    .line 173
    iput-boolean v1, p0, Lcom/avast/android/generic/app/account/aa;->j:Z

    .line 174
    iput-boolean v1, p0, Lcom/avast/android/generic/app/account/aa;->k:Z

    .line 175
    iput-boolean v1, p0, Lcom/avast/android/generic/app/account/aa;->l:Z

    .line 176
    iput-boolean v1, p0, Lcom/avast/android/generic/app/account/aa;->m:Z

    .line 177
    iput-boolean v1, p0, Lcom/avast/android/generic/app/account/aa;->n:Z

    .line 178
    new-instance v0, Lcom/avast/android/generic/app/account/u;

    sget-object v1, Lcom/avast/android/generic/app/account/v;->a:Lcom/avast/android/generic/app/account/v;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/avast/android/generic/app/account/u;-><init>(Lcom/avast/android/generic/app/account/v;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/avast/android/generic/app/account/aa;->o:Lcom/avast/android/generic/app/account/u;

    .line 183
    sget-object v0, Lcom/avast/a/a/a/c;->a:Lcom/avast/a/a/a/c;

    iput-object v0, p0, Lcom/avast/android/generic/app/account/aa;->p:Lcom/avast/a/a/a/c;

    return-void
.end method


# virtual methods
.method public bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 162
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/avast/android/generic/app/account/aa;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 234
    iget-object v0, p0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 361
    :cond_0
    :goto_0
    return-object v6

    .line 239
    :cond_1
    const-wide/16 v3, 0x3e8

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 241
    iget-object v0, p0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avast/android/generic/app/account/aa;->s:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 244
    iget v0, p0, Lcom/avast/android/generic/app/account/aa;->q:I

    packed-switch v0, :pswitch_data_0

    .line 352
    :cond_2
    :goto_1
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/generic/app/account/aa;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 353
    :catch_0
    move-exception v0

    .line 354
    iget-object v3, p0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-virtual {v3}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 357
    iput-boolean v1, p0, Lcom/avast/android/generic/app/account/aa;->a:Z

    .line 358
    iput-boolean v1, p0, Lcom/avast/android/generic/app/account/aa;->c:Z

    .line 359
    iget-object v3, p0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    sget v4, Lcom/avast/android/generic/z;->bg:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/avast/android/generic/app/account/aa;->s:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/avast/android/generic/util/q;->a(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {v3, v4, v1}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/app/account/aa;->d:Ljava/lang/String;

    goto :goto_0

    .line 246
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->d(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Lcom/avast/android/generic/ae;

    move-result-object v0

    const-string v3, "system"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/avast/android/generic/ae;->b(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/generic/app/account/aa;->j:Z

    goto :goto_1

    .line 250
    :pswitch_2
    iget-object v0, p0, Lcom/avast/android/generic/app/account/aa;->s:Landroid/content/Context;

    invoke-static {v0}, Lcom/avast/android/generic/util/z;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 252
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/generic/app/account/aa;->l:Z

    .line 255
    :cond_3
    iget-object v0, p0, Lcom/avast/android/generic/app/account/aa;->s:Landroid/content/Context;

    invoke-static {v0}, Lcom/avast/android/generic/util/z;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 257
    iget-object v0, p0, Lcom/avast/android/generic/app/account/aa;->s:Landroid/content/Context;

    const/16 v3, 0x11ea

    invoke-static {v0, v3}, Lcom/avast/android/generic/util/z;->a(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/generic/app/account/aa;->k:Z

    .line 265
    :cond_4
    iget-boolean v0, p0, Lcom/avast/android/generic/app/account/aa;->k:Z

    if-nez v0, :cond_5

    .line 266
    iget-object v0, p0, Lcom/avast/android/generic/app/account/aa;->s:Landroid/content/Context;

    invoke-static {v0}, Lcom/avast/android/generic/util/z;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 268
    iget-object v0, p0, Lcom/avast/android/generic/app/account/aa;->s:Landroid/content/Context;

    const/16 v3, 0x11ea

    invoke-static {v0, v3}, Lcom/avast/android/generic/util/z;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/generic/app/account/aa;->m:Z

    .line 277
    :cond_5
    iget-boolean v0, p0, Lcom/avast/android/generic/app/account/aa;->m:Z

    if-nez v0, :cond_2

    .line 278
    iget-object v0, p0, Lcom/avast/android/generic/app/account/aa;->s:Landroid/content/Context;

    invoke-static {v0}, Lcom/avast/android/generic/util/z;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 280
    iget-object v0, p0, Lcom/avast/android/generic/app/account/aa;->s:Landroid/content/Context;

    const/16 v3, 0x11ea

    invoke-static {v0, v3}, Lcom/avast/android/generic/util/z;->c(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/generic/app/account/aa;->n:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 291
    :pswitch_3
    :try_start_2
    iget-object v0, p0, Lcom/avast/android/generic/app/account/aa;->s:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "background_data"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_6

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/avast/android/generic/app/account/aa;->g:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 298
    :goto_3
    :try_start_3
    iget-object v0, p0, Lcom/avast/android/generic/app/account/aa;->s:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 300
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 301
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/avast/android/generic/app/account/aa;->h:Z

    .line 303
    iget-object v0, p0, Lcom/avast/android/generic/app/account/aa;->s:Landroid/content/Context;

    invoke-static {v0}, Lcom/avast/android/generic/util/ah;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/generic/app/account/aa;->i:Z

    goto/16 :goto_1

    :cond_6
    move v0, v2

    .line 291
    goto :goto_2

    :cond_7
    move v0, v2

    .line 301
    goto :goto_4

    .line 307
    :pswitch_4
    iget-object v0, p0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->d(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Lcom/avast/android/generic/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->x()Ljava/lang/String;

    move-result-object v0

    .line 308
    iget-object v3, p0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v3}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->d(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Lcom/avast/android/generic/ae;

    move-result-object v3

    invoke-virtual {v3}, Lcom/avast/android/generic/ae;->z()Ljava/lang/String;

    move-result-object v3

    .line 310
    iget-object v4, p0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v4}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->e(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Lcom/avast/android/generic/ae;

    move-result-object v4

    invoke-virtual {v4}, Lcom/avast/android/generic/ae;->F()Ljava/lang/String;

    move-result-object v4

    .line 312
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 314
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/generic/app/account/aa;->e:Z

    .line 315
    :cond_8
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 316
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/generic/app/account/aa;->f:Z

    .line 318
    :cond_9
    iget-boolean v0, p0, Lcom/avast/android/generic/app/account/aa;->e:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/avast/android/generic/app/account/aa;->f:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->f(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->g(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 320
    iget-object v0, p0, Lcom/avast/android/generic/app/account/aa;->s:Landroid/content/Context;

    iget-object v3, p0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v3}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->d(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Lcom/avast/android/generic/ae;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/avast/android/generic/app/account/t;->a(Landroid/content/Context;Lcom/avast/android/generic/ae;)Lcom/avast/android/generic/app/account/u;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/app/account/aa;->o:Lcom/avast/android/generic/app/account/u;

    goto/16 :goto_1

    .line 323
    :cond_a
    new-instance v0, Lcom/avast/android/generic/app/account/u;

    sget-object v3, Lcom/avast/android/generic/app/account/v;->a:Lcom/avast/android/generic/app/account/v;

    const-string v4, ""

    invoke-direct {v0, v3, v4}, Lcom/avast/android/generic/app/account/u;-><init>(Lcom/avast/android/generic/app/account/v;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/avast/android/generic/app/account/aa;->o:Lcom/avast/android/generic/app/account/u;

    goto/16 :goto_1

    .line 329
    :pswitch_5
    iget-object v0, p0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->h(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)V

    .line 330
    iget-object v0, p0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->a(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;Z)Z

    .line 331
    iget-object v0, p0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->i(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 333
    :try_start_4
    iget-object v0, p0, Lcom/avast/android/generic/app/account/aa;->s:Landroid/content/Context;

    iget-object v3, p0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v3}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->d(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Lcom/avast/android/generic/ae;

    move-result-object v3

    invoke-virtual {v3}, Lcom/avast/android/generic/ae;->x()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v4}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->d(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Lcom/avast/android/generic/ae;

    move-result-object v4

    invoke-virtual {v4}, Lcom/avast/android/generic/ae;->z()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v5}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->j(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)I

    move-result v5

    invoke-static {v0, v3, v4, v5}, Lcom/avast/android/generic/internet/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/avast/a/a/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/app/account/aa;->p:Lcom/avast/a/a/a/c;

    .line 337
    iget-object v0, p0, Lcom/avast/android/generic/app/account/aa;->p:Lcom/avast/a/a/a/c;

    sget-object v3, Lcom/avast/a/a/a/c;->a:Lcom/avast/a/a/a/c;

    if-eq v0, v3, :cond_2

    .line 338
    iget-object v0, p0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->h(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 342
    :catch_1
    move-exception v0

    .line 343
    :try_start_5
    iget-object v3, p0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v3}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->h(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)V

    .line 344
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 295
    :catch_2
    move-exception v0

    goto/16 :goto_3

    .line 244
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method public a()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 187
    iget-object v0, p0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/app/account/aa;->s:Landroid/content/Context;

    .line 193
    iget-object v0, p0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->a(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-virtual {v1}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/avast/android/generic/q;->a:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 195
    iget-object v0, p0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->b(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v0, p0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->b(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 197
    iget-object v0, p0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->b(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/s;->g:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 199
    iget-object v0, p0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->c(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 201
    iget v0, p0, Lcom/avast/android/generic/app/account/aa;->q:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 203
    :pswitch_0
    iget-object v0, p0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->a(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/z;->cr:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 207
    :pswitch_1
    iget-object v0, p0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->a(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/z;->bb:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 211
    :pswitch_2
    iget-object v0, p0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->a(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/z;->bS:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 215
    :pswitch_3
    iget-object v0, p0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->a(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/z;->bj:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 219
    :pswitch_4
    iget-object v0, p0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->a(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/z;->aF:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 223
    :pswitch_5
    iget-object v0, p0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->a(Lcom/avast/android/generic/app/account/ConnectionCheckFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    sget v2, Lcom/avast/android/generic/z;->bY:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v4, 0x14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/avast/android/generic/app/account/aa;->a(Ljava/lang/Void;)V

    return-void
.end method

.method public a(Ljava/lang/Void;)V
    .locals 2
    .parameter

    .prologue
    .line 366
    iget-object v0, p0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/account/ConnectionCheckFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 747
    :goto_0
    return-void

    .line 370
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/generic/app/account/aa;->b:Z

    .line 372
    iget-object v0, p0, Lcom/avast/android/generic/app/account/aa;->r:Lcom/avast/android/generic/app/account/ConnectionCheckFragment;

    new-instance v1, Lcom/avast/android/generic/app/account/ab;

    invoke-direct {v1, p0}, Lcom/avast/android/generic/app/account/ab;-><init>(Lcom/avast/android/generic/app/account/aa;)V

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/a;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
