.class public Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;
.super Lcom/avast/android/generic/util/ga/TrackedListFragment;
.source "TrafficinfoFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/avast/android/generic/util/y;


# instance fields
.field private a:Lcom/avast/android/mobilesecurity/t;

.field private b:I

.field private c:I

.field private d:Ljava/util/List;

.field private e:Z

.field private f:Z

.field private g:Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

.field private h:Landroid/content/BroadcastReceiver;

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/avast/android/generic/util/ga/TrackedListFragment;-><init>()V

    .line 68
    const/16 v0, 0xb

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->c:I

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->d:Ljava/util/List;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->f:Z

    .line 112
    new-instance v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/v;

    invoke-direct {v0, p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/v;-><init>(Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->h:Landroid/content/BroadcastReceiver;

    .line 436
    return-void
.end method

.method private a()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 199
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    :goto_0
    return-void

    .line 203
    :cond_0
    :try_start_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 205
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 206
    invoke-static {}, Lcom/avast/android/mobilesecurity/r;->a()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/avast/android/mobilesecurity/r;->a:[Ljava/lang/String;

    const-string v3, "uid = -1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 210
    if-eqz v1, :cond_3

    .line 213
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    :cond_1
    :try_start_2
    invoke-static {v1, v7}, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->a(Landroid/database/Cursor;Ljava/util/HashMap;)Lcom/avast/android/mobilesecurity/app/trafficinfo/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 220
    :goto_1
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 225
    :cond_2
    if-eqz v1, :cond_3

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 233
    :cond_3
    :goto_2
    const-wide/16 v0, -0x1

    :try_start_5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 234
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;

    .line 237
    :goto_3
    if-eqz v0, :cond_b

    .line 238
    iget v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->c:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_5

    .line 239
    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->d:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    .line 247
    :goto_4
    iget v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->b:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 249
    :pswitch_0
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->g:Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->f(Z)V

    .line 250
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->g:Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->e(Z)V

    .line 251
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->g:Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->d(Z)V

    .line 252
    if-eqz v0, :cond_7

    .line 253
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->g:Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

    iget-wide v2, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->h:J

    iget-wide v4, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->i:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->a(JJ)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 289
    :catch_0
    move-exception v0

    .line 290
    const-string v1, "AvastMobileSecurity"

    const-string v2, "Somehow could not update all data info row"

    invoke-static {v1, v2, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 217
    :catch_1
    move-exception v0

    .line 218
    :try_start_6
    const-string v2, "AvastMobileSecurityNetworkInfo"

    const-string v3, "Can not read network info"

    invoke-static {v2, v3, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 224
    :catchall_0
    move-exception v0

    .line 225
    if-eqz v1, :cond_4

    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 228
    :cond_4
    :goto_5
    :try_start_8
    throw v0

    .line 240
    :cond_5
    iget v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->c:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_6

    .line 241
    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->e:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    goto :goto_4

    .line 243
    :cond_6
    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/a;->f:Lcom/avast/android/mobilesecurity/app/trafficinfo/b;

    goto :goto_4

    .line 255
    :cond_7
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->g:Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->a(JJ)V

    goto/16 :goto_0

    .line 259
    :pswitch_1
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->g:Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->c(Z)V

    .line 260
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->g:Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->e(Z)V

    .line 261
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->g:Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->d(Z)V

    .line 262
    if-eqz v0, :cond_8

    .line 263
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->g:Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

    iget-wide v2, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->b:J

    iget-wide v4, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->c:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->c(JJ)V

    goto/16 :goto_0

    .line 265
    :cond_8
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->g:Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->c(JJ)V

    goto/16 :goto_0

    .line 269
    :pswitch_2
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->g:Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->c(Z)V

    .line 270
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->g:Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->f(Z)V

    .line 271
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->g:Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->d(Z)V

    .line 272
    if-eqz v0, :cond_9

    .line 273
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->g:Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

    iget-wide v2, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->d:J

    iget-wide v4, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->e:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->b(JJ)V

    goto/16 :goto_0

    .line 275
    :cond_9
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->g:Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->b(JJ)V

    goto/16 :goto_0

    .line 279
    :pswitch_3
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->g:Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->c(Z)V

    .line 280
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->g:Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->f(Z)V

    .line 281
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->g:Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->e(Z)V

    .line 282
    if-eqz v0, :cond_a

    .line 283
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->g:Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

    iget-wide v2, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->f:J

    iget-wide v4, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/b;->g:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->d(JJ)V

    goto/16 :goto_0

    .line 285
    :cond_a
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->g:Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->d(JJ)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    .line 227
    :catch_2
    move-exception v0

    goto/16 :goto_2

    :catch_3
    move-exception v1

    goto/16 :goto_5

    :cond_b
    move-object v0, v6

    goto/16 :goto_4

    :cond_c
    move-object v0, v6

    goto/16 :goto_3

    .line 247
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->c()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0700d9

    invoke-static {v0, p1, v1, v2}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailActivity;->call(Landroid/content/Context;Ljava/lang/String;II)V

    .line 343
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 177
    new-instance v0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->g:Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

    .line 179
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->f:Z

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->g:Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->c()V

    .line 183
    :cond_0
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->a()V

    .line 185
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->g:Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->b(I)V

    .line 186
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->g:Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

    invoke-virtual {v0, p1}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->c(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->g:Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

    invoke-virtual {v0, p2}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->d(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->g:Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->a(Z)V

    .line 190
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->d:Ljava/util/List;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->g:Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    if-eqz p4, :cond_1

    .line 192
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->g:Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 196
    :goto_0
    return-void

    .line 194
    :cond_1
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->g:Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;)Lcom/avast/android/mobilesecurity/t;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->a:Lcom/avast/android/mobilesecurity/t;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 396
    :cond_0
    const-string v0, "TrafficinfoFragment.refresh() - END"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->d(Ljava/lang/String;)I

    .line 410
    :goto_0
    return-void

    .line 400
    :cond_1
    const-string v0, "TrafficinfoFragment.refresh()"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->d(Ljava/lang/String;)I

    .line 402
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    .line 403
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 404
    const-string v2, "order"

    iget v3, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->b:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 405
    const-string v2, "period"

    iget v3, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->c:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 407
    iget v2, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->i:I

    invoke-virtual {v0, v2, v1, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/a/m;

    .line 409
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->a()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->f:Z

    return v0
.end method

.method static synthetic d(Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 47
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->b:I

    return v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 414
    :try_start_0
    const-string v0, "AvastMobileSecurity"

    const-string v1, "Registered stats receiver"

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 417
    const-string v1, "com.avast.android.mobilesecurity.trafficinfo.STATS_DB_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    :goto_0
    return-void

    .line 419
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 426
    :try_start_0
    const-string v0, "AvastMobileSecurity"

    const-string v1, "Unregistered stats receiver"

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    :goto_0
    return-void

    .line 429
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 390
    iput p1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->c:I

    .line 391
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->c()V

    .line 392
    return-void
.end method

.method public a(ILjava/lang/Object;Landroid/database/Cursor;Landroid/net/Uri;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 376
    return-void
.end method

.method public a(Landroid/support/v4/a/m;Landroid/database/Cursor;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TrafficinfoFragment.onLoadFinished() - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 355
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/support/v4/e/a;

    .line 357
    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {v0, p2}, Landroid/support/v4/e/a;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 359
    if-eqz v0, :cond_0

    .line 360
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 363
    :cond_0
    return-void
.end method

.method public a_()I
    .locals 1

    .prologue
    .line 81
    const v0, 0x7f0c035b

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 296
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 298
    new-instance v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/w;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/avast/android/mobilesecurity/app/trafficinfo/w;-><init>(Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 299
    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 301
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    .line 302
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 303
    const-string v2, "order"

    iget v3, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->b:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 304
    const-string v2, "period"

    iget v3, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->c:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 305
    const v2, 0x26548

    iget v3, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->b:I

    mul-int/lit8 v3, v3, 0x64

    add-int/2addr v2, v3

    iput v2, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->i:I

    .line 306
    iget v2, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->i:I

    invoke-virtual {v0, v2, v1, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/a/m;

    .line 307
    const-string v0, "TrafficinfoFragment.onActivityCreated()"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 309
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->e:Z

    .line 310
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 338
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->a(Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x1

    .line 86
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "argument_order"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 89
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/avast/android/generic/util/u;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 90
    if-gez v0, :cond_0

    const/4 v0, 0x3

    :cond_0
    iput v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->b:I

    .line 95
    :goto_0
    if-eqz p1, :cond_1

    .line 96
    const-string v0, "order"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->b:I

    .line 97
    const-string v0, "period"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->c:I

    .line 100
    :cond_1
    const-string v0, "breadcrumbs"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initial order mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v2, Lcom/avast/android/mobilesecurity/t;

    invoke-static {v0, v2}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->a:Lcom/avast/android/mobilesecurity/t;

    .line 105
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_2

    .line 106
    iput-boolean v4, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->f:Z

    .line 109
    :cond_2
    invoke-virtual {p0, v4}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->setHasOptionsMenu(Z)V

    .line 110
    return-void

    .line 92
    :cond_3
    if-gez v0, :cond_4

    move v0, v1

    :cond_4
    iput v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->b:I

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/a/m;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TrafficinfoFragment.onCreateLoader() - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 348
    new-instance v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/g;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "order"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "period"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/app/trafficinfo/g;-><init>(Landroid/content/Context;II)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 149
    const v0, 0x7f100004

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 150
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    const v0, 0x7f03006b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 165
    invoke-super {p0}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onDestroyView()V

    .line 166
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->e()V

    .line 167
    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/a/m;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->a(Landroid/support/v4/a/m;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/a/m;)V
    .locals 2
    .parameter

    .prologue
    .line 367
    const-string v0, "TrafficinfoFragment.onLoaderReset()"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 368
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/support/v4/e/a;

    .line 369
    if-eqz v0, :cond_0

    .line 370
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/e/a;->changeCursor(Landroid/database/Cursor;)V

    .line 372
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 154
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 160
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 156
    :pswitch_0
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsActivity;->call(Landroid/content/Context;)V

    .line 158
    const/4 v0, 0x1

    goto :goto_0

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x7f07023d
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 380
    invoke-super {p0}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onPause()V

    .line 381
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 314
    invoke-super {p0}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onResume()V

    .line 315
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->e:Z

    if-nez v0, :cond_0

    .line 318
    const-string v0, "TrafficinfoFragment.onResume()"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->d(Ljava/lang/String;)I

    .line 319
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->c()V

    .line 320
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/support/v4/e/a;

    invoke-virtual {v0}, Landroid/support/v4/e/a;->notifyDataSetChanged()V

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->a:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->aK()Z

    move-result v1

    .line 324
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;

    .line 325
    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/ui/widget/TrafficinfoTypeRow;->setEnabled(Z)V

    goto :goto_0

    .line 327
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 331
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 332
    const-string v0, "order"

    iget v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 333
    const-string v0, "period"

    iget v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->c:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 334
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 140
    invoke-super {p0, p1, p2}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 141
    const v0, 0x7f0c0370

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0c0371

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ALL"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 142
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 144
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;->d()V

    .line 145
    return-void
.end method
