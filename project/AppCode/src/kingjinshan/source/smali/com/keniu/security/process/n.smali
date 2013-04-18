.class final Lcom/keniu/security/process/n;
.super Ljava/lang/Object;
.source "ProcessManagerActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/keniu/security/process/ProcessManagerActivity;


# direct methods
.method synthetic constructor <init>(Lcom/keniu/security/process/ProcessManagerActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 985
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/process/n;-><init>(Lcom/keniu/security/process/ProcessManagerActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/process/ProcessManagerActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 985
    iput-object p1, p0, Lcom/keniu/security/process/n;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/keniu/security/d/e;Lcom/keniu/security/d/e;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 988
    iget v0, p1, Lcom/keniu/security/d/e;->c:I

    .line 989
    iget v1, p2, Lcom/keniu/security/d/e;->c:I

    .line 990
    if-ne v0, v1, :cond_1

    .line 991
    iget-object v2, p0, Lcom/keniu/security/process/n;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v2}, Lcom/keniu/security/process/ProcessManagerActivity;->v(Lcom/keniu/security/process/ProcessManagerActivity;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 992
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    invoke-virtual {p1}, Lcom/keniu/security/d/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/keniu/security/d/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 998
    :goto_0
    return v0

    .line 994
    :cond_0
    iget-object v2, p0, Lcom/keniu/security/process/n;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v2}, Lcom/keniu/security/process/ProcessManagerActivity;->v(Lcom/keniu/security/process/ProcessManagerActivity;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 995
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    invoke-virtual {p2}, Lcom/keniu/security/d/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/keniu/security/d/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 998
    :cond_1
    sub-int/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 985
    check-cast p1, Lcom/keniu/security/d/e;

    check-cast p2, Lcom/keniu/security/d/e;

    iget v0, p1, Lcom/keniu/security/d/e;->c:I

    iget v1, p2, Lcom/keniu/security/d/e;->c:I

    if-ne v0, v1, :cond_1

    iget-object v2, p0, Lcom/keniu/security/process/n;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v2}, Lcom/keniu/security/process/ProcessManagerActivity;->v(Lcom/keniu/security/process/ProcessManagerActivity;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    invoke-virtual {p1}, Lcom/keniu/security/d/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/keniu/security/d/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/keniu/security/process/n;->a:Lcom/keniu/security/process/ProcessManagerActivity;

    invoke-static {v2}, Lcom/keniu/security/process/ProcessManagerActivity;->v(Lcom/keniu/security/process/ProcessManagerActivity;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    invoke-virtual {p2}, Lcom/keniu/security/d/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/keniu/security/d/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    sub-int/2addr v0, v1

    goto :goto_0
.end method
