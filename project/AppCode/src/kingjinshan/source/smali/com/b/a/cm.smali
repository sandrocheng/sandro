.class final Lcom/b/a/cm;
.super Ljava/lang/Object;
.source "Descriptors.java"

# interfaces
.implements Lcom/b/a/cv;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/b/a/ct;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/b/a/ct;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1753
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1754
    iput-object p3, p0, Lcom/b/a/cm;->c:Lcom/b/a/ct;

    .line 1755
    iput-object p2, p0, Lcom/b/a/cm;->b:Ljava/lang/String;

    .line 1756
    iput-object p1, p0, Lcom/b/a/cm;->a:Ljava/lang/String;

    .line 1757
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1748
    iget-object v0, p0, Lcom/b/a/cm;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1749
    iget-object v0, p0, Lcom/b/a/cm;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lcom/b/a/ct;
    .locals 1

    .prologue
    .line 1750
    iget-object v0, p0, Lcom/b/a/cm;->c:Lcom/b/a/ct;

    return-object v0
.end method

.method public final i()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 1747
    iget-object v0, p0, Lcom/b/a/cm;->c:Lcom/b/a/ct;

    invoke-virtual {v0}, Lcom/b/a/ct;->a()Lcom/b/a/av;

    move-result-object v0

    return-object v0
.end method
