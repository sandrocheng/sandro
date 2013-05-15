.class public Lcom/avast/android/generic/util/a;
.super Ljava/lang/Object;
.source "ActivityHelper.java"


# instance fields
.field protected a:Landroid/app/Activity;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/avast/android/generic/util/a;->a:Landroid/app/Activity;

    .line 53
    return-void
.end method

.method public static a(Landroid/app/Activity;)Lcom/avast/android/generic/util/a;
    .locals 1
    .parameter

    .prologue
    .line 48
    new-instance v0, Lcom/avast/android/generic/util/a;

    invoke-direct {v0, p0}, Lcom/avast/android/generic/util/a;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public static a(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .parameter

    .prologue
    .line 176
    if-eqz p0, :cond_0

    .line 177
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    const-string v1, "AvastGeneric"

    const-string v2, "Error in finishing fragment activity"

    invoke-static {v1, v2, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Landroid/support/v4/app/Fragment;Ljava/lang/Runnable;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 163
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 164
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    const-string v1, "AvastGeneric"

    const-string v2, "Error in running on UI thread"

    invoke-static {v1, v2, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 72
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/avast/android/generic/util/a;->c()V

    .line 74
    const/4 v0, 0x1

    .line 76
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 56
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 61
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 58
    :pswitch_0
    invoke-virtual {p0}, Lcom/avast/android/generic/util/a;->c()V

    .line 59
    const/4 v0, 0x1

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public b()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public c()V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 98
    .line 99
    iget-object v0, p0, Lcom/avast/android/generic/util/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 104
    const-string v0, "com.avast.android.antitheft"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "com.avast.android.at_play"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "com.avast.android.backup"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 107
    const-string v0, "com.avast.android.mobilesecurity"

    .line 110
    :goto_0
    const-string v4, "com.avast.android.backup"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 112
    const-string v0, "com.avast.android.backup"

    .line 115
    const-string v4, "com.avast.android.backup"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/avast/android/generic/util/a;->a:Landroid/app/Activity;

    invoke-static {v4}, Lcom/avast/android/generic/util/z;->a(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 117
    const-string v1, "com.avast.android.mobilesecurity"

    .line 118
    const-string v0, "com.avast.android.mobilesecurity"

    .line 132
    :goto_1
    const-string v3, "com.avast.android.at_play"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 133
    const-string v0, "com.avast.android.antitheft"

    .line 135
    :cond_0
    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/avast/android/generic/util/a;->a:Landroid/app/Activity;

    instance-of v2, v2, Lcom/avast/android/generic/ui/t;

    if-eqz v2, :cond_4

    .line 152
    :cond_1
    :goto_2
    return-void

    .line 123
    :cond_2
    const-string v4, "com.avast.android.antitheft"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "com.avast.android.at_play"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_3
    iget-object v4, p0, Lcom/avast/android/generic/util/a;->a:Landroid/app/Activity;

    invoke-static {v4}, Lcom/avast/android/generic/util/z;->a(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 126
    const-string v1, "com.avast.android.mobilesecurity"

    .line 127
    const-string v0, "com.avast.android.mobilesecurity"

    goto :goto_1

    .line 140
    :cond_4
    invoke-static {}, Lcom/avast/android/generic/util/ga/a;->a()Lcom/google/analytics/tracking/android/bo;

    move-result-object v2

    const-string v3, "common"

    const-string v4, "avastLogoGoHome"

    iget-object v5, p0, Lcom/avast/android/generic/util/a;->a:Landroid/app/Activity;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/google/analytics/tracking/android/bo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 143
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 144
    new-instance v3, Landroid/content/ComponentName;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ".app.home.HomeActivity"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 146
    const/high16 v0, 0x400

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 147
    iget-object v0, p0, Lcom/avast/android/generic/util/a;->a:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 149
    invoke-static {}, Lcom/avast/android/generic/util/al;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/avast/android/generic/util/a;->a:Landroid/app/Activity;

    sget v1, Lcom/avast/android/generic/n;->b:I

    sget v2, Lcom/avast/android/generic/n;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_2

    :cond_5
    move v2, v3

    goto/16 :goto_1

    :cond_6
    move-object v0, v1

    goto/16 :goto_0
.end method
