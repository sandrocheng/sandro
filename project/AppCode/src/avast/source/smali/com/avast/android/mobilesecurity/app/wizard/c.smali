.class Lcom/avast/android/mobilesecurity/app/wizard/c;
.super Landroid/os/AsyncTask;
.source "EulaFragment.java"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/avast/android/mobilesecurity/app/wizard/EulaFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/wizard/EulaFragment;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/wizard/c;->b:Lcom/avast/android/mobilesecurity/app/wizard/EulaFragment;

    iput-object p2, p0, Lcom/avast/android/mobilesecurity/app/wizard/c;->a:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter

    .prologue
    .line 59
    sget-object v0, Lcom/avast/android/generic/g/e;->a:Lcom/avast/android/generic/g/e;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/wizard/c;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/avast/android/mobilesecurity/engine/i;->a(Lcom/avast/android/generic/g/e;Landroid/content/Context;)Z

    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 56
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/app/wizard/c;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
