.class public abstract Lcom/avast/android/generic/ui/BaseActivity;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;
.source "BaseActivity.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field public static f:J

.field private static h:J


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field final d:Lcom/avast/android/generic/util/a;

.field protected e:Z

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    .line 52
    invoke-static {p0}, Lcom/avast/android/generic/util/a;->a(Landroid/app/Activity;)Lcom/avast/android/generic/util/a;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/ui/BaseActivity;->d:Lcom/avast/android/generic/util/a;

    .line 58
    iput-boolean v1, p0, Lcom/avast/android/generic/ui/BaseActivity;->e:Z

    .line 63
    iput-boolean v1, p0, Lcom/avast/android/generic/ui/BaseActivity;->a:Z

    .line 71
    iput-boolean v1, p0, Lcom/avast/android/generic/ui/BaseActivity;->b:Z

    return-void
.end method

.method public static a(Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 2
    .parameter

    .prologue
    .line 293
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 294
    if-nez p0, :cond_0

    move-object v0, v1

    .line 307
    :goto_0
    return-object v0

    .line 298
    :cond_0
    const-string v0, "_action"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    const-string v0, "_uri"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 301
    if-eqz v0, :cond_1

    .line 302
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 305
    :cond_1
    invoke-virtual {v1, p0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 306
    const-string v0, "_uri"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    move-object v0, v1

    .line 307
    goto :goto_0
.end method

.method public static b(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 3
    .parameter

    .prologue
    .line 267
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 268
    if-nez p0, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-object v0

    .line 272
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 273
    const-string v1, "_action"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_2
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 277
    if-eqz v1, :cond_3

    .line 278
    const-string v2, "_uri"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 281
    :cond_3
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 282
    if-eqz v1, :cond_0

    .line 283
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    invoke-virtual {p0, p1}, Lcom/avast/android/generic/ui/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 226
    return-void
.end method

.method public a(Landroid/net/Uri;)V
    .locals 2
    .parameter

    .prologue
    .line 235
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 237
    invoke-virtual {p0, v0}, Lcom/avast/android/generic/ui/BaseActivity;->a(Landroid/content/Intent;)V

    .line 238
    return-void
.end method

.method public a(Ljava/lang/Class;)V
    .locals 1
    .parameter

    .prologue
    .line 247
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/ui/BaseActivity;->a(Landroid/content/Intent;)V

    .line 248
    return-void
.end method

.method public a(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 257
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 258
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 259
    invoke-virtual {p0, v0}, Lcom/avast/android/generic/ui/BaseActivity;->a(Landroid/content/Intent;)V

    .line 260
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 341
    iput-boolean p1, p0, Lcom/avast/android/generic/ui/BaseActivity;->e:Z

    .line 342
    return-void
.end method

.method protected e()Lcom/avast/android/generic/util/a;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/avast/android/generic/ui/BaseActivity;->d:Lcom/avast/android/generic/util/a;

    return-object v0
.end method

.method public f()V
    .locals 2

    .prologue
    .line 354
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Allowing one-time unauthorized access."

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/generic/ui/BaseActivity;->a:Z

    .line 356
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 360
    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 362
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 98
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/BaseActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 104
    :cond_0
    invoke-static {p0}, Lcom/avast/android/generic/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/ui/BaseActivity;->g:Ljava/lang/String;

    .line 106
    const-class v0, Lcom/avast/android/generic/ae;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    .line 107
    const-string v1, "GAFirstRun"

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/generic/ae;->b(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/avast/android/generic/ui/BaseActivity;->c:Z

    .line 108
    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->p()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/avast/android/generic/ui/BaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/avast/android/generic/Application;

    invoke-virtual {v1}, Lcom/avast/android/generic/Application;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/avast/android/generic/util/l;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    .line 111
    :goto_0
    invoke-static {}, Lcom/avast/android/generic/util/ga/a;->b()Lcom/avast/android/generic/util/ga/a;

    move-result-object v2

    .line 112
    invoke-virtual {v2, v1}, Lcom/avast/android/generic/util/ga/a;->a(Z)V

    .line 114
    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/avast/android/generic/ui/BaseActivity;->c:Z

    if-eqz v1, :cond_1

    .line 115
    const-string v1, "Analytics firstRun."

    invoke-static {v1}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 116
    const-string v1, "GAFirstRun"

    invoke-virtual {v0, v1, v3}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Z)V

    .line 117
    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->b()Z

    .line 119
    :cond_1
    return-void

    :cond_2
    move v1, v3

    .line 108
    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const-wide/16 v5, 0x0

    .line 189
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 190
    invoke-static {}, Lcom/avast/android/generic/util/ga/a;->a()Lcom/google/analytics/tracking/android/bo;

    move-result-object v0

    const-string v1, "common"

    const-string v2, "keyMenuPressed"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/analytics/tracking/android/bo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 194
    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 195
    invoke-static {}, Lcom/avast/android/generic/util/ga/a;->a()Lcom/google/analytics/tracking/android/bo;

    move-result-object v0

    const-string v1, "common"

    const-string v2, "keyBackPressed"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/analytics/tracking/android/bo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 201
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/avast/android/generic/ui/BaseActivity;->d:Lcom/avast/android/generic/util/a;

    invoke-virtual {v0, p1, p2}, Lcom/avast/android/generic/util/a;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 206
    iget-object v0, p0, Lcom/avast/android/generic/ui/BaseActivity;->d:Lcom/avast/android/generic/util/a;

    invoke-virtual {v0, p1}, Lcom/avast/android/generic/util/a;->a(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 164
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onPause()V

    .line 165
    iget-boolean v0, p0, Lcom/avast/android/generic/ui/BaseActivity;->e:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/avast/android/generic/ui/BaseActivity;->b:Z

    if-nez v0, :cond_0

    .line 166
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/avast/android/generic/ui/BaseActivity;->h:J

    .line 169
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/generic/ui/BaseActivity;->b:Z

    .line 170
    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onPostResume()V

    .line 150
    iget-boolean v0, p0, Lcom/avast/android/generic/ui/BaseActivity;->e:Z

    if-nez v0, :cond_0

    .line 151
    iget-boolean v0, p0, Lcom/avast/android/generic/ui/BaseActivity;->a:Z

    if-nez v0, :cond_1

    .line 152
    invoke-static {p0}, Lcom/avast/android/generic/k;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 159
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/android/generic/ui/BaseActivity;->a:Z

    .line 160
    return-void

    .line 154
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/generic/ui/BaseActivity;->b:Z

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 140
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onResume()V

    .line 141
    iget-object v0, p0, Lcom/avast/android/generic/ui/BaseActivity;->g:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/avast/android/generic/g;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method protected onStart()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 123
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onStart()V

    .line 125
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/avast/android/generic/ui/BaseActivity;->h:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/avast/android/generic/ui/BaseActivity;->f:J

    .line 131
    invoke-static {}, Lcom/avast/android/generic/util/ga/a;->b()Lcom/avast/android/generic/util/ga/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avast/android/generic/util/ga/a;->a(Landroid/app/Activity;)V

    .line 132
    iget-boolean v0, p0, Lcom/avast/android/generic/ui/BaseActivity;->c:Z

    if-eqz v0, :cond_0

    .line 133
    invoke-static {}, Lcom/avast/android/generic/util/ga/a;->a()Lcom/google/analytics/tracking/android/bo;

    move-result-object v0

    const-string v1, "common"

    const-string v2, "firstRun"

    invoke-virtual {p0}, Lcom/avast/android/generic/ui/BaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/analytics/tracking/android/bo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 134
    invoke-static {}, Lcom/avast/android/generic/util/ga/a;->a()Lcom/google/analytics/tracking/android/bo;

    move-result-object v0

    const-string v1, "common"

    const-string v2, "firstRun-GA-v2"

    invoke-virtual {p0}, Lcom/avast/android/generic/ui/BaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/analytics/tracking/android/bo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 136
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 174
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onStop()V

    .line 178
    invoke-static {}, Lcom/avast/android/generic/util/ga/a;->b()Lcom/avast/android/generic/util/ga/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avast/android/generic/util/ga/a;->b(Landroid/app/Activity;)V

    .line 179
    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 373
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const/high16 v0, -0x1

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    .line 374
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only use lower 16 bits for requestCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    .line 378
    return-void
.end method
