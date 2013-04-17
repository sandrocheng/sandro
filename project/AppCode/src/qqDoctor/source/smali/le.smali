.class public final Lle;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lle;->a:Ljava/lang/String;

    iput-object p2, p0, Lle;->b:Ljava/lang/String;

    iput-object p3, p0, Lle;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lle;->d:Z

    iput-boolean p4, p0, Lle;->e:Z

    return-void
.end method
