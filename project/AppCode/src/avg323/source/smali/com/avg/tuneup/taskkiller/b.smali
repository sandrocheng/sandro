.class public Lcom/avg/tuneup/taskkiller/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public a:Ljava/lang/String;

.field public b:F

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/avg/tuneup/taskkiller/b;)I
    .locals 2

    sget v0, Lcom/avg/tuneup/taskkiller/d;->a:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lcom/avg/tuneup/taskkiller/b;->b:F

    iget v1, p1, Lcom/avg/tuneup/taskkiller/b;->b:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/b;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/avg/tuneup/taskkiller/b;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/avg/tuneup/taskkiller/b;->b:F

    iget v1, p1, Lcom/avg/tuneup/taskkiller/b;->b:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/avg/tuneup/taskkiller/b;

    invoke-virtual {p0, p1}, Lcom/avg/tuneup/taskkiller/b;->a(Lcom/avg/tuneup/taskkiller/b;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/avg/tuneup/taskkiller/b;

    :try_start_0
    iget-object v1, p0, Lcom/avg/tuneup/taskkiller/b;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/avg/tuneup/taskkiller/b;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/avg/tuneup/taskkiller/b;->d:Ljava/lang/String;

    iget-object v0, v0, Lcom/avg/tuneup/taskkiller/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
