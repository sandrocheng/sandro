.class public final Lcom/jxphone/mosecurity/c/j;
.super Ljava/lang/Object;
.source "PhoneCall.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J = -0x5983d359e6b6a9d4L


# instance fields
.field private b:I

.field private c:I

.field private final d:Lcom/jxphone/mosecurity/c/k;

.field private e:J

.field private f:I

.field private g:Lcom/jxphone/mosecurity/c/c;

.field private h:J

.field private i:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, Lcom/jxphone/mosecurity/c/c;->a:Lcom/jxphone/mosecurity/c/c;

    iput-object v0, p0, Lcom/jxphone/mosecurity/c/j;->g:Lcom/jxphone/mosecurity/c/c;

    .line 22
    iput-wide v1, p0, Lcom/jxphone/mosecurity/c/j;->h:J

    .line 23
    iput-wide v1, p0, Lcom/jxphone/mosecurity/c/j;->i:J

    .line 26
    if-eqz p1, :cond_0

    .line 27
    new-instance v0, Lcom/jxphone/mosecurity/c/k;

    invoke-direct {v0, p1}, Lcom/jxphone/mosecurity/c/k;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jxphone/mosecurity/c/j;->d:Lcom/jxphone/mosecurity/c/k;

    .line 31
    :goto_0
    return-void

    .line 29
    :cond_0
    sget-object v0, Lcom/jxphone/mosecurity/c/k;->a:Lcom/jxphone/mosecurity/c/k;

    iput-object v0, p0, Lcom/jxphone/mosecurity/c/j;->d:Lcom/jxphone/mosecurity/c/k;

    goto :goto_0
.end method

.method public static a(Landroid/database/Cursor;)Lcom/jxphone/mosecurity/c/j;
    .locals 1
    .parameter

    .prologue
    .line 143
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/jxphone/mosecurity/c/j;->b(Landroid/database/Cursor;)Lcom/jxphone/mosecurity/c/j;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/database/Cursor;)Lcom/jxphone/mosecurity/c/j;
    .locals 3
    .parameter

    .prologue
    .line 147
    new-instance v0, Lcom/jxphone/mosecurity/c/j;

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jxphone/mosecurity/c/j;-><init>(Ljava/lang/String;)V

    .line 148
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/jxphone/mosecurity/c/j;->b:I

    .line 149
    const/4 v1, 0x2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/jxphone/mosecurity/c/j;->e:J

    .line 150
    const/4 v1, 0x3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/jxphone/mosecurity/c/j;->f:I

    .line 151
    invoke-static {}, Lcom/jxphone/mosecurity/c/c;->values()[Lcom/jxphone/mosecurity/c/c;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/jxphone/mosecurity/c/j;->g:Lcom/jxphone/mosecurity/c/c;

    .line 152
    const/4 v1, 0x5

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/jxphone/mosecurity/c/j;->h:J

    .line 153
    const/4 v1, 0x6

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/jxphone/mosecurity/c/j;->i:J

    .line 154
    return-object v0
.end method

.method private static c(Landroid/database/Cursor;)[Lcom/jxphone/mosecurity/c/j;
    .locals 3
    .parameter

    .prologue
    .line 134
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v0, v0, [Lcom/jxphone/mosecurity/c/j;

    .line 135
    const/4 v1, -0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 136
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    invoke-static {p0}, Lcom/jxphone/mosecurity/c/j;->b(Landroid/database/Cursor;)Lcom/jxphone/mosecurity/c/j;

    move-result-object v2

    aput-object v2, v0, v1

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/jxphone/mosecurity/c/j;->b:I

    return v0
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/jxphone/mosecurity/c/j;->d:Lcom/jxphone/mosecurity/c/k;

    invoke-virtual {v0, p1}, Lcom/jxphone/mosecurity/c/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput p1, p0, Lcom/jxphone/mosecurity/c/j;->b:I

    .line 39
    return-void
.end method

.method public final a(J)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-wide p1, p0, Lcom/jxphone/mosecurity/c/j;->e:J

    .line 55
    return-void
.end method

.method public final a(Lcom/jxphone/mosecurity/c/c;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/jxphone/mosecurity/c/j;->g:Lcom/jxphone/mosecurity/c/c;

    .line 83
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/jxphone/mosecurity/c/j;->c:I

    return v0
.end method

.method public final b(I)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput p1, p0, Lcom/jxphone/mosecurity/c/j;->c:I

    .line 47
    return-void
.end method

.method public final b(J)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-wide p1, p0, Lcom/jxphone/mosecurity/c/j;->h:J

    .line 91
    return-void
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/jxphone/mosecurity/c/j;->e:J

    return-wide v0
.end method

.method public final c(I)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput p1, p0, Lcom/jxphone/mosecurity/c/j;->f:I

    .line 75
    return-void
.end method

.method public final c(J)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-wide p1, p0, Lcom/jxphone/mosecurity/c/j;->i:J

    .line 99
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/jxphone/mosecurity/c/j;->d:Lcom/jxphone/mosecurity/c/k;

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/k;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lcom/jxphone/mosecurity/c/k;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/jxphone/mosecurity/c/j;->d:Lcom/jxphone/mosecurity/c/k;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter

    .prologue
    .line 111
    instance-of v1, p1, Lcom/jxphone/mosecurity/c/j;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/jxphone/mosecurity/c/j;

    move-object v1, v0

    iget-object v1, v1, Lcom/jxphone/mosecurity/c/j;->d:Lcom/jxphone/mosecurity/c/k;

    invoke-virtual {v1}, Lcom/jxphone/mosecurity/c/k;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jxphone/mosecurity/c/j;->d:Lcom/jxphone/mosecurity/c/k;

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/jxphone/mosecurity/c/j;

    move-object v1, v0

    iget-object v1, v1, Lcom/jxphone/mosecurity/c/j;->d:Lcom/jxphone/mosecurity/c/k;

    invoke-virtual {v1}, Lcom/jxphone/mosecurity/c/k;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jxphone/mosecurity/c/j;->d:Lcom/jxphone/mosecurity/c/k;

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/k;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/jxphone/mosecurity/c/j;

    move-object v1, v0

    iget-wide v1, v1, Lcom/jxphone/mosecurity/c/j;->e:J

    iget-wide v3, p0, Lcom/jxphone/mosecurity/c/j;->e:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/jxphone/mosecurity/c/j;

    move-object v1, v0

    iget v1, v1, Lcom/jxphone/mosecurity/c/j;->f:I

    iget v2, p0, Lcom/jxphone/mosecurity/c/j;->f:I

    if-ne v1, v2, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/jxphone/mosecurity/c/j;

    move-object v1, v0

    iget-object v1, v1, Lcom/jxphone/mosecurity/c/j;->g:Lcom/jxphone/mosecurity/c/c;

    iget-object v2, p0, Lcom/jxphone/mosecurity/c/j;->g:Lcom/jxphone/mosecurity/c/c;

    invoke-virtual {v1, v2}, Lcom/jxphone/mosecurity/c/c;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/jxphone/mosecurity/c/j;

    move-object v1, v0

    iget-wide v1, v1, Lcom/jxphone/mosecurity/c/j;->h:J

    iget-wide v3, p0, Lcom/jxphone/mosecurity/c/j;->h:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    check-cast p1, Lcom/jxphone/mosecurity/c/j;

    iget-wide v1, p1, Lcom/jxphone/mosecurity/c/j;->i:J

    iget-wide v3, p0, Lcom/jxphone/mosecurity/c/j;->i:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/jxphone/mosecurity/c/j;->f:I

    return v0
.end method

.method public final g()Lcom/jxphone/mosecurity/c/c;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/jxphone/mosecurity/c/j;->g:Lcom/jxphone/mosecurity/c/c;

    return-object v0
.end method

.method public final h()J
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/jxphone/mosecurity/c/j;->h:J

    return-wide v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/jxphone/mosecurity/c/j;->d:Lcom/jxphone/mosecurity/c/k;

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/k;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0xd9

    .line 125
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/jxphone/mosecurity/c/j;->e:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    .line 126
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jxphone/mosecurity/c/j;->f:I

    add-int/2addr v0, v1

    .line 127
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/jxphone/mosecurity/c/j;->g:Lcom/jxphone/mosecurity/c/c;

    invoke-virtual {v1}, Lcom/jxphone/mosecurity/c/c;->ordinal()I

    move-result v1

    add-int/2addr v0, v1

    .line 128
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/jxphone/mosecurity/c/j;->h:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    .line 129
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/jxphone/mosecurity/c/j;->i:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    .line 130
    return v0
.end method

.method public final i()J
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/jxphone/mosecurity/c/j;->i:J

    return-wide v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/jxphone/mosecurity/c/j;->d:Lcom/jxphone/mosecurity/c/k;

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/k;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
