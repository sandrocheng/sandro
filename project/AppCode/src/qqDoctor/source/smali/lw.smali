.class public final Llw;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    new-instance v0, Llw;

    invoke-direct {v0}, Llw;-><init>()V

    iget v1, p0, Llw;->c:I

    iput v1, v0, Llw;->c:I

    iget-object v1, p0, Llw;->b:Ljava/lang/String;

    iput-object v1, v0, Llw;->b:Ljava/lang/String;

    iget-object v1, p0, Llw;->d:Ljava/lang/Object;

    iput-object v1, v0, Llw;->d:Ljava/lang/Object;

    return-object v0
.end method
