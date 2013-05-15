.class Lcom/avast/android/antitheft_setup_components/app/home/ad;
.super Ljava/lang/Object;
.source "RootMethodFragment.java"

# interfaces
.implements Lcom/avast/android/antitheft_setup_components/b/e;


# instance fields
.field final synthetic a:Lcom/avast/android/antitheft_setup_components/app/home/ac;


# direct methods
.method constructor <init>(Lcom/avast/android/antitheft_setup_components/app/home/ac;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/avast/android/antitheft_setup_components/app/home/ad;->a:Lcom/avast/android/antitheft_setup_components/app/home/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/avast/android/generic/util/o;)V
    .locals 6
    .parameter

    .prologue
    .line 232
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/ad;->a:Lcom/avast/android/antitheft_setup_components/app/home/ac;

    iget-object v0, v0, Lcom/avast/android/antitheft_setup_components/app/home/ac;->a:Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;

    const-string v1, "ms-atSetup"

    const-string v2, "root method, update-zip"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "edify "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/avast/android/generic/util/o;->name()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 234
    iget-object v0, p0, Lcom/avast/android/antitheft_setup_components/app/home/ad;->a:Lcom/avast/android/antitheft_setup_components/app/home/ac;

    iget-object v0, v0, Lcom/avast/android/antitheft_setup_components/app/home/ac;->a:Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;

    sget-object v1, Lcom/avast/android/generic/util/am;->a:Lcom/avast/android/generic/util/am;

    invoke-static {v0, v1, p1}, Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;->a(Lcom/avast/android/antitheft_setup_components/app/home/RootMethodFragment;Lcom/avast/android/generic/util/am;Lcom/avast/android/generic/util/o;)V

    .line 235
    return-void

    .line 232
    :cond_0
    const-string v3, "UNKNOWN"

    goto :goto_0
.end method
