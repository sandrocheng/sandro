.class final Lcom/viewpagerindicator/i;
.super Ljava/lang/Object;
.source "TitlePageIndicator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 788
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/viewpagerindicator/TitlePageIndicator$SavedState;
    .locals 2
    .parameter

    .prologue
    .line 791
    new-instance v0, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/viewpagerindicator/TitlePageIndicator$SavedState;-><init>(Landroid/os/Parcel;Lcom/viewpagerindicator/f;)V

    return-object v0
.end method

.method public a(I)[Lcom/viewpagerindicator/TitlePageIndicator$SavedState;
    .locals 1
    .parameter

    .prologue
    .line 796
    new-array v0, p1, [Lcom/viewpagerindicator/TitlePageIndicator$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 788
    invoke-virtual {p0, p1}, Lcom/viewpagerindicator/i;->a(Landroid/os/Parcel;)Lcom/viewpagerindicator/TitlePageIndicator$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 788
    invoke-virtual {p0, p1}, Lcom/viewpagerindicator/i;->a(I)[Lcom/viewpagerindicator/TitlePageIndicator$SavedState;

    move-result-object v0

    return-object v0
.end method
