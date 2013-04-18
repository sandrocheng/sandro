.class public final Lcom/hoi/netstat/j;
.super Ljava/lang/Object;
.source "NetStatNetItem.java"

# interfaces
.implements Lcom/hoi/netstat/a;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/hoi/netstat/k;

.field public c:Lcom/hoi/netstat/l;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/hoi/netstat/k;

    invoke-direct {v0, p0}, Lcom/hoi/netstat/k;-><init>(Lcom/hoi/netstat/j;)V

    iput-object v0, p0, Lcom/hoi/netstat/j;->b:Lcom/hoi/netstat/k;

    .line 33
    new-instance v0, Lcom/hoi/netstat/l;

    invoke-direct {v0, p0}, Lcom/hoi/netstat/l;-><init>(Lcom/hoi/netstat/j;)V

    iput-object v0, p0, Lcom/hoi/netstat/j;->c:Lcom/hoi/netstat/l;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 28
    const-string v0, "%s:tx%d,rx%d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/hoi/netstat/j;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/hoi/netstat/j;->c:Lcom/hoi/netstat/l;

    iget v3, v3, Lcom/hoi/netstat/l;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/hoi/netstat/j;->b:Lcom/hoi/netstat/k;

    iget v3, v3, Lcom/hoi/netstat/k;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 36
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[\\s:]+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 37
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/hoi/netstat/j;->a:Ljava/lang/String;

    .line 38
    iget-object v1, p0, Lcom/hoi/netstat/j;->b:Lcom/hoi/netstat/k;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/hoi/netstat/k;->a:I

    .line 39
    iget-object v1, p0, Lcom/hoi/netstat/j;->b:Lcom/hoi/netstat/k;

    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/hoi/netstat/k;->b:I

    .line 40
    iget-object v1, p0, Lcom/hoi/netstat/j;->b:Lcom/hoi/netstat/k;

    const/4 v2, 0x3

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/hoi/netstat/k;->c:I

    .line 41
    iget-object v1, p0, Lcom/hoi/netstat/j;->b:Lcom/hoi/netstat/k;

    const/4 v2, 0x4

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/hoi/netstat/k;->d:I

    .line 42
    iget-object v1, p0, Lcom/hoi/netstat/j;->b:Lcom/hoi/netstat/k;

    const/4 v2, 0x5

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/hoi/netstat/k;->e:I

    .line 43
    iget-object v1, p0, Lcom/hoi/netstat/j;->b:Lcom/hoi/netstat/k;

    const/4 v2, 0x6

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/hoi/netstat/k;->f:I

    .line 44
    iget-object v1, p0, Lcom/hoi/netstat/j;->b:Lcom/hoi/netstat/k;

    const/4 v2, 0x7

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/hoi/netstat/k;->g:I

    .line 45
    iget-object v1, p0, Lcom/hoi/netstat/j;->b:Lcom/hoi/netstat/k;

    const/16 v2, 0x8

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/hoi/netstat/k;->h:I

    .line 47
    iget-object v1, p0, Lcom/hoi/netstat/j;->c:Lcom/hoi/netstat/l;

    const/16 v2, 0x9

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/hoi/netstat/l;->a:I

    .line 48
    iget-object v1, p0, Lcom/hoi/netstat/j;->c:Lcom/hoi/netstat/l;

    const/16 v2, 0xa

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/hoi/netstat/l;->b:I

    .line 49
    iget-object v1, p0, Lcom/hoi/netstat/j;->c:Lcom/hoi/netstat/l;

    const/16 v2, 0xb

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/hoi/netstat/l;->c:I

    .line 50
    iget-object v1, p0, Lcom/hoi/netstat/j;->c:Lcom/hoi/netstat/l;

    const/16 v2, 0xc

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/hoi/netstat/l;->d:I

    .line 51
    iget-object v1, p0, Lcom/hoi/netstat/j;->c:Lcom/hoi/netstat/l;

    const/16 v2, 0xd

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/hoi/netstat/l;->e:I

    .line 52
    iget-object v1, p0, Lcom/hoi/netstat/j;->c:Lcom/hoi/netstat/l;

    const/16 v2, 0xe

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/hoi/netstat/l;->f:I

    .line 53
    iget-object v1, p0, Lcom/hoi/netstat/j;->c:Lcom/hoi/netstat/l;

    const/16 v2, 0xf

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/hoi/netstat/l;->g:I

    .line 54
    iget-object v1, p0, Lcom/hoi/netstat/j;->c:Lcom/hoi/netstat/l;

    const/16 v2, 0x10

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/hoi/netstat/l;->h:I

    .line 55
    return-void
.end method
