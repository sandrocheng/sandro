.class public final Lcom/jxphone/mosecurity/c/a;
.super Ljava/lang/Object;
.source "AppModel.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# static fields
.field private static final a:J = -0x5c815efae0353d3cL


# instance fields
.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:J

.field private g:J

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/jxphone/mosecurity/c/a;->f:J

    return-void
.end method

.method private a(Lcom/jxphone/mosecurity/c/a;)I
    .locals 3
    .parameter

    .prologue
    .line 86
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iget-object v1, p0, Lcom/jxphone/mosecurity/c/a;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/jxphone/mosecurity/c/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private b(I)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput p1, p0, Lcom/jxphone/mosecurity/c/a;->h:I

    .line 52
    return-void
.end method

.method private b(J)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/jxphone/mosecurity/c/a;->g:J

    .line 46
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/jxphone/mosecurity/c/a;->j:Ljava/lang/String;

    .line 30
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/jxphone/mosecurity/c/a;->i:Ljava/lang/String;

    .line 40
    return-void
.end method

.method private f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/jxphone/mosecurity/c/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method private g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/jxphone/mosecurity/c/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method private h()J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/jxphone/mosecurity/c/a;->g:J

    return-wide v0
.end method

.method private i()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/jxphone/mosecurity/c/a;->h:I

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/jxphone/mosecurity/c/a;->b:I

    return v0
.end method

.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput p1, p0, Lcom/jxphone/mosecurity/c/a;->b:I

    .line 58
    return-void
.end method

.method public final a(J)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/jxphone/mosecurity/c/a;->f:J

    .line 82
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/jxphone/mosecurity/c/a;->c:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/jxphone/mosecurity/c/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/jxphone/mosecurity/c/a;->d:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/jxphone/mosecurity/c/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/jxphone/mosecurity/c/a;->e:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 3
    .parameter

    .prologue
    .line 14
    check-cast p1, Lcom/jxphone/mosecurity/c/a;

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iget-object v1, p0, Lcom/jxphone/mosecurity/c/a;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/jxphone/mosecurity/c/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/jxphone/mosecurity/c/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/jxphone/mosecurity/c/a;->f:J

    return-wide v0
.end method
