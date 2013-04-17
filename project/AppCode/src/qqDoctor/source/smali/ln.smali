.class public Lln;
.super Llr;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Llr;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lln;->a:I

    return v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lln;->a:I

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Llr;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
