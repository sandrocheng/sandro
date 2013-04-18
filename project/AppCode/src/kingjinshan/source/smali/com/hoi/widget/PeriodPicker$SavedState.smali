.class Lcom/hoi/widget/PeriodPicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "PeriodPicker.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 171
    new-instance v0, Lcom/hoi/widget/ae;

    invoke-direct {v0}, Lcom/hoi/widget/ae;-><init>()V

    sput-object v0, Lcom/hoi/widget/PeriodPicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/hoi/widget/PeriodPicker$SavedState;-><init>(Landroid/os/Parcel;B)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 150
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hoi/widget/PeriodPicker$SavedState;->a:I

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hoi/widget/PeriodPicker$SavedState;->b:I

    .line 153
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/hoi/widget/PeriodPicker$SavedState;-><init>(Landroid/os/Parcelable;IIB)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;IIB)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 141
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 142
    iput p2, p0, Lcom/hoi/widget/PeriodPicker$SavedState;->a:I

    .line 143
    iput p3, p0, Lcom/hoi/widget/PeriodPicker$SavedState;->b:I

    .line 144
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/hoi/widget/PeriodPicker$SavedState;->a:I

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/hoi/widget/PeriodPicker$SavedState;->b:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 165
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 166
    iget v0, p0, Lcom/hoi/widget/PeriodPicker$SavedState;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget v0, p0, Lcom/hoi/widget/PeriodPicker$SavedState;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    return-void
.end method
