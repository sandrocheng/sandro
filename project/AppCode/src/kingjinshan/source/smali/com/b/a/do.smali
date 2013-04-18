.class final Lcom/b/a/do;
.super Ljava/lang/Object;
.source "GeneratedMessage.java"

# interfaces
.implements Lcom/b/a/dp;


# instance fields
.field final synthetic a:Lcom/b/a/dn;


# direct methods
.method synthetic constructor <init>(Lcom/b/a/dn;)V
    .locals 1
    .parameter

    .prologue
    .line 446
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/b/a/do;-><init>(Lcom/b/a/dn;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/dn;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 446
    iput-object p1, p0, Lcom/b/a/do;->a:Lcom/b/a/dn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/b/a/do;->a:Lcom/b/a/dn;

    invoke-virtual {v0}, Lcom/b/a/dn;->af_()V

    .line 451
    return-void
.end method
