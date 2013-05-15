.class public Lcom/avast/android/mobilesecurity/app/home/AppSetupIntentService;
.super Landroid/app/IntentService;
.source "AppSetupIntentService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "AppSetupIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    .line 26
    :try_start_0
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/s;->a(Landroid/content/Context;)Lcom/avast/android/mobilesecurity/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/s;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 29
    invoke-static {}, La/a/a/a/a/a;->a()La/a/a/a/a/a;

    move-result-object v1

    const-string v2, "Caught AVD-429, nothing else can be done."

    invoke-virtual {v1, v2, v0}, La/a/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
