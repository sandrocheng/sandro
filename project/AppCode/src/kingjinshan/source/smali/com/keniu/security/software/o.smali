.class public final Lcom/keniu/security/software/o;
.super Ljava/lang/Object;
.source "AppStat.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:J

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/keniu/security/software/o;)I
    .locals 3
    .parameter

    .prologue
    .line 75
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/software/o;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/keniu/security/software/o;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/keniu/security/software/o;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput p1, p0, Lcom/keniu/security/software/o;->d:I

    .line 47
    return-void
.end method

.method public final a(J)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-wide p1, p0, Lcom/keniu/security/software/o;->c:J

    .line 39
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/keniu/security/software/o;->a:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/keniu/security/software/o;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(J)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-wide p1, p0, Lcom/keniu/security/software/o;->g:J

    .line 71
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/keniu/security/software/o;->b:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/keniu/security/software/o;->c:J

    return-wide v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/keniu/security/software/o;->e:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 7
    check-cast p1, Lcom/keniu/security/software/o;

    invoke-virtual {p0, p1}, Lcom/keniu/security/software/o;->a(Lcom/keniu/security/software/o;)I

    move-result v0

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/keniu/security/software/o;->d:I

    return v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/keniu/security/software/o;->f:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/keniu/security/software/o;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/keniu/security/software/o;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final g()J
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/keniu/security/software/o;->g:J

    return-wide v0
.end method
