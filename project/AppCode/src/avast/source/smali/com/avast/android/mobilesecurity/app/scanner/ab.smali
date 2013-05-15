.class Lcom/avast/android/mobilesecurity/app/scanner/ab;
.super Landroid/os/AsyncTask;
.source "ScannerLogFragment.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/scanner/ab;->a:Landroid/content/Context;

    .line 99
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/avast/android/mobilesecurity/app/scanner/y;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/app/scanner/ab;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Lcom/avast/android/mobilesecurity/app/scanner/ae;)Ljava/lang/Void;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 103
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 104
    iget-object v1, v0, Lcom/avast/android/mobilesecurity/app/scanner/ae;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/ab;->a:Landroid/content/Context;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/scanner/ae;->c:Ljava/lang/String;

    sget-object v2, Lcom/avast/android/mobilesecurity/engine/d;->b:Lcom/avast/android/mobilesecurity/engine/d;

    invoke-static {v1, v3, v3, v0, v2}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/avast/android/mobilesecurity/engine/d;)V

    .line 111
    :goto_0
    return-object v3

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/ab;->a:Landroid/content/Context;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/scanner/ae;->b:Ljava/lang/String;

    sget-object v2, Lcom/avast/android/mobilesecurity/engine/d;->b:Lcom/avast/android/mobilesecurity/engine/d;

    invoke-static {v1, v3, v0, v3, v2}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/avast/android/mobilesecurity/engine/d;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 94
    check-cast p1, [Lcom/avast/android/mobilesecurity/app/scanner/ae;

    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/app/scanner/ab;->a([Lcom/avast/android/mobilesecurity/app/scanner/ae;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
