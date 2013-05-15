.class public Lcom/google/a/al;
.super Ljava/lang/RuntimeException;
.source "UninitializedMessageException.java"


# instance fields
.field private final a:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/a/aa;)V
    .locals 1
    .parameter

    .prologue
    .line 53
    const-string v0, "Message was missing required fields.  (Lite runtime could not determine which fields were missing)."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/a/al;->a:Ljava/util/List;

    .line 56
    return-void
.end method


# virtual methods
.method public a()Lcom/google/a/x;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Lcom/google/a/x;

    invoke-virtual {p0}, Lcom/google/a/al;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/a/x;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
