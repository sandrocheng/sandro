.class public final Lmn;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:Landroid/graphics/drawable/Drawable;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:J

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;ILjava/lang/String;Ljava/lang/String;JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lmn;->a:I

    iput-object p1, p0, Lmn;->b:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lmn;->c:Ljava/lang/String;

    iput-object p4, p0, Lmn;->d:Ljava/lang/String;

    iput-wide p5, p0, Lmn;->e:J

    iput-boolean p7, p0, Lmn;->f:Z

    return-void
.end method
