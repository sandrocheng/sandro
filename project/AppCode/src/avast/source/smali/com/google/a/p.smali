.class public abstract Lcom/google/a/p;
.super Lcom/google/a/l;
.source "GeneratedMessageLite.java"

# interfaces
.implements Lcom/google/a/r;


# instance fields
.field private final a:Lcom/google/a/i;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/google/a/l;-><init>()V

    .line 135
    invoke-static {}, Lcom/google/a/i;->a()Lcom/google/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/p;->a:Lcom/google/a/i;

    .line 136
    return-void
.end method

.method protected constructor <init>(Lcom/google/a/o;)V
    .locals 1
    .parameter

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/google/a/l;-><init>()V

    .line 139
    invoke-static {p1}, Lcom/google/a/o;->a(Lcom/google/a/o;)Lcom/google/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/p;->a:Lcom/google/a/i;

    .line 140
    return-void
.end method

.method static synthetic a(Lcom/google/a/p;)Lcom/google/a/i;
    .locals 1
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/a/p;->a:Lcom/google/a/i;

    return-object v0
.end method


# virtual methods
.method protected am()Z
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/a/p;->a:Lcom/google/a/i;

    invoke-virtual {v0}, Lcom/google/a/i;->f()Z

    move-result v0

    return v0
.end method

.method protected an()Lcom/google/a/q;
    .locals 3

    .prologue
    .line 242
    new-instance v0, Lcom/google/a/q;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/a/q;-><init>(Lcom/google/a/p;ZLcom/google/a/m;)V

    return-object v0
.end method

.method protected ao()I
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/a/p;->a:Lcom/google/a/i;

    invoke-virtual {v0}, Lcom/google/a/i;->g()I

    move-result v0

    return v0
.end method
