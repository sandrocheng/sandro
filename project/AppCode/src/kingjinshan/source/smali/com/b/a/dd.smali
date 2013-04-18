.class final Lcom/b/a/dd;
.super Ljava/lang/Object;
.source "ExtensionRegistry.java"


# instance fields
.field private final a:Lcom/b/a/cj;

.field private final b:I


# direct methods
.method constructor <init>(Lcom/b/a/cj;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput-object p1, p0, Lcom/b/a/dd;->a:Lcom/b/a/cj;

    .line 250
    iput p2, p0, Lcom/b/a/dd;->b:I

    .line 251
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 259
    instance-of v0, p1, Lcom/b/a/dd;

    if-nez v0, :cond_0

    move v0, v2

    .line 263
    :goto_0
    return v0

    .line 262
    :cond_0
    check-cast p1, Lcom/b/a/dd;

    .line 263
    iget-object v0, p0, Lcom/b/a/dd;->a:Lcom/b/a/cj;

    iget-object v1, p1, Lcom/b/a/dd;->a:Lcom/b/a/cj;

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/b/a/dd;->b:I

    iget v1, p1, Lcom/b/a/dd;->b:I

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
    .line 255
    iget-object v0, p0, Lcom/b/a/dd;->a:Lcom/b/a/cj;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xffff

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/b/a/dd;->b:I

    add-int/2addr v0, v1

    return v0
.end method
