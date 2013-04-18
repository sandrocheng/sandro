.class public Lcom/jxphone/mosecurity/c/b;
.super Ljava/lang/Object;
.source "Contact.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J = -0x55dbfe49eeb0561bL

.field public static final b:Lcom/jxphone/mosecurity/c/b;


# instance fields
.field private c:I

.field private d:Ljava/lang/String;

.field private e:Lcom/jxphone/mosecurity/c/k;

.field private f:Lcom/jxphone/mosecurity/c/c;

.field private g:J

.field private h:J

.field private i:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/jxphone/mosecurity/c/b;

    invoke-direct {v0}, Lcom/jxphone/mosecurity/c/b;-><init>()V

    sput-object v0, Lcom/jxphone/mosecurity/c/b;->b:Lcom/jxphone/mosecurity/c/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/jxphone/mosecurity/c/b;->c:I

    .line 20
    sget-object v0, Lcom/jxphone/mosecurity/c/k;->a:Lcom/jxphone/mosecurity/c/k;

    iput-object v0, p0, Lcom/jxphone/mosecurity/c/b;->e:Lcom/jxphone/mosecurity/c/k;

    .line 21
    sget-object v0, Lcom/jxphone/mosecurity/c/c;->a:Lcom/jxphone/mosecurity/c/c;

    iput-object v0, p0, Lcom/jxphone/mosecurity/c/b;->f:Lcom/jxphone/mosecurity/c/c;

    return-void
.end method

.method public static final varargs a([Lcom/jxphone/mosecurity/c/b;)V
    .locals 3
    .parameter

    .prologue
    .line 122
    if-nez p0, :cond_0

    .line 130
    :goto_0
    return-void

    .line 123
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    .line 124
    if-eqz v2, :cond_1

    .line 125
    iget-object v2, v2, Lcom/jxphone/mosecurity/c/b;->i:Landroid/graphics/Bitmap;

    .line 126
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 123
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 129
    :cond_2
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/jxphone/mosecurity/c/b;->c:I

    return v0
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/jxphone/mosecurity/c/b;->e:Lcom/jxphone/mosecurity/c/k;

    invoke-virtual {v0, p1}, Lcom/jxphone/mosecurity/c/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput p1, p0, Lcom/jxphone/mosecurity/c/b;->c:I

    .line 31
    return-void
.end method

.method public final a(J)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/jxphone/mosecurity/c/b;->g:J

    .line 60
    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/jxphone/mosecurity/c/b;->i:Landroid/graphics/Bitmap;

    .line 68
    return-void
.end method

.method public final a(Lcom/jxphone/mosecurity/c/c;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/jxphone/mosecurity/c/b;->f:Lcom/jxphone/mosecurity/c/c;

    .line 54
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/jxphone/mosecurity/c/b;->d:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/jxphone/mosecurity/c/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final b(J)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-wide p1, p0, Lcom/jxphone/mosecurity/c/b;->h:J

    .line 80
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 42
    new-instance v0, Lcom/jxphone/mosecurity/c/k;

    invoke-direct {v0, p1}, Lcom/jxphone/mosecurity/c/k;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jxphone/mosecurity/c/b;->e:Lcom/jxphone/mosecurity/c/k;

    .line 43
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/jxphone/mosecurity/c/b;->e:Lcom/jxphone/mosecurity/c/k;

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/k;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/c/b;->i()Lcom/jxphone/mosecurity/c/b;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/jxphone/mosecurity/c/b;->e:Lcom/jxphone/mosecurity/c/k;

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/k;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lcom/jxphone/mosecurity/c/c;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/jxphone/mosecurity/c/b;->f:Lcom/jxphone/mosecurity/c/c;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 84
    instance-of v0, p1, Lcom/jxphone/mosecurity/c/b;

    if-nez v0, :cond_0

    move v0, v4

    .line 86
    :goto_0
    return v0

    .line 85
    :cond_0
    check-cast p1, Lcom/jxphone/mosecurity/c/b;

    .line 86
    iget-wide v0, p1, Lcom/jxphone/mosecurity/c/b;->g:J

    iget-wide v2, p0, Lcom/jxphone/mosecurity/c/b;->g:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p1, Lcom/jxphone/mosecurity/c/b;->h:J

    iget-wide v2, p0, Lcom/jxphone/mosecurity/c/b;->h:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/jxphone/mosecurity/c/b;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/jxphone/mosecurity/c/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/jxphone/mosecurity/c/b;->e:Lcom/jxphone/mosecurity/c/k;

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/k;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jxphone/mosecurity/c/b;->e:Lcom/jxphone/mosecurity/c/k;

    invoke-virtual {v1}, Lcom/jxphone/mosecurity/c/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/jxphone/mosecurity/c/b;->f:Lcom/jxphone/mosecurity/c/c;

    iget-object v1, p0, Lcom/jxphone/mosecurity/c/b;->f:Lcom/jxphone/mosecurity/c/c;

    invoke-virtual {v0, v1}, Lcom/jxphone/mosecurity/c/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_0
.end method

.method public final f()J
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/jxphone/mosecurity/c/b;->g:J

    return-wide v0
.end method

.method public final g()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/jxphone/mosecurity/c/b;->i:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final h()J
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/jxphone/mosecurity/c/b;->h:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/jxphone/mosecurity/c/b;->g:J

    long-to-int v0, v0

    add-int/lit16 v0, v0, 0xd9

    .line 97
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/jxphone/mosecurity/c/b;->h:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    .line 98
    iget-object v1, p0, Lcom/jxphone/mosecurity/c/b;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/jxphone/mosecurity/c/b;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 99
    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/jxphone/mosecurity/c/b;->e:Lcom/jxphone/mosecurity/c/k;

    invoke-virtual {v1}, Lcom/jxphone/mosecurity/c/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 100
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/jxphone/mosecurity/c/b;->f:Lcom/jxphone/mosecurity/c/c;

    invoke-virtual {v1}, Lcom/jxphone/mosecurity/c/c;->ordinal()I

    move-result v1

    add-int/2addr v0, v1

    .line 101
    return v0
.end method

.method public final i()Lcom/jxphone/mosecurity/c/b;
    .locals 3

    .prologue
    .line 109
    new-instance v0, Lcom/jxphone/mosecurity/c/b;

    invoke-direct {v0}, Lcom/jxphone/mosecurity/c/b;-><init>()V

    .line 110
    iget v1, p0, Lcom/jxphone/mosecurity/c/b;->c:I

    iput v1, v0, Lcom/jxphone/mosecurity/c/b;->c:I

    .line 111
    iget-object v1, p0, Lcom/jxphone/mosecurity/c/b;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/jxphone/mosecurity/c/b;->d:Ljava/lang/String;

    .line 112
    iget-object v1, p0, Lcom/jxphone/mosecurity/c/b;->e:Lcom/jxphone/mosecurity/c/k;

    iput-object v1, v0, Lcom/jxphone/mosecurity/c/b;->e:Lcom/jxphone/mosecurity/c/k;

    .line 113
    iget-object v1, p0, Lcom/jxphone/mosecurity/c/b;->i:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/jxphone/mosecurity/c/b;->i:Landroid/graphics/Bitmap;

    .line 114
    iget-object v1, p0, Lcom/jxphone/mosecurity/c/b;->f:Lcom/jxphone/mosecurity/c/c;

    iput-object v1, v0, Lcom/jxphone/mosecurity/c/b;->f:Lcom/jxphone/mosecurity/c/c;

    .line 115
    iget-wide v1, p0, Lcom/jxphone/mosecurity/c/b;->h:J

    iput-wide v1, v0, Lcom/jxphone/mosecurity/c/b;->h:J

    .line 116
    iget-wide v1, p0, Lcom/jxphone/mosecurity/c/b;->g:J

    iput-wide v1, v0, Lcom/jxphone/mosecurity/c/b;->g:J

    .line 118
    return-object v0
.end method
