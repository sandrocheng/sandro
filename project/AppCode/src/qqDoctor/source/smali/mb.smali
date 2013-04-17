.class public final Lmb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmb$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Z

.field public e:I

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmb$a;",
            ">;"
        }
    .end annotation
.end field

.field public g:Landroid/graphics/drawable/Drawable;

.field public h:LQQPIM/FeatureKey;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lmb;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lmb;->b:Ljava/lang/String;

    iput v1, p0, Lmb;->c:I

    iput-boolean v1, p0, Lmb;->d:Z

    iput v1, p0, Lmb;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lmb;->h:LQQPIM/FeatureKey;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lmb;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lmb;->b:Ljava/lang/String;

    iput v1, p0, Lmb;->c:I

    iput-boolean v1, p0, Lmb;->d:Z

    iput v1, p0, Lmb;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lmb;->h:LQQPIM/FeatureKey;

    iput-object p1, p0, Lmb;->a:Ljava/lang/String;

    return-void
.end method
