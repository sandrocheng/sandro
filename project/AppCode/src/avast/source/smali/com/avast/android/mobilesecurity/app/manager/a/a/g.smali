.class public Lcom/avast/android/mobilesecurity/app/manager/a/a/g;
.super Ljava/lang/Object;
.source "LabelComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private a:Ljava/text/Collator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/a/g;->a:Ljava/text/Collator;

    .line 24
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 42
    const-string v0, "*** END ***"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 43
    const-string v1, "*** END ***"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 44
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/a/g;->a:Ljava/text/Collator;

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 51
    :goto_0
    return v0

    .line 46
    :cond_2
    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    .line 47
    const/4 v0, 0x1

    goto :goto_0

    .line 48
    :cond_3
    if-nez v0, :cond_4

    if-eqz v1, :cond_4

    .line 49
    const/4 v0, -0x1

    goto :goto_0

    .line 51
    :cond_4
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/a/g;->a:Ljava/text/Collator;

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/avast/android/mobilesecurity/app/manager/a/a/d;Lcom/avast/android/mobilesecurity/app/manager/a/a/d;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 28
    iget-object v0, p1, Lcom/avast/android/mobilesecurity/app/manager/a/a/d;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    move v0, v1

    .line 29
    :goto_0
    iget-object v3, p2, Lcom/avast/android/mobilesecurity/app/manager/a/a/d;->l:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 30
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 31
    iget-object v0, p1, Lcom/avast/android/mobilesecurity/app/manager/a/a/d;->l:Ljava/lang/String;

    iget-object v1, p2, Lcom/avast/android/mobilesecurity/app/manager/a/a/d;->l:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/avast/android/mobilesecurity/app/manager/a/a/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 37
    :goto_2
    return v0

    :cond_0
    move v0, v2

    .line 28
    goto :goto_0

    :cond_1
    move v1, v2

    .line 29
    goto :goto_1

    .line 32
    :cond_2
    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    .line 33
    iget-object v0, p1, Lcom/avast/android/mobilesecurity/app/manager/a/a/d;->l:Ljava/lang/String;

    iget-object v1, p2, Lcom/avast/android/mobilesecurity/app/manager/a/a/d;->i:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/avast/android/mobilesecurity/app/manager/a/a/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    .line 34
    :cond_3
    if-nez v0, :cond_4

    if-eqz v1, :cond_4

    .line 35
    iget-object v0, p1, Lcom/avast/android/mobilesecurity/app/manager/a/a/d;->i:Ljava/lang/String;

    iget-object v1, p2, Lcom/avast/android/mobilesecurity/app/manager/a/a/d;->l:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/avast/android/mobilesecurity/app/manager/a/a/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    .line 37
    :cond_4
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/manager/a/a/g;->a:Ljava/text/Collator;

    iget-object v1, p1, Lcom/avast/android/mobilesecurity/app/manager/a/a/d;->i:Ljava/lang/String;

    iget-object v2, p2, Lcom/avast/android/mobilesecurity/app/manager/a/a/d;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_2
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 14
    check-cast p1, Lcom/avast/android/mobilesecurity/app/manager/a/a/d;

    check-cast p2, Lcom/avast/android/mobilesecurity/app/manager/a/a/d;

    invoke-virtual {p0, p1, p2}, Lcom/avast/android/mobilesecurity/app/manager/a/a/g;->a(Lcom/avast/android/mobilesecurity/app/manager/a/a/d;Lcom/avast/android/mobilesecurity/app/manager/a/a/d;)I

    move-result v0

    return v0
.end method
