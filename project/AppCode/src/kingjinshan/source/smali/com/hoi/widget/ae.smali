.class final Lcom/hoi/widget/ae;
.super Ljava/lang/Object;
.source "PeriodPicker.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lcom/hoi/widget/PeriodPicker$SavedState;
    .locals 1
    .parameter

    .prologue
    .line 175
    new-instance v0, Lcom/hoi/widget/PeriodPicker$SavedState;

    invoke-direct {v0, p0}, Lcom/hoi/widget/PeriodPicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static a(I)[Lcom/hoi/widget/PeriodPicker$SavedState;
    .locals 1
    .parameter

    .prologue
    .line 180
    new-array v0, p0, [Lcom/hoi/widget/PeriodPicker$SavedState;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 171
    new-instance v0, Lcom/hoi/widget/PeriodPicker$SavedState;

    invoke-direct {v0, p1}, Lcom/hoi/widget/PeriodPicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 171
    new-array v0, p1, [Lcom/hoi/widget/PeriodPicker$SavedState;

    return-object v0
.end method
