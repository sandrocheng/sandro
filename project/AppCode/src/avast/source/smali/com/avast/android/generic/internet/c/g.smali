.class public Lcom/avast/android/generic/internet/c/g;
.super Ljava/lang/Exception;
.source "AvastAccountException.java"


# instance fields
.field private a:Lcom/avast/android/generic/internet/c/h;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/avast/android/generic/internet/c/h;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error from id.avast.com: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/g;->a:Lcom/avast/android/generic/internet/c/h;

    .line 92
    iput-object p2, p0, Lcom/avast/android/generic/internet/c/g;->a:Lcom/avast/android/generic/internet/c/h;

    .line 93
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error from id.avast.com: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/g;->a:Lcom/avast/android/generic/internet/c/h;

    .line 81
    invoke-static {p2}, Lcom/avast/android/generic/internet/c/h;->a(Ljava/lang/String;)Lcom/avast/android/generic/internet/c/h;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/g;->a:Lcom/avast/android/generic/internet/c/h;

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .parameter

    .prologue
    .line 96
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/g;->a:Lcom/avast/android/generic/internet/c/h;

    .line 97
    return-void
.end method


# virtual methods
.method public a()Lcom/avast/android/generic/internet/c/h;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/g;->a:Lcom/avast/android/generic/internet/c/h;

    return-object v0
.end method
