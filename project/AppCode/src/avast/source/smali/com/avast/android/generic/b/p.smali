.class public Lcom/avast/android/generic/b/p;
.super Ljava/lang/Object;
.source "CommandSmsHandlerCallback.java"

# interfaces
.implements Lcom/avast/android/generic/f/a/a;


# instance fields
.field private a:Lcom/avast/android/generic/b/d;


# direct methods
.method public constructor <init>(Lcom/avast/android/generic/b/d;)V
    .locals 0
    .parameter

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/avast/android/generic/b/p;->a:Lcom/avast/android/generic/b/d;

    .line 11
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lcom/avast/android/generic/b/p;->a:Lcom/avast/android/generic/b/d;

    invoke-virtual {v0}, Lcom/avast/android/generic/b/d;->u()Lcom/avast/android/generic/b/a;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/b/a;->c(Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/avast/android/generic/b/p;->a:Lcom/avast/android/generic/b/d;

    invoke-virtual {v0}, Lcom/avast/android/generic/b/d;->u()Lcom/avast/android/generic/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/b/a;->o()V

    .line 27
    return-void
.end method

.method public b(I)V
    .locals 0
    .parameter

    .prologue
    .line 20
    return-void
.end method
