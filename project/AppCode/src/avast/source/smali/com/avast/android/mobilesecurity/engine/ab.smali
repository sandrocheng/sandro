.class public Lcom/avast/android/mobilesecurity/engine/ab;
.super Ljava/lang/Object;
.source "SubmitDialogInformation.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/ab;->a:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/ab;->b:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/ab;->a:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/ab;->b:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/ab;->a:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/avast/android/mobilesecurity/engine/ab;->b:Ljava/lang/String;

    .line 39
    return-void
.end method
