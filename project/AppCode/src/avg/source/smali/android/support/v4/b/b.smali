.class public final Landroid/support/v4/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field final a:Landroid/support/v4/b/c;


# direct methods
.method public constructor <init>(Landroid/support/v4/b/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/b/b;->a:Landroid/support/v4/b/c;

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/b;->a:Landroid/support/v4/b/c;

    invoke-interface {v0, p1}, Landroid/support/v4/b/c;->a(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/b;->a:Landroid/support/v4/b/c;

    invoke-interface {v0, p1}, Landroid/support/v4/b/c;->a(I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
