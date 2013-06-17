.class public Lcom/avg/tuneup/g;
.super Lcom/avg/ui/general/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/avg/ui/general/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method protected a(ZIILjava/lang/String;Z)V
    .locals 7

    sget v6, Lcom/avg/a/e;->header:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/avg/tuneup/g;->a(ZIILjava/lang/String;ZI)V

    return-void
.end method

.method protected j()Ljava/lang/Class;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
