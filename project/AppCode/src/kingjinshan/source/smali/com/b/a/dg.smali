.class final Lcom/b/a/dg;
.super Ljava/lang/Object;
.source "ExtensionRegistryLite.java"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:I


# direct methods
.method constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p1, p0, Lcom/b/a/dg;->a:Ljava/lang/Object;

    .line 153
    iput p2, p0, Lcom/b/a/dg;->b:I

    .line 154
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 162
    instance-of v0, p1, Lcom/b/a/dg;

    if-nez v0, :cond_0

    move v0, v2

    .line 166
    :goto_0
    return v0

    .line 165
    :cond_0
    check-cast p1, Lcom/b/a/dg;

    .line 166
    iget-object v0, p0, Lcom/b/a/dg;->a:Ljava/lang/Object;

    iget-object v1, p1, Lcom/b/a/dg;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/b/a/dg;->b:I

    iget v1, p1, Lcom/b/a/dg;->b:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/b/a/dg;->a:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const v1, 0xffff

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/b/a/dg;->b:I

    add-int/2addr v0, v1

    return v0
.end method
